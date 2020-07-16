require 'pry'
class Song
    attr_accessor :name,:artist,:genre
@@count = 0
@@artists = []
@@genres = []
    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
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
        genre_hash = @@genres.each_with_object({}) do |index,genre_hash|
            if !genre_hash[index]
                genre_hash[index] = 1
            else
                genre_hash[index] +=1
            end
        end
        genre_hash
    end
    def self.artist_count
        artist_hash = @@artists.each_with_object({}) do |index,artist_hash|
            if !artist_hash[index]
                artist_hash[index] = 1
            else
                artist_hash[index] += 1
            end
        end
        artist_hash
    end
end
