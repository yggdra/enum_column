if defined? ActiveRecord::ConnectionAdapters::MysqlAdapter
  require 'enum/mysql/adapter'
  require 'enum/mysql/enum_adapter'
  require 'enum/mysql/schema_statements'
  require 'enum/mysql/schema_definitions'
end
