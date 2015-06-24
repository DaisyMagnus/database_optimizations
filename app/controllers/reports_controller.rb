class ReportsController < ApplicationController
   def all_data
     @assembly = Assembly.find_by_name(params[:name])

     @hits = Hit.where( subject_id: Gene.where( sequence_id: Sequence.where(
         assembly_id: Assembly.where( name: params[:name] )))).order( :percent_similarity )
   end

   def send_email
    notifier = Notifier.email(params[:address]).deliver_now
    if notifier.deliver
      redirect_to reports_all_data_path, success: "Your email has been sent!"
    else
      redirect_to reports_all_data_path, failure: "Your email could not be sent at this time.  Please try again in a few moments."
    end
  end
end
