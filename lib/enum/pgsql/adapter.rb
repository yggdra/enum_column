ActiveRecord::ConnectionAdapters::PostgreSQLAdapter.module_eval do
  alias __native_database_types_enum native_database_types

  def native_database_types #:nodoc
    types = __native_database_types_enum
    types[:enum] = { :name => "simulenum" }
    types
  end
end
