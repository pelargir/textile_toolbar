module TextileToolbar
  def textile_toolbar(id)
    html = link_to_function(image_tag("textile_toolbar/bold.png", :size => "23x22", :alt => "Make selection bold"), "surround_selection('#{id}', '*')")
    html << "&nbsp;"
    html << link_to_function(image_tag("textile_toolbar/italic.png", :size => "23x22", :alt => "Make selection italic"), "surround_selection('#{id}', '_')")
    html << "&nbsp;"
    html << link_to("Textile", "http://hobix.com/textile/") << " enabled"
  end
end

ActionView::Base.send :include, TextileToolbar