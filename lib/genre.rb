class Genre

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select {|song| song.genre == self}
    # why does Song.all work? because it's all songs?
  end

  def artists
    self.songs.map {|song| song.artist}
  end

  def self.all
    @@all
  end

end