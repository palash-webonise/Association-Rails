class PerchaseHistory < ActiveRecord::Base
	belongs_to :person
	belongs_to :product
end