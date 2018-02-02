songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]
def help 
  help_array = [
    "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
]
  puts help_array
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index + 1}. #{song}"}
end 

def play(songs)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if songs.include?(song_name)
    puts "Playing #{song_name}"
  elsif (1..9).to_a.include?(song_name.to_i)
    puts "Playing #{songs[song_name.to_i - 1]}"
  else 
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help
  puts "Please enter a command:"
  command = gets.chomp
    if command == "list"
      list(songs)
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "play"
      play(songs)
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "help"
      help
      puts "Please enter a command:"
      command = gets.chomp
    elsif command == "exit"
      exit_jukebox
  end 
end 

run(songs)
    
    
    