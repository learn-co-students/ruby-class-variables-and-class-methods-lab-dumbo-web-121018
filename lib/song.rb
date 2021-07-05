require 'pry'

class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << self.artist
    @@genres << self.genre
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

#binding.pry


  def self.genre_count
    counter = {}
    @@genres.each do |genre|
      if counter.keys.include?(genre)
        counter[genre] += 1
      elsif counter[genre] = 0
        counter[genre] += 1
      else
        counter[genre] = 0
      end
    end
    return counter
binding.pry
  end

  def self.artist_count
    counter = {}
    @@artists.each do |artist|
      if counter.keys.include?(artist)
        counter[artist] += 1
      elsif counter[artist] = 0
        counter[artist] += 1
      else
        counter[artist] = 0
      end
    end
    return counter
  end
end
