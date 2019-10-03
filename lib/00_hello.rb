def say_hello
    puts "entrer votre prenom"
    puts ">"
    first_name = gets.chomp

    puts "Bonjour, " + first_name + " !!!!"
  end

  say_hello