# Add your code here
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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(song_list)
  song_list.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(song_list)
  puts "Please enter a song name or number:"
  input = gets.strip
  if song_list.include?(input) || (input.to_i - 1) < song_list.length
    if song_list.include?(input)
      puts "Playing #{input}"
    else
      playing_now = song_list[input.to_i - 1]
      puts "Playing #{playing_now}"
    end
  else
    puts "Invalid input, please try again"
  end
end
    
def exit_jukebox
  puts "Goodbye"
end

def run(song_list)
  puts "Please enter a command:"
  input1 = gets.strip
  while input1 != "exit" do
    if input1 == "help"
      help
      input1 = gets.strip
    elsif input1 == "list"
      list(song_list)
      input1 = gets.strip
    elsif input1 == "play"
      play(song_list)
      input1 = gets.strip
    end
  end
  exit_jukebox
end
    
    
  
  
  
  