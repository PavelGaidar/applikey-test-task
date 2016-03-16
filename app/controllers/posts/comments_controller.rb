class Posts::CommentsController < CommentsController
  def create
    @comment = Post.find(params[:post_id]).comments.build(comment_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to :back }
        #format.js
      else
        flash[:error] = 'Comment cannot be created.'
        format.html { redirect_to :back }
      end
    end
  end
end
