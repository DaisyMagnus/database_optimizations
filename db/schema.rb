# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150623203154) do

  create_table "assemblies", force: :cascade do |t|
    t.string   "name"
    t.date     "run_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",   default: 0, null: false
    t.integer  "attempts",   default: 0, null: false
    t.text     "handler",                null: false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], name: "delayed_jobs_priority"

  create_table "genes", force: :cascade do |t|
    t.text     "dna"
    t.integer  "starting_position"
    t.boolean  "direction"
    t.integer  "sequence_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "genes", ["sequence_id"], name: "index_genes_on_sequence_id"

  create_table "hits", force: :cascade do |t|
    t.string   "match_gene_name"
    t.text     "match_gene_dna"
    t.float    "percent_similarity"
    t.integer  "subject_id"
    t.string   "subject_type"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "hits", ["subject_id", "subject_type"], name: "index_hits_on_subject_id_and_subject_type"

  create_table "sequences", force: :cascade do |t|
    t.text     "dna"
    t.text     "quality"
    t.integer  "assembly_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "sequences", ["assembly_id"], name: "index_sequences_on_assembly_id"

end
