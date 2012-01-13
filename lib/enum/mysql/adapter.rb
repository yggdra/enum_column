[ 'ActiveRecord::ConnectionAdapters::MySQLJdbcConnection',
  'ActiveRecord::ConnectionAdapters::Mysql2Adapter',
  'ActiveRecord::ConnectionAdapters::MysqlAdapter' ].select { |mod| eval("defined?(#{mod})") }.each do |mod|
  mod.module_eval do
    alias __native_database_types_enum native_database_types

    def native_database_types #:nodoc
      types = __native_database_types_enum
      types[:enum] = { :name => "enum" }
      types
    end
  end
end
