if defined?(::Rails::Railtie)
  class EnumColumnRailtie < Rails::Railtie
    initializer 'enum_column.initialize', :after => 'active_record.initialize_database' do |app|
      ActiveSupport.on_load :active_record do

        if defined? ActiveRecord::ConnectionAdapters::MySQLJdbcConnection ||
           defined? ActiveRecord::ConnectionAdapters::Mysql2Adapter ||
           defined? ActiveRecord::ConnectionAdapters::MysqlAdapter
          require 'enum/mysql/adapter'
          require 'enum/mysql/enum_adapter'
          require 'enum/mysql/schema_statements'
          require 'enum/mysql/schema_definitions'
        end

        if defined? ActiveRecord::ConnectionAdapters::PostgreSQLAdapter
          require 'enum/pgsql/adapter'
          require 'enum/pgsql/enum_adapter'
          require 'enum/pgsql/schema_statements'
        end

        require 'enum/quoting'
        require 'enum/validations'
      end

      ActiveSupport.on_load :action_view do
        require 'enum/active_record_helper'
      end
    end
  end
end
