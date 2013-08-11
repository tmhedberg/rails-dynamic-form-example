class ShirtStylesController < ApplicationController
  include ActionView::Helpers::TextHelper

  def index
    @styles = ShirtStyle.all
  end

  def new; end

  def create
    styles = params[:shirt_style].values.reject do |style|
      style.values.all? &:blank?
    end
    styles.each { |style| ShirtStyle.create! style }
    if styles.length > 0
      flash[:notice] = "Created #{pluralize styles.length, 'style'}"
    end
    redirect_to root_path
  end
end
