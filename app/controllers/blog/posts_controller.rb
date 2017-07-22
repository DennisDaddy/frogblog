module Blog
	class PostsController < BlogController
	 
	  def index
	    @posts = Post.most_recent.published
	  end

	  # GET /posts/1
	  # GET /posts/1.json
	  def show
	  	  @post = Post.friendly.find(params[:id])
	  end	
	end
end