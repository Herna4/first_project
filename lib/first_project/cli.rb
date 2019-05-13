class FirstProject::CLI

  def call
    list_articles
    boby
    byebye
  end

  def list_articles
    puts "Welcome to our environmment:"

    @envs = FirstProject::Scraper.today
    puts "1. Get info about dress"
    puts "2. Get info about iphone7"
    # @envs.each.with_index(1) do |env, i|
    #  puts "#{i}. #{env.name} - #{env.price} - #{env.availability}"

  #  end
  end

  def boby
    input = ""
    while input != "exit"
    puts "Enter the number of articles you would like more info on or type list to see the articles or exit:"
    # puts "Enter the number of course you would like more info on or type list to see the environmment or exit:"
    input = gets.strip.downcase

    if input.to_i > 0 && input.to_i <=2
       the_env = @envs[input.to_i-1]
         puts "#{the_env.name} - #{the_env.price} - #{the_env.availability}"
    elsif input == "list"
      list_articles
    else
      puts "Not sure what you want, type list or exit."
    end
   end
  end

  def byebye
    puts "Thanks for visiting our environment"
    puts "Goodbye"
  end

end
