require 'rubygems'
require 'nokogiri'
require 'open-uri'

attr_accesible :matchup_link

url = "http://www.covers.com/sports/mlb/matchups"

doc = Nokogiri::HTML(open(url))

matchup_link = doc.css(".cmg_matchup_game_box a:nth-child(2)").map {|link| link['href'] }
# Scraps Covers Match Up page for matchup urls as the urls are dynamic and change daily




