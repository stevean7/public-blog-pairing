class RatingsController < ApplicationController
  before_action :set_post

  def create
    @post.ratings.create! ratings_params
    redirect_to @post
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def ratings_params
    params.required(:rating).permit(:score)
  end
end
