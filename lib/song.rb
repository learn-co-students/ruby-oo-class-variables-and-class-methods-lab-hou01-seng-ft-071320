require "pry"
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
        @@artists << self.artist
        @@genres << self.genre  
    end

    def self.artists
        @@artists.uniq!
    end

    def self.genres
        @@genres.uniq!
    end

    def self.count 
        @@count 
    end

    def self.genre_count
        hash = {}
        @@genres.collect do |i|
            if hash[i]
                hash[i] += 1
            else
                hash[i] = 1
         end
       end
       return hash 
     end

     def self.artist_count 
        hash = {}
        @@artists.collect do |i|
            if hash[i]
                hash[i] += 1
            else
                hash[i] = 1
            end 
        end
        return hash 
     end
end