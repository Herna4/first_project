class FirstProject::Scraper

   attr_accessor :name, :availability, :url

  def self.today
    #return a branch of instances of environmment
    # puts <<-DOC.gsub /^\s*/, ''
    #   1. Education -Still available!
    #   2. Business Administration -Still available!
    #   3. Computer Science -Still available!
    #   4. Health Science -Still available!
    # DOC

    env_1 = self.new
    env_1.name = "Education"
    env_1.availability = true
    env_1.url = "https://www.uopeople.edu/"

    env_2 = self.new
    env_2.name = "Business Administration"
    env_2.availability = true
    env_2.url = "https://www.uopeople.edu/"

    env_3 = self.new
    env_3.name = "Computer Science"
    env_3.availability = true
    env_3.url = "https://www.uopeople.edu/"

    env_4 = self.new
    env_4.name = "Health Science"
    env_4.availability = true
    env_4.url = "https://www.uopeople.edu/"

    [env_1, env_2, env_3, env_4]

  end

end
