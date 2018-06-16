class Song
  attr_accessor :artist, :name

  def initialize(name)
    @name = name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    self.artist.add_song(self)
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    song = Song.new(song.name)
    song.artist_name = song_name[0]
    song
  end

end
