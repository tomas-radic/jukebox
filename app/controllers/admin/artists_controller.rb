module Admin
  class ArtistsController < CommonController
    before_action :set_model_class
    before_action :set_records_path

    def set_model_class
      self.class.superclass.class_eval do
        def model_class
          Artist
        end
      end
    end

    def set_records_path
      self.class.superclass.class_eval do
        def records_path
          admin_artists_path
        end
      end
    end

    def show
      super
      @albums = @record.albums
    end
  end
end
