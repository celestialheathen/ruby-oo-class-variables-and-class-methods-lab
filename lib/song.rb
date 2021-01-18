class Song 

    attr_accessor :name, :artist, :genre, :genre_count, :artist_count

    @@count = 0
    @@genres = []
    @@artists = []
    @@all = []
    @@genre_count = {}
    @@artist_count = {}

    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre 
        @@count += 1
        @@genres << genre
        @@artists << artist 
        @@all << self
        if @@genre_count[genre] == nil 
            @@genre_count[genre] = 1
        else 
            @@genre_count[genre] += 1
        end 

        if @@artist_count[artist] == nil
            @@artist_count[artist] = 1
        else 
            @@artist_count[artist] += 1 
        end
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

end

# song1 = Song.new("Lucifer", "Jay-Z", "rap" )
# song2 = Song.new("99 Problems", "Jay-Z", "rap") 
# song3 = Song.new("hit me baby one more time", "Brittany Spears", "pop")
# song4 = Song.new('River South', 'JJ Lin', 'Foreign')

# puts Song.genre_count
# puts Song.artist_count






# Write a class method, .artist_count, that returns a histogram similar to the one above, but for artists rather than genres.