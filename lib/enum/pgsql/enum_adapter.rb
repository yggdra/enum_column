
# This module provides all the column helper methods to deal with the
# values and adds the common type management code for the adapters.

ActiveRecord::ConnectionAdapters::PostgreSQLColumn.module_eval do
  alias __klass_enum klass
  # The class for enum is Symbol.
  def klass
    if type == :enum
      Symbol
    else
      __klass_enum
    end
  end

private
  alias __simplified_type_enum simplified_type
  # The enum simple type.
  def simplified_type(field_type)
    if field_type == 'simulenum'
      :enum
    else
      __simplified_type_enum(field_type)
    end
  end

end
