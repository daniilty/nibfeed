class PostsController < ApplicationController
  before_action :isadmin, only: [:create, :new, :delete]
  def index
    @posts = Post.all.reverse
  end
  def create
  end
  def new
    post = curadm.posts.create(post_params)
    if post.save
      redirect_to root_url
    else
      redirect_to post_create_url
    end
  end
  def delete
    curadm.posts.find(params[:id]).delete
    redirect_to root_url
  end
  private
  def post_params
    params.require(:post).permit(:title, :content, :image)
  end
  def isadmin
    if !isadm
      redirect_to root_url and return
    end
  end
end
