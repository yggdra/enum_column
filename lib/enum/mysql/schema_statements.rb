[ 'ActiveRecord::ConnectionAdapters::MySQLJdbcConnection',
  'ActiveRecord::ConnectionAdapters::Mysql2Adapter',
  'ActiveRecord::ConnectionAdapters::MysqlAdapter' ].select { |mod| eval("defined?(#{mod})") }.each do |mod|
  mod.module_eval do
    alias __type_to_sql_enum type_to_sql

    # will generate enum('a', 'b', 'c') for :limit => [:a, :b, :c]
    def type_to_sql(type, limit = nil, precision = nil, scale = nil) #:nodoc:
      if type == :enum
        native = native_database_types[type]
        column_type_sql = (native || {})[:name] || 'enum'

        column_type_sql << "(#{limit.map { |v| quote(v) }.join(',')})"

        column_type_sql
      else
        __type_to_sql_enum(type, limit, precision, scale)
      end
    end
  end
end
