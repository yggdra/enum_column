
# This module provides all the column helper methods to deal with the
# values and adds the common type management code for the adapters.

ActiveRecord::ConnectionAdapters::MysqlColumn.module_eval do

private
  alias __simplified_type_enum simplified_type
  # The enum simple type.
  def simplified_type(field_type)
    if field_type =~ /enum/i
      :enum
    else
      __simplified_type_enum(field_type)
    end
  end

  alias __extract_limit_enum extract_limit
  def extract_limit(sql_type)
    if sql_type =~ /^enum/i
      sql_type.sub(/^enum\('([^)]+)'\)/i, '\1').split("','").map { |v| v.intern }
    else
      __extract_limit_enum(sql_type)
    end
  end


end
