# frozen_string_literal: true
require_relative "newsSharerCustomFeedGem/version"
module NewsSharerCustomFeedGem
  # Post Ordering
  # This code orders posts by the weight of the post
  module PostOrdering
      def posts_ordered_by_upvotes_and_downvotes
        # Fetch all posts within the last 24 hours
        recent_posts = Post.where('created_at >= ?', 24.hours.ago)
        # Order the posts by the most upvotes and the least downvotes
        sorted_posts = recent_posts.sort_by do |post|
          upvotes_count = post.get_upvotes.size
          downvotes_count = post.get_downvotes.size
          [upvotes_count, downvotes_count]
        end.reverse

        # Return the sorted posts
        sorted_posts
    end
    class Error < StandardError; end
  end
end

