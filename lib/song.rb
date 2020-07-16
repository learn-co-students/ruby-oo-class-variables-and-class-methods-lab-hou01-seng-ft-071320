require 'pry'


class Song

    attr_accessor :name, :artist, :genre

    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    @@artist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
        @@count += 1
        @@artists << self.artist
        @@genres << self.genre
        
        if @@genre_count.include?(self.genre) == false
            @@genre_count[self.genre] = 1
        else 
            @@genre_count[self.genre] += 1
        end

        if @@artist_count.include?(self.artist) == false
            @@artist_count[self.artist] = 1
        else 
            @@artist_count[self.artist] += 1
        end
    end

    def self.all
        @@all
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
        @@genre_count
    end

    def self.artist_count
        @@artist_count
    end
end

require_relative './song_list.rb'