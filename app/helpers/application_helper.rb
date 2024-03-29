module ApplicationHelper

  # Return a title on a per-page basis.

  def title
    base_title = "SugarCube"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end

  def logo
    image_tag("logo.png", :alt => "SugerCube", :style => "height: 75px; vertical-align: middle;")
  end
end