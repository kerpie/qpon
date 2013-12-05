class Coupon < ActiveRecord::Base

	belongs_to :coupon_type
	belongs_to :coupon_state
	belongs_to :consortium
	belongs_to :admin

end