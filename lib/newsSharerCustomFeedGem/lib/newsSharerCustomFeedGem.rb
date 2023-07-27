# frozen_string_literal: true
require_relative "newsSharerCustomFeedGem/version"
module NewsSharerCustomFeedGem
  # Post Ordering
  # This code orders posts by the weight of the post
  module PostOrdering
      def posts_ordered_by_upvotes_and_downvotes
           # Order the posts by the most upvotes (descending) and the least downvotes (ascending)
           sorted_posts = recent_posts.sort_by do |post|
            upvotes_count = post.get_upvotes.size
            downvotes_count = post.get_downvotes.size
    
            # Prioritize posts with more upvotes by multiplying the upvotes by -1 (to sort in descending order)
            # and adding the downvotes (to break ties in favor of posts with more downvotes)
            [-upvotes_count, downvotes_count]
          end
    
          # Return the sorted posts
          sorted_posts
    end
    class Error < StandardError; end
  end
end

