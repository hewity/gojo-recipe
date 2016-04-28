class PagesController < ApplicationController
  def home
    @pages = Pages.find(params[:id])

  end
end
