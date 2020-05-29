module Admin
  class AlbumsController < AdminController
    def model_class
      Album
    end

    def records_path
      admin_albums_path
    end

    def index
      super
      @records_count = @records.count
    end
  end
end
