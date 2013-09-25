if defined?(::Rails::Railtie)
  class EnumColumnRailtie < Rails::Railtie
    initializer 'enum_column.initialize', :after => 'active_record.initialize_database' do |app|
      ActiveSupport.on_load :active_record do

        require 'enum/mysql'
        require 'enum/mysql2'
        require 'enum/pgsql'

        require 'enum/quoting'
        require 'enum/validations'

        require 'enum/schema_definitions'
      end

      ActiveSupport.on_load :action_view do
        require 'enum/active_record_helper'
      end
    end
  end
end
