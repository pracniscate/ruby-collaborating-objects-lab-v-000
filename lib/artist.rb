class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = [] # keep track of artist's songs
  end

  def add_song(song)
    @songs << song
  end

end
