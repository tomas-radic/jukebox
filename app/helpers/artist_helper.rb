module ArtistHelper
  def artist_with_country(artist)
    result = artist.name
    result += " (#{artist.country.name})" if artist.country
    result
  end
end
