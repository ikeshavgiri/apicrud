class PostsController < ApplicationController
	  def index
	   
	    @post = Post.all
	    render json: @post

	  end

	  def create
	    
	    @post = Post.new(title: params[:title], body: params[:body])

	    if @post.save
	    	render json: @post
	    else
	        render json: {error: 'Operation not completed'}
	    end

	  end
	 
	  def update
	    @post = Post.find(params[:id])

	    if @post.update(title: params[:title],body: params[:body])
	      render json: @post
	    else
	      render json: {error: 'Operation not completed'}
	    end

	  end
	 
	  def destroy

	    @post = Post.find(params[:id])
	 
	    if @post.destroy
	          render json: {status: 'Operation is successful'}
	    else
	          render json: {error: 'Operation not completed'}
	    end
	    
	  end

end
