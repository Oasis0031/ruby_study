class Song
  
  attr_accessor :title, :artist, :duration

  def initialize(title, artist, duration)
    @title = title
    @artist = artist
    @duration = duration
  end

  def info
    "제목 : #{@title}, 아티스트 : #{@artist}, 길이 : #{@duration} 초"
  end
end

class Playlist
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def total_duration
    @songs.sum { |song| song.duration }
  end

  def longest_song
    @songs.max_by { |song| song.duration }
  end

  def list_all
    @songs.each do |song|
    puts song.info
    end
  end
end

playlist = Playlist.new("My Playlist")

song1 = Song.new("Song 1", "Artist 1", 180)
song2 = Song.new("Song 2", "Artist 2", 240)

playlist.add_song(song1)
playlist.add_song(song2)

playlist.list_all
puts "Total Duration: #{playlist.total_duration} seconds"
puts "Longest Song: #{playlist.longest_song.info}"