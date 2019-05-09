class FirstProject::CLI

  def call
    list_courses
    menu
    byebye
  end

  def list_courses
    puts "Welcome to our environmment"
    puts <<-DOC.gsub /^\s*/, ''
      1. Education -Still available!
      2. Business Administration -Still available!
      3. Computer Science -Still available!
      4. Health Science -Still available!
    DOC

  end

  def menu
    puts "Enter the number of course you would like more info on:"
    input = gets.strip

    case input
    when "1"
      puts "More info about course 1..."
    when "2"
      puts "More info about course 2..."
    when "3"
      puts "More info about course 3..."
    when "4"
      puts "More info about course 4..."
  end

  def byebye
  end

end
