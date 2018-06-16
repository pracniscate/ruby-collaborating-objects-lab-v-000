# parse all the filenames in the db/mp3 folder and send the filenames to the Song class

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    files = []
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename) # go to the Song class
    end
  end

end
