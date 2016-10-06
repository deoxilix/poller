class PollsController < ApplicationController
  def index
    @polls = Poll.all.order("created_at DESC")
  end

  def show
  end

  def new
    @poll = Poll.new
  end

  def create
    @poll = Poll.new(poll_params)
    if @poll.save
      redirect_to @poll, notice: "Poll launched Successfully!"
    else
      render 'new'
    end
  end

  private
  def poll_params
    params.require(:poll).permit(:question)
  end
end
