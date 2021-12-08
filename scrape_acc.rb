require 'open-uri'
require 'nokogiri'

URL = 'https://www.accenture.com/in-en/careers/jobdetails?src=inFY21pscgoogle&id=145675_india_2&title=Senior+Analyst-Order+to+Cash+Processing'

doc = Nokogiri::HTML(open(URL))
#puts doc

puts 'Desc1'
puts '=============='
desc1 = doc.search("div.description-content")
puts desc1.first.inner_html
puts ''

puts 'Desc2'
puts '=============='
desc2 = doc.at_css("div.description-content")
puts desc2.inner_html
puts ''

puts 'Desc3'
puts '=============='

desc3 = doc.at_xpath("//div[@class='description-content']")
puts desc3.inner_html
