class FirstProject::Scraper

  # attr_accessor :name, :available, :url

  def self.today
    #return a branch of instances of environmment
    puts <<-DOC.gsub /^\s*/, ''
      1. Education -Still available!
      2. Business Administration -Still available!
      3. Computer Science -Still available!
      4. Health Science -Still available!
    DOC

  end

end
