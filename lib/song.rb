
class Song
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    self.artists
    self.genres
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

  def self.count
    @@count
  end

  def artists
    @@artists << @artist
    @@artists.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def genres
    @@genres << self.genre
    @@genres.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @genre_count = {}
    @@genres.uniq.each do |genre|
      @genre_count[genre] = 0
    end
    @@genres.each do |genre|
      @genre_count[genre] += 1
    end
    @genre_count
  end

  def self.artist_count
    @artist_count = {}
    @@artists.uniq.each do |genre|
      @artist_count[genre] = 0
    end
    @@artists.each do |genre|
      @artist_count[genre] += 1
    end
    @artist_count
  end

end
