# Print out a list of actions
def ask_action choices
  puts "\n\nWhat do you want to do?"
  puts choices
  gets.chomp.downcase
end

def print_description(desc)
  puts desc.gsub(/(?<=\A|\n)[ ]{2,}/,"")
end

def starting_scene
  print_description <<-EOP
             ******* DON'T GET FIRED TED!!!*************
  You wake up late for work for the 3rd time this week of your new job .
  As you are speeding into the parking lot you see your boss standing by the front door.
  As you approach the front door, you decide on what you are going to say.

  EOP

  choices = [
    "(A)poligize for being late.",
    "(S)tart crying."
  ]

  case ask_action(choices)
  when "a"
    print_description <<-EOP
      Your boss hands you your pink slip
      and tells you that you're fired.
    EOP
  when "s"
    smiling_joker
  else
    bad_choice
    starting_scene
  end
end

def bad_choice
  puts <<-EOP
  XX Incorrect choice XX
  EOP
end

def smiling_joker
  print_description <<-EOP
    Your boss asks you what is wrong
  EOP

  choices = [
    "(L)ie about house catching on fire.",
    "(T)ell him you cat ran away.",
    "(G)ive him a hug."
  ]

  case ask_action(choices)
  when "l"
    puts "Your boss checks with local fire dept and found out you lied FIRED!!!"
  when "t"
    puts "He lets you into work,but remembers an hour later that you are allergic to cats! FIRED!"
  when "g"
    puts "You approach your boss and embrace him dearly,telling
    him you will miss him but you decided to go to code school. YOU WIN!! Or do you... "
  else
    bad_choice
    smiling_joker
  end
end

def game_over
  puts "Game Over"
end

def start_game
  starting_scene
  game_over
end

start_game

__END__
# Batman REPL Game

- Setting
    - Arkham Asylum
    - Main Hall
    - other stuff
- Enemies are:
    - Joker
    - Patients/Prisoners
    - Scarecrow
    - Poison Ivy

- Batman starts off in main Hall

The game starts off with Batman in the Main Hall.
Description
Actions
