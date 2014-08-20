class Person < ActiveRecord::Base
	has_one :detail, :as => :detailable
	has_many :purchase_history
	has_many :products, :through => :purchase_history
end