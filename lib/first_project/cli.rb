class FirstProject::CLI

  def call
    list_courses
    menu
    byebye
  end

  def list_courses
    puts "Welcome to our environmment"

     @envs = FirstProject::Scraper.today

  end

  def menu
    # puts "Enter the number of course you would like more info on:"
    input = nil
    while input != "exit"
    puts "Enter the number of course you would like more info on:"
    input = gets.strip.downcase

    case input
    when "1"
      puts "More info about course 1..."
    when "2"
      puts "More info about course 2..."
    when "3"
      puts "More info about course 3..."
    when "4"
      puts "More info about course 4..."
    when "list"
      list_courses
    else
      puts "Not sure what you want, type degree or exit."
    end
   end
  end

  def byebye
    puts "Thnanks for visiting our environmment"
  end

end
