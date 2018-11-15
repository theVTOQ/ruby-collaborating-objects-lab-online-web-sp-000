class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    #@files = []
  end

  def files
    Dir[@path]
  end

  def import

  end
end

puts MP3Importer.new("./spec/fixtures/mp3s").files
