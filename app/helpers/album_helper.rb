module AlbumHelper
  def album_title_with_year(album)
    result = album.title
    result += " (#{album.year_recorded})" if album.year_recorded
    result
  end
end
