class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    song_artist = Artist.find_or_create_by(name: name)
    self.artist = song_artist
  end

  def has_artist?
    !!artist
  end
end
