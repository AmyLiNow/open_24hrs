class HomeController < ApplicationController
  def map
    @opens = Open.all
    
    @opensArr = []
    @opens.each do |i|
      arr = []
      lat = @opens.find_by_id(i).latitude
      lon = @opens.find_by_id(i).longitude
      name = @opens.find_by_id(i).name
      cat = @opens.find_by_id(i).category
      yelp = @opens.find_by_id(i).yelp
      link = @opens.find_by_id(i).website
      phone = @opens.find_by_id(i).phone
      neighborhood = @opens.find_by_id(i).neighborhood
      
      
      arr.push(lat) #0
      arr.push(lon) #1
      arr.push(name) #2
      arr.push(cat) #3
      arr.push(yelp) #4
      arr.push(link) #5
      arr.push(phone) #6
      arr.push(neighborhood) #7
      arr.push(yelp) #8
      @opensArr.push(arr) 

    end
  end
  
end
