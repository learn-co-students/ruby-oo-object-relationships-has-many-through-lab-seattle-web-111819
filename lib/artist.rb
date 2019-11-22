class Artist

    @@all = []

    attr_accessor :name 

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self 
        end
    end

    def new_song(name, genre)
        Song.new(name, self, genre) 
    end

    #has many genres, through songs
    #songs becomes a helper method for the below method

    def genres
        songs.map { |song| song.genre } 
    end



end