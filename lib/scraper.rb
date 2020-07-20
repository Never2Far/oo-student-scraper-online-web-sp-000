require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    binding.pry
  end

  def self.scrape_profile_page(profile_url)

  end

end

Scraper.new.scrape_index_page("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html")
