class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    # 投稿完了後、すぐに一覧表示画面へ遷移
    redirect_to :action => :index
  end

  private

  def post_params
    params.require(:post).permit(:image)
  end
end