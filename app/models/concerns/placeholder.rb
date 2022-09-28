module Placeholder
	extend ActiveSupport::Concern

	def self.image_generator(height:, width:)
		"https://place-hold.it/#{height}X#{width}"
	end
end