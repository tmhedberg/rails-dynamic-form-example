class ShirtStylesController < ApplicationController
  def index
    @styles = ShirtStyle.all
  end

  def new; end

  def create; end
end
