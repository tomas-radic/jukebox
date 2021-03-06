module Admin
  class ArtistsController < AdminController
    def model_class
      Artist
    end

    def records_path
      admin_artists_path
    end

    def show
      super
      @albums = @record.albums
    end
  end
end
