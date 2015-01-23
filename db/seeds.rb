#please drop the tables before seeding or the primary keys will be will not be deleted

require 'open-uri'

Open.delete_all
open("https://preview.c9.io/amylinow/rails-projects/OpenDB.csv") do |locations|
  j=0
  locations.read.each_line do |location|
    if j==0 then
      puts "skip first line"
    else
      yelp, name, street, city, state, zip, phone, neighborhood, website, category, latitude, longitude = location.chomp.split(",")
      Open.create!(:yelp => yelp, :name => name, :street => street, :city => city, :state => state, :zip => zip, :phone => phone, :neighborhood => neighborhood, :website => website, :category => category, :latitude => latitude, :longitude => longitude)
    end
    puts "line #{j}"
    j += 1;
  end
end

