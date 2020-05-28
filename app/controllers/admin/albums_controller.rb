module Admin
  class AlbumsController < CommonController
    before_action :set_model_class
    before_action :set_records_path

    def set_model_class
      self.class.superclass.class_eval do
        def model_class
          Album
        end
      end
    end

    def set_records_path
      self.class.superclass.class_eval do
        def records_path
          admin_albums_path
        end
      end
    end


    def index
      super
      @records_count = @records.count
    end
  end
end
