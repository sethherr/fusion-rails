class KeyboardLayoutsController < ApplicationController
  def index
    redirect_to edit_keyboard_layout_url(1)
  end
  def show
    render :edit
  end
  def update
    if false
      # Not very rails-y
      # It might be better to accept a JSON post with the layout
      layout = JSON.parse(params[:layout])
      Rails.logger.debug "layout: #{layout}"
      render :edit
    else
      # layout = Layout.find(params[:id])
      # layout = Layout.new(layout_params)
      Rails.logger.debug "layout: #{layout_params}"
      render json: {}
    end
  end

  private

  def key_params
    [:label, :code]
  end

  def layer_params
    [:description, keymap: key_params]
  end

  def layout_params
    permitted = [:type, :description, layers: [layer_params]]

    params.require(:layout).permit(permitted).tap do |whitelisted|
      # whitelisted[:kind] = params[:layout][:type]
      # whitelisted.delete(:type)
    end
  end
end
