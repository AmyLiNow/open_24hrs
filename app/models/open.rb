class Open < ActiveRecord::Base
    
    def address
    	[name, street, city, state, zip].compact.join(', ')
    end

	geocoded_by :address
	after_validation :geocode

end
