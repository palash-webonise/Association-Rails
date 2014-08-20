class Product < ActiveRecord::Base
	has_one :detail, :as => :detailable
	has_many :purchase_history
	has_many :people, :through => :purchase_history
end