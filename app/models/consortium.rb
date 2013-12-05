class Consortium < ActiveRecord::Base

	has_many :stores
	has_many :coupons

end