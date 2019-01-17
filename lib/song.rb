require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(file_name)#creates a instance/object by file_name imported from MP3 class
  #binding.pry
    song_name = file_name.split(" - ")[1]
    artist_name = file_name.split(" - ")[0]

    song = self.new(song_name)
    artist = Artist.new(artist_name)
    song.artist =(artist_name) #I have to set artist to name so that its aware of its song
    #!!!ASSOCIATES NEW SONG WITH ARTIST USE ARTIST ATTRIBUTE AND SET IT SO ARTIST KNOWS ABOUT IT!
    song
  end

end
