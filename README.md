# Database Optimizations


**Initial rake db:seed time:** 34:53.59 minutes

**Time for index page to load:** 2:37.84 minutes

**Time to add indices via migrations:** 6.6725 seconds

**Percent change of runtime:** runtime is 17% slower

**Second rake db:seed time:** 40:40.68 minutes (2424.27543 seconds)

The runtime increased by 17%. Adding indices seems to slow down overall runtime.
It is faster to run rake db:seed without indices and then running a
migration to add indices.

The database is 573 MB.  The development log is 1.47 GB.

I estimated each section would take 2 hours to complete. The first part took 3 hours,
and the second slightly less than 2.


You can reduce the size of the data by implementing Data Compression. There are two types of Data Compression supported in SQL Server – Row and Page. Row compression addresses the storage inefficiency introduced by fixed-length data types. By default, in non-compressed row, size of the fixed-length data is based on the data type size. For example, INT column would always use 4 bytes, regardless of the value – even when it is NULL. Row compression addresses that and removes such an overhead. For example, INT value of 255 would use just 1 byte rather than 4 bytes.


I think this is probably smaller than the size of databases I will be working with
in my career.
