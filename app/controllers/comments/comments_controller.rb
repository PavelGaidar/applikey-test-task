class Comments::CommentsController < CommentsController
  def create
    @comment = Comment.find(params[:comment_id]).comments.build(comment_params)
    create_comment
  end
end