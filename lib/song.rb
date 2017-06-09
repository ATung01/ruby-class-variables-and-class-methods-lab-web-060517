class Song

attr_accessor :name, :artist, :genre

  # @@all = []
  @@count = 0
  @@genres = []
  # @@genres_count = 0
  @@artists = []
  # @@artists_count = 0


  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq.each { |songs| puts songs }
  end

  def self.artist_count
    result = {}
    @@artists.each do |song|
      if result[song] != nil
        result[song] += 1
      else
      result[song] = 1
      end
    end
    result
  end

  def self.genres
      @@genres.uniq.each { |songs| puts songs }
  end

  def self.genre_count
    result = {}
    @@genres.each do |song|
      if result[song] != nil
        result[song] += 1
      else
      result[song] = 1
      end
    end
    result
  end

end
