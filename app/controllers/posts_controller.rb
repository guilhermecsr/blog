class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  # posts#create - posts_path - /posts
  def create
    # byebug
    # render plain: params[:post].inspect
    @post = Post.new(posts_params)
    # byebug
    if @post.save
    #   mandar uma msg pro use5r dizenmdo que salvou
      redirect_to post_path(@post)
    else
      render :new
    #   mandar uma msg pro user dixzendi q n salvou
    end
  end


  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(posts_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  private

  def posts_params
    params.require(:post).permit(:title, :text)
  end

end


# posts_path
# /posts	  posts#index MOSTRAR TODOS OS ARTICLES
# /posts   posts#create    form { form.submit }   CRIAR, SALVAR NO BANCO