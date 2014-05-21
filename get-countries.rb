#This sample shows a basic call structure to print a list of country names 
#and their corresponding DHS Country Code.
#For more information, refer http://api.dhsprogram.com

#Import libraries.
require 'json'
require 'open-uri'

#Query the API for a list of countries, then parse the list into a Ruby Object
data = JSON.parse(open('http://api.dhsprogram.com/rest/dhs/countries.json').read)

#Display a list of Country Code and names.
data.each do |country|
  puts country["CountryName"]
end