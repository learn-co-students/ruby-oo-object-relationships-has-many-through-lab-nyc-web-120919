class Artist

    attr_reader :name
    attr_writer :artist

    @@all = []

    def initialize(name)
        @name = name
        
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(song_name, genre)
        current_artist = self
        new_song = Song.new(song_name, current_artist, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self}
    end

    def genres
        songs.map {|song| song.genre}
    end

end