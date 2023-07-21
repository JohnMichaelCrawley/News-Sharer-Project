class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category

    validates :title, presence: true
    validates :url, presence: true
    validates :category_id, presence: true

    before_save :set_default_values

    private
  
    def set_default_values
      self.upvotes ||= 0
      self.downvotes ||= 0
    end
end