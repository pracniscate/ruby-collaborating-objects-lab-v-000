class Artist
  attr_accessor :name

  SONG = []

  def initialize(name)
    @name = name
    SONG << self
  end

  def songs
    SONG 
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
  end

end
