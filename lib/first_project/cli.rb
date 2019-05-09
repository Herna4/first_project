class FirstProject::CLI

  def call
    list_courses
    menu
    byebye
  end

  def list_courses
    puts "Welcome to our environmment"

    @envs = FirstProject::Scraper.today
    @envs.each.with_index(1) do |env, i|
    puts "#{i}. #{env.name} - #{env.availability}"
   end
  end

  def menu
    # puts "Enter the number of course you would like more info on:"
    input = nil
    while input != "exit"
    puts "Enter the number of course you would like more info on:"
    input = gets.strip.downcase

    if input.to_i > 0
      the_env = @envs[input.to_i-1]
      puts "#{env.name} - #{env.availability}"
    elsif input == "list"
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
