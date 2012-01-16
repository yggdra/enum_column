if defined? ActiveRecord::ConnectionAdapters::MysqlAdapter
  require 'mysql/adapter'
  require 'mysql/enum_adapter'
  require 'mysql/schema_statements'
  require 'mysql/schema_definitions'
end
