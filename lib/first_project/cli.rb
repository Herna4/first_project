class FirstProject::CLI

  def call
    articles
    boby
    byebye
  end

  def articles
    puts "Welcome to our environment:"

    @envs = FirstProject::Scraper.today
    puts "1. Get info about Dress"
    puts "2. Get info about Gadget"
    # @envs.each.with_index(1) do |env, i|
    #  puts "#{i}. #{env.name} - #{env.price} - #{env.availability}"

  #  end
  end

  def boby
    input = ""
    while input != "exit"
    puts "Enter the number of article you'd like getting info or type view to see the articles or exit:"
    # puts "Enter the number of course you would like more info on or type list to see the environmment or exit:"
    input = gets.strip.downcase

    if input.to_i > 0 && input.to_i <=2
       the_env = @envs[input.to_i-1]
         puts "#{the_env.name} - #{the_env.price} - #{the_env.availability}"
    elsif input == "view"
      articles
    else
      puts "Make sure to type the correct number."
      puts "Type view or exit."
      # puts "Not sure what you want, type list or exit"
    end
   end
  end

  def byebye
    puts "Thanks for visiting our environment"
    puts "Goodbye"
  end

end
