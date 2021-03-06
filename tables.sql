-- ybio.config
-- this table is empty after install.
-- every column has a default value, so you have to specify only what you want to be different.
-- such as: insert into ybio.config (rows) values (1000000);

create table ybio.config (
  id 				    serial   primary key,
  rows 				    bigint   default 1000000,
  rows_per_message                  int      default 0,
  number_schemas		    int      default 1,
  drop_before_insert		    boolean  default true,
  create_rows_per_commit 	    bigint   default 1000,
  create_method                     text     default 'unnest',
  table_primary_key		    boolean  default true,
  table_primary_key_type	    text     default 'hash',
  table_tablets			    int      default 0,
  table_f1_range		    bigint   default 1000000,
  table_f2_width		    int      default 100,
  index_f1			    boolean  default false,
  index_f1_type			    text     default 'hash',
  index_f1_tablets		    int      default 0,
  run_rows_per_commit		    bigint   default 10000,
  run_update_pct		    int      default 0,
  run_delete_pct		    int      default 0,
  run_range                         int      default 1,
  run_time			    interval default '30 minutes'
);
-- this table is currently not used.
create table ybio.results (
  config_id		            serial,
  start_time  		            timestamp,
  end_time		            timestamp,
  inet_server_addr		    inet,
  pg_backend_pid		    integer,
  nr_total			    bigint,
  nr_insert			    bigint,
  nr_select			    bigint,
  nr_update			    bigint,
  nr_delete			    bigint,
  nr_notfound			    bigint,
  run_tag			    text
);
