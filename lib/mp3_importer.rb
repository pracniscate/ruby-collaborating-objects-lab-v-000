# parse all the filenames in the db/mp3 folder and send the filenames to the Song class

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  # load all the mp3 files in the path directory
  def files
    files = [] # start with an empty collection
    Dir.new(self.path).each do |file|
      files << file
    end
    files # return
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename) # go to the Song class
    end
  end

end
