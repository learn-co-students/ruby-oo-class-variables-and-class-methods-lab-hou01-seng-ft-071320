require 'pry'

class Song
    attr_accessor :name, :artist, :genre, :counting_genres, :counting_artists

    @@all = []
    @@count = 0
    @@genres = []
    @@artists = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1

        @@genres << self.genre
        @@artists << self.artist
        @@all << self

        @counting_genres = counting_genres
        @counting_artists = counting_artists
    end

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end

    def counting_genres
        if @@genre_count.include?(@genre).!
            @@genre_count[@genre] = 1
        else
            @@genre_count[@genre] += 1
        end
    end

    def counting_artists
        if @@artist_count.include?(@artist).!
            @@artist_count[@artist] = 1
        else
            @@artist_count[@artist] += 1
        end
    end
    
# binding.pry
end