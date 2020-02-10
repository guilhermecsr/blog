class PostsController < ApplicationController

  def new

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
      redirect_to new_post_path
    #   mandar uma msg pro user dixzendi q n salvou
    end
  end


  def show
    @post = Post.find(params[:id])
  end
  #

  private

  def posts_params
    params.require(:post).permit(:title, :text)
  end

end


# posts_path
# /posts	  posts#index MOSTRAR TODOS OS ARTICLES
# /posts   posts#create    form { form.submit }   CRIAR, SALVAR NO BANCO