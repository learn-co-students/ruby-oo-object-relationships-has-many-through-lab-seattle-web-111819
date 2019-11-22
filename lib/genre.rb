class Genre 

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
            song.genre == self 
        end
    end

    #has many artists, through songs
    #songs becomes a helper method for the below method

    def artists 
        songs.map { |song| song.artist }  
    end



end