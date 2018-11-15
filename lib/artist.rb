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

  def save
    @@all << self
  end

  def find_or_create_by_name(name)
    match = @@all.find {|artist| artist.name == name}
    if match.nil?
      match = Artist.new(name)
    end
    match
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end
end
