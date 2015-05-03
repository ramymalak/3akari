class PostsController < InheritedResources::Base
  before_action :authenticate_member!, except: [:index,:show]
  def new
    @post=Post.new
  end
  def create
    @post = Post.new(post_params)
    # @post.area=post_params['area']
    @post.save
    redirect_to @post
    # render plain: params[:post].inspect
  end
  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts=Post.all
  end

  private

    def post_params
      params.require(:post).permit(:kind, :area, :price, :address, :lang, :lat, :avatar)
    end
end

