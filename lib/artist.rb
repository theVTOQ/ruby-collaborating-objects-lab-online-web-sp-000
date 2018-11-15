class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    #song = Song.new(title)
    song.artist = self
    @songs << song
  end

end
