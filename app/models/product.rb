class Product < ApplicationRecord
	has_and_belongs_to_many :uses
	has_and_belongs_to_many :stuffs
	def to_slug
	   #strip the string
	   ret = (self.a_key + self.name).strip
	   #replace all whitespaces and underscores to dashes
	   ret.gsub!(/[\s_]+/, '-')
	   #replace all non alphanumeric, non dashes with empty string
	   ret.gsub! /\s*[^A-Za-z0-9А-Яа-я\-]\s*/, ''
	   #convert double dashes to single
	   ret.gsub! /-+/,"-"
	   #strip off leading/trailing dashes
	   ret.gsub! /\A[-]+|[-]+\z/,""
	   "#{self.id}-#{ret}"
	end
end
