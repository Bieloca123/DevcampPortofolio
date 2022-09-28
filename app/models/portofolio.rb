class Portofolio < ApplicationRecord
  include Placeholder

  #validations
  validates_presence_of :title, :body, :main_image, :thumb_image

  #relationships
  has_many :technologies

  #scopes
  scope :ruby_on_rails_portofolio_items, -> { where(subtitle: 'Ruby on Rails') }
  
  after_initialize :set_defaults 

  def set_defaults
    self.main_image  ||= Placeholder.image_generator(height: 600, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 350, width: 200)
  end

  def self.angular
    where(subtitle: 'Angular')
  end
end
