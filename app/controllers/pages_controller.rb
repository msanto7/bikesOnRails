class PagesController < ApplicationController

  def about
  end

  def home
    @review = current_user.reviews.build if logged_in?
  end


end # Ends Controller
