module ShoesHelper
  def display_nested_header
    if @category
      content_tag(:h2, @category.name)
    else
      content_tag(:h1, "All the Shoes" )
    end
  end

  def display_nested_title
    if @category
      @category.name
    else
     "Shoes"
    end
  end


end
