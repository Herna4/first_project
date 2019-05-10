class FirstProject::Scraper

   attr_accessor :name, :availability, :url, :title, :subtitle

  def self.today
    #Scraping website and returning environmments base on this data
    self.scrape_envs
  end

  def self.scrape_envs
    envs = []
    envs << self.scrape_site
    envs
    # env_1 = self.new
    # env_1.name = "Education"
    # env_1.availability = true
    # env_1.url = "https://www.uopeople.edu/"
    #
    # env_2 = self.new
    # env_2.name = "Business Administration"
    # env_2.availability = true
    # env_2.url = "https://www.uopeople.edu/"
    #
    # env_3 = self.new
    # env_3.name = "Computer Science"
    # env_3.availability = true
    # env_3.url = "https://www.uopeople.edu/"
    #
    # env_4 = self.new
    # env_4.name = "Health Science"
    # env_4.availability = true
    # env_4.url = "https://www.uopeople.edu/"
    #
    # [env_1, env_2, env_3, env_4]
  end

  def self.scrape_site
    page = Nokogiri::HTML(open("https://www.africanmall.com"))

    env = self.new
    env.title = page.search("div.inner_width clearfix").text.strip
    env.subtitle = page.search("h2.sec_title").text.strip
    # env.name = page.search().text.strip
    env.country = page.search("h2.sec_title light").text.strip
    binding.pry
  end
end
