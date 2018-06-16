# parse all the filenames in the db/mp3 folder and send the filenames to the Song class

class MP3Importer
  attr_accessor :title

  def files(filename)
    song = self.new
    song.title = filename.split(" - ")[1]
    song
  end

  def import(list_of_filenames)
    list_of_filenames.each{ |filename|
  Song.new_by_filename(filename) }
  end

end  
