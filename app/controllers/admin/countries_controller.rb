module Admin
  class CountriesController < AdminController
    def model_class
      Country
    end

    def records_path
      admin_countries_path
    end
  end
end
