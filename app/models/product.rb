class Product < ApplicationRecord
	has_and_belongs_to_many :uses
	has_and_belongs_to_many :stuffs
end
