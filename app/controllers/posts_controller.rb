class PostsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # Define a new post
  def new
    @post = Post.new
  end
  # Create a new post to the database from the user
  def create
    @post = Post.new(params.permit(:title, :url, :category_id))
    @post.user_id = current_user.id
    if @post.save
      redirect_to root_path, notice: 'Post was successfully created.'
    else
      puts 'Failed to save the post!'
      puts @post.errors.full_messages.inspect # Output the errors
      render :new
    end
  end
  # Delete a post from the database
  def destroy
    @post = Post.find(params[:id])
    
    if @post.destroy
      redirect_to user_profile_and_posts_profile_path
    else
      flash[:alert] = @post.errors.full_messages.inspect
      redirect_to user_profile_and_posts_profile_path
    end
  end
  # Define an upvote on what post to upvote to 
  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user
    redirect_to @post
  end
  # Define an downvote on what post to downvote to 
  def downvote
    @post = Post.find(params[:id])
    @post.downvote_by current_user
    redirect_to @post
  end
  private
  def post_params
    params.require(:post).permit(:title, :url, :category_id)
  end
end
