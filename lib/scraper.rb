require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

#students: doc.css(".student-card")
#profile_url: student.css("a").attribute("href").value
#location: student.css("p").text

  def self.scrape_index_page(index_url)
    doc = Nokogiri::HTML(open(index_url))
    binding.pry
    students = []
    doc.css(".student-card").each{ |student_card|
      student = Hash[ "name" => student_card.css("h4").text,
                      "location" => student.css("p").text,
                      "profile_url" => index_url["index.html"]= student.css("a").attribute("href").value
                    ]
                    students << student
      # student = Student.new
      # student.name = student_card.css("h4").text
      # student.location = student_card.css("").text
      # student.twitter = student_card.css("").text
      # student.linkedin = student_card.css("").text
      # student.github = student_card.css("").text
      # student.blog = student_card.css("").text
      # student.profile_quote = student_card.css("").text
      # student.bio = student_card.css("").text
      # student.profile_url = student_card.css("").text
      
    }
    return students

    
  end

  def self.scrape_profile_page(profile_url)

  end

end
