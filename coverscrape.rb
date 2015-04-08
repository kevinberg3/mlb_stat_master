require 'rubygems'
require 'nokogiri'
require 'open-uri'


url = "http://mlb.mlb.com/news/probable_pitchers/index.jsp?c_id=mlb"

doc = Nokogiri::HTML(open(url))
  


  doc.css(".module").each do |stat|
    puts game = stat.at_css("h4").text
    puts away_pitcher = stat.at_css(".pitcher.first h5 a").text
    puts away_pitcher_handed = stat.at_css(".pitcher.first span").text
    puts home_pitcher = stat.at_css(".pitcher.last h5 a").text
    puts home_pitcher_handed = stat.at_css(".pitcher.last span").text
  end
