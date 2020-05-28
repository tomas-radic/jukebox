module Admin
  class CountriesController < CommonController
    before_action :set_model_class
    before_action :set_records_path

    def set_model_class
      self.class.superclass.class_eval do
        def model_class
          Country
        end
      end
    end

    def set_records_path
      self.class.superclass.class_eval do
        def records_path
          admin_countries_path
        end
      end
    end
  end
end
