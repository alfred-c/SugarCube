class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def contact
    @title = "Contact"
  end
  
  def about
    @title = "About"
  end
  
  def cube
    @title = "Cube"
    @forum = Forum.find(1) 
    @topic = @forum.topics.build
  end
end
