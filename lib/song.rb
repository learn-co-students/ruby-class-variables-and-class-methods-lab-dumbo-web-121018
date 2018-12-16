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

# binding.pry

def self.count
  # binding.pry
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
  # binding.pry
end

def self.genre_count
  # binding.pry
  temp = ""
  genre_hash = {}
  @@genres.each do |genre|
    #binding.pry
    if genre != temp
      genre_hash[genre] = 1
      temp = genre
    else
      genre_hash[genre] += 1
      temp = genre
    end
  end
  genre_hash
end

def self.artist_count
  temp = ""
  artist_hash = {}
  @@artists.each do |artist|
    # binding.pry
    if artist != temp
      artist_hash[artist] = 1
      temp = artist
    else
      artist_hash[artist] += 1
      temp = artist
    end
  end
  artist_hash
end

end
