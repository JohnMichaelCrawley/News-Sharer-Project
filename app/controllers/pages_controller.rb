class PagesController < ApplicationController
  # Include the custom GEM
  include NewsSharerCustomFeedGem::PostOrdering

  def home
    # Fetch all posts (you may have some other logic to get the relevant posts)
    @posts = Post.all

    # Display the ordered posts by upvotes and within 24 hours
    @ordered_posts = posts_ordered_by_upvotes_and_downvotes
  end
end
