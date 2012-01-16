if defined? ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
  require 'pgsql/adapter'
  require 'pgsql/enum_adapter'
  require 'pgsql/schema_statements'
end
