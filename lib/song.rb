require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@artists << @artist
        @@genres << @genre
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
    # def score( array )
    #     array.each_with_object(Hash.new(0)){|key,hash| hash[key] += 1}
    #   end
    #   score([1,2,4,5,4,7]) # => {1=>1, 2=>1, 4=>2, 5=>1, 7=>1}
        @@genres.each_with_object(Hash.new(0)){|key, hash| hash[key] += 1}
    end

    def self.artist_count
        @@artists.each_with_object(Hash.new(0)){|key, hash| hash[key] += 1}
    end


    # binding.pry
    # hello 
end