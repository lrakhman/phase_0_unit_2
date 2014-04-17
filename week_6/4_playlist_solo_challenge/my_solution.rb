# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge by myself.


# Pseudocode



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
  	@list = {}
  end

  def add(song)
  	@list.store(songs.title, songs.artist)
  end

  def num_of_tracks
  	@list.length
  end

  def remove(song)
  	@list.delete(song)
  end

  def includes?(song)
  	@list.include?(song)
  end

  def play_all
  	puts "You are going to listen to the following songs: #{list}"
  end

  def display
  	puts "Here are all the songs in your playlist: #{@list}"
  end


end


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# one_by_one = Song.new("One by One", "Sirenia")
# world_so_cold = Song.new("World So Cold", "Three Days Grace") 
# going_under = Song.new("Going Under", "Evanescence")



# my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
# lying_from_you = Song.new("Lying From You", "Linkin Park")
# angels = Song.new("Angels", "Within Temptation")

# p my_playlist.list
# p my_playlist.add(lying_from_you, angels)
# p my_playlist.num_of_tracks #== 5
# p going_under.play
# p my_playlist.remove(angels)
# p my_playlist.includes?(lying_from_you) #== true
# my_playlist.play_all
# my_playlist.display

# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")

 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
# p my_playlist 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you)
p my_playlist.list
# p my_playlist.num_of_tracks == 5
# going_under.play
# my_playlist.remove(angels)
# p my_playlist.includes?(lying_from_you) == true
# my_playlist.play_all
# my_playlist.display




# Reflection 