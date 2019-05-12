class FirstProject::Scraper

   attr_accessor :name, :availability, :price

  def self.today
    #Scraping website and returning environmments base on this data
    self.scrape_envs
  end

  def self.scrape_envs
    envs = []
    envs << self.scrape_mall
    envs << self.scrape_chic
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
  #
  def self.scrape_mall
    doc = Nokogiri::HTML(open("https://www.africanmall.com/jurllyshe-camouflage-slim-cami-dress.html?pid=3662&1837=11772"))

    env = self.new
    env.name = doc.css("h1.h1box").text
    env.price = doc.css("#product-price-3662.regular-price span.price").text
    env.availability = true
    env
  end

  def self.scrape_chic
    doc = Nokogiri::HTML(open("https://www.ebay.com/itm/Microspareparts-Mobile-iPhone-7-LCD-Assembly-White-MOBX-IPO7GP-LCD-W-H-NEW/362625346140?hash=item546e27aa5c:g:FtsAAOSwU8Rcum2P"))

    env = self.new
    env.name = doc.css("h1.it-ttl").text
    env.price = doc.css("span.notranslate").text
    env.availability = true
    env
  end
end
