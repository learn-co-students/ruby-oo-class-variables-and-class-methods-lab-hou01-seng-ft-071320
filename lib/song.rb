require 'pry'
class Song

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    @@count = 0
    @@genres = []
    @@artists = []

    def self.count
        @@count
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            if hash.has_key?(genre)
                hash[genre] += 1
            else
                hash[genre] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if hash.has_key?(artist)
                hash[artist] += 1
            else
                hash[artist] = 1
            end
        end
        hash
    end
end