class CommentsController < ApplicationController
	def create
    @movie = Movie.find(params[:movie_id])
    @comment = @movie.comments.create(content)
    redirect_to movie_path(@movie)
    end
 
    private
     def content
       params.require(:comment).permit(:comment)
     end
end
