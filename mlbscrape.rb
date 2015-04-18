require 'rubygems'
require 'nokogiri'
require 'open-uri'


url = "http://mlb.mlb.com/news/probable_pitchers/index.jsp?c_id=mlb"

doc = Nokogiri::HTML(open(url))
  
doc.css(".module").each do |stat|
    game = stat.at_css("h4").text.downcase!
    away_pitcher = stat.at_css(".pitcher.first h5 a").text.downcase!
    away_pitcher_handed = stat.at_css(".pitcher.first span").text
    home_pitcher = stat.at_css(".pitcher.last h5 a").text.downcase!
    home_pitcher_handed = stat.at_css(".pitcher.last span").text
    stadium = stat.at_css(".date").text.downcase!
end


def home_team
# use gsub
# takes the second team from variable game and sets as home team
end

def visiting_team

# takes the first team from variable game and sets as visiting team
end

def stadium

end