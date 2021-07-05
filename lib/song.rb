class Song
  @@count =0
  @@artists =[]
  @@genres =[]
  attr_accessor :name,:artist,:genre
  def initialize(name,artist,genre)
    @name=name
    @genre=genre
    @artist=artist
    @@count +=1
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
      @@genres.inject(Hash.new(0)) { |total,e| total[e] += 1 ;total}
  end
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, e| total[e] += 1 ;total}
  end
end
