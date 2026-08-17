CREATE EXTENSION IF NOT EXISTS pg_stat_statements;

CREATE OR REPLACE FUNCTION plugin_test()
RETURNS text
AS '$libdir/plugin_ps', 'plugin_test'
LANGUAGE C STRICT;

CREATE OR REPLACE FUNCTION plugin_get_performance_data()
RETURNS text
AS '$libdir/plugin_ps', 'plugin_get_performance_data'
LANGUAGE C STRICT;

CREATE OR REPLACE FUNCTION plugin_analyze_performance(json_data text)
RETURNS text
AS '$libdir/plugin_ps', 'plugin_analyze_performance'
LANGUAGE C STRICT;