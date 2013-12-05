class Store < ActiveRecord::Base

	belongs_to :consortium
	belongs_to :store_type
	has_many :stores
	has_many :store_phones

end