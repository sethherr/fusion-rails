class KeyboardLayoutsController < ApplicationController
  def index
    redirect_to edit_keyboard_layout_url(1)
  end
  def show
    render :edit
  end
  def update
    # Not very rails-y
    # It might be better to accept a JSON post with the layout
    layout = JSON.parse(params[:layout])
    Rails.logger.debug "layout: #{layout}"
    render :edit
  end
end
