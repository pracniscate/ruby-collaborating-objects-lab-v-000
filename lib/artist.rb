class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  # tells the artist about its songs
  def add_song(song)
    self.songs << song
  end

  # add the artist instance to the @@all class variable
  def save
    @@all << self
  end

end
