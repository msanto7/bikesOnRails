

class DefaultController < ApplicationController

  def index
    @review = current_user.reviews.build if logged_in?
  end

  def signup

  end



end
