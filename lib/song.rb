class Song 
    attr_accessor :name, :artist, :genre

    @@count = 0 
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre 
        @@count += 1 
        @@genres << @genre
        @@artists << @artist

        
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
        # count = 0
        genre_count = {}
        # while counter < @@genres.length do 
        #     if genre_count[@@genres[counter]]
        @@genres.each do |key|
            if genre_count[key]
                genre_count[key] += 1
            else
                genre_count[key] = 1
            end
        end
        return genre_count
    end

    def self.artist_count
           artists_count = {}
           @@artists.each do |key|
               if artists_count[key]
                   artists_count[key] += 1
               else
                   artists_count[key] = 1
               end
           end
           return artists_count
       end
end 

