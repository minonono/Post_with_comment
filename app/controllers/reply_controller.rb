class ReplyController < ApplicationController
  def create
    new_reply = Reply.new
    new_reply.editor = params[:editor]
    new_reply.content = params[:content]
    new_reply.Form_id = params[:p_id]
    new_reply.save
    
    redirect_to :back
  end

  def destroy
    Reply.find(params[:d_id]).destroy
    redirect_to :back
  end
end
