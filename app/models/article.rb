class Article < ActiveRecord::Base
  # Extend Article with FriendlyId class
  extend FriendlyId

  # Sets up friendly_id
  friendly_id :title, use: :slugged

  validates :title, presence: true, length: {minimum: 5}

  acts_as_taggable
  acts_as_taggable_on :articles
  
end
