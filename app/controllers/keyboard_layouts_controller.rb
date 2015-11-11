class KeyboardLayoutsController < ApplicationController
  def index
    redirect_to edit_keyboard_layout_url(1)
  end
  def show
    render :edit
  end
  def update

  end
end
