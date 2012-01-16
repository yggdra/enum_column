if defined? ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
  require 'enum/pgsql/adapter'
  require 'enum/pgsql/enum_adapter'
  require 'enum/pgsql/schema_statements'
end
