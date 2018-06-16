class Artist
  attr_accessor :name, :song

  def initialize(name)
    @name = name
    @song = song
    @songs = [] # keep track of artist's songs
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
  end

end
