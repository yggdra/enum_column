ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.module_eval do
  alias __type_to_sql_enum type_to_sql

  def type_to_sql(type, limit = nil, precision = nil, scale = nil) #:nodoc:
    if type == :enum
      native = native_database_types[type]

      (native || {})[:name] || 'enum'
    else
      __type_to_sql_enum(type, limit, precision, scale)
    end
  end
end
