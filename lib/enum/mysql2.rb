if defined? ActiveRecord::ConnectionAdapters::Mysql2Adapter
  require 'mysql2/adapter'
  require 'mysql2/enum_adapter'
  require 'mysql2/schema_statements'
  require 'mysql2/schema_definitions'
end
