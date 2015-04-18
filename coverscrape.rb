require 'rubygems'
require 'nokogiri'
require 'open-uri'

attr_accesible :matchup_link


url = @matchup_link

puts url 
doc = Nokogiri::HTML(open(url))

