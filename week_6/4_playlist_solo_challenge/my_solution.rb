# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode
# 1. create a song class and a playlist class
# 2. initialize tite, artist, songs, and list
# 3. define methods play, add, num_of_tracks, remove, includes, play_all, and display
# 4. for play_all and display, loop through list to access object attributes title and artist


# Initial Solution

class Song
  attr_reader :title, :artist
  
  def initialize(title, artist)
  	@title = title
  	@artist = artist
  end

  def play
  	puts "You are now listening to #{title} by #{artist}."
  end

end

class Playlist
  
  attr_reader :songs, :list

  def initialize(*songs)
  	@songs = songs
  	@list = []
  end

  def add(*song)
  	@list << song
  end

  def num_of_tracks
  	@list.map.length
  end

  def remove(song)
  	@list.delete(song)
  end

  def includes?(song)
  	@list.include?(song)
  end

  def play_all
  	puts "You are going to listen to the following songs:"
    @list.each {|s| puts s.title + ","}
  end

  def display
  	puts "Here are all the songs in your playlist:"
    @list.each {|s| puts "*" + s.artist } #songs.title}
  end

  # def play
  #   song = @list.shuffle.pop
  #   puts "You are now listening to: #{song.title} by #{song.artist}"
  # end
end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")

 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
p my_playlist 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
p my_playlist.list
p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist == 4
p my_playlist.includes?(lying_from_you) == true
p my_playlist.num_of_tracks
# my_playlist.play_all
# my_playlist.display





# Reflection 