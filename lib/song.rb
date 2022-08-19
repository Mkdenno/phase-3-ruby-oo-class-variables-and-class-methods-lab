class Song
    attr_accessor :name, :artist, :genre

    @@count=0
    @@artists=[]
    @@genres=[]
def initialize (song_name,artist,genre)
    @name=song_name
    @artist=artist
    @genre=genre
    @@count +=1
    @@genres <<genre
    @@artists << artist
    # @@count=3
    # @@artists=["Jay-Z", "Jay-Z", "Brittany Spears"]
    # @@genres=["rap", "rap", "pop"]

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
    genre_count={}
    @@genres.each do |genre|
        if genre_count[genre]
            genre_count[genre] +=1
        else
            genre_count[genre] =1
        end
        end
        genre_count
    end
    def self.artist_count
        artist_count={}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] +=1
            else
                artist_count[artist] =1
            end
        end
        artist_count
    end
end
dennis = Song.new("99 Problems", "Jay-Z", "rap")
p dennis.name # => "99 Problems"
p dennis.artist # => "Jay-Z"
p dennis.genre # => "rap" 
p Song.count #=> 1
p Song.genres #=> ["rap"]
p Song.artists #=> ["Jay-Z"]

# hit_me = Song.new('hit me baby one more time', 'Brittany Spears', 'pop')
# lucifer = Song.new("Lucifer", "Jay-Z", "rap")
# p Song.count #=> 3
# p Song.genres #=> ["rap", "pop"]
# p Song.artists #=> ["Jay-Z", "Brittany Spears"]
# p Song.artist_count #=> {"Jay-Z"=>2, "Brittany Spears"=>1}
# p Song.genre_count #=> {"rap"=>2, "pop"=>1}
