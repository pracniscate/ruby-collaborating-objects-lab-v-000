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

  # define the @@all method
  def self.all
    @@all
  end

  def find_or_create_by_name(name)
    
  end  

end
