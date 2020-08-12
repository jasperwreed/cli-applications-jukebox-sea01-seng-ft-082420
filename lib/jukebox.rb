require 'pry'

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

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_choice = gets.strip
  
  songs.each do |song|
    if song.include?(user_choice)
      puts "Playing #{song}"
    end
  end
  
  if !songs.include?(user_choice)
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  puts "Please enter a command: "
  user_input = gets.downcase.strip
  
  while !user_input == 'exit' do 
  if user_input == 'help'
    help
    puts "Please enter a command: "
    user_input = gets.downcase.strip
  elsif user_input == 'list'
    list(songs)
    puts "Please enter a command: "
    user_input = gets.downcase.strip
  elsif user_input == 'play'
       play(songs)
      puts "Please enter a command: "
      user_input = gets.downcase.strip
    end
  end
  
  if user_input == 'exit'
    exit_jukebox
  end
end



