class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
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
        genres_histogram = {}
        @@genres.each do |genre|
            genres_histogram[genre] ? genres_histogram[genre] += 1 : genres_histogram[genre] = 1
        end
        genres_histogram
    end

    def self.artist_count
        artist_histogram = {}
        @@artists.each do |artist|
            artist_histogram[artist] ? artist_histogram[artist] += 1 : artist_histogram[artist] = 1
        end
        artist_histogram
    end
end