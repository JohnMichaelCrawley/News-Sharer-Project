class UserProfileAndPostsController < ApplicationController
    def profile
        # Here you can add any logic or data retrieval needed for the user posts page
        # @posts = Post.all # For example, getting all posts from the database
      end

      def profile
        @posts = Post.all
      end

      def redirect_to_profile
        redirect_to user_profile_and_posts_profile_path
      end
end
