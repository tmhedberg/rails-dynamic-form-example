class ShirtStylesController < ApplicationController
  def index
    @styles = ShirtStyle.all
  end
end
