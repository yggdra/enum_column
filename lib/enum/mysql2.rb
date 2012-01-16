if defined? ActiveRecord::ConnectionAdapters::Mysql2Adapter
  require 'enum/mysql2/adapter'
  require 'enum/mysql2/enum_adapter'
  require 'enum/mysql2/schema_statements'
  require 'enum/mysql2/schema_definitions'
end
