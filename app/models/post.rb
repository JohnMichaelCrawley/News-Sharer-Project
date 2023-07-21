class Post < ApplicationRecord
    belongs_to :user
    belongs_to :category


    validates :title, presence: true
    validates :url, presence: true
    validates :category_id, presence: true
end


# post = Post.new(title: 'title', url: 'url', category_id: 1, user_id: 1)pos