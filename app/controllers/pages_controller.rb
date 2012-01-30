class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "About"
  end
end
