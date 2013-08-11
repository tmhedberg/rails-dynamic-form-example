class ShirtStylesController < ApplicationController
  include ActionView::Helpers::TextHelper

  def index
    @styles = ShirtStyle.all
  end

  def new; end

  def create
    params[:shirt_style].each do |_, style|
      ShirtStyle.create! style if !(style[:color].blank? && style[:size].blank?)
    end
    redirect_to(
      shirt_styles_path,
      notice: "Created #{pluralize params[:shirt_style].length, 'style'}"
    )
  end
end
