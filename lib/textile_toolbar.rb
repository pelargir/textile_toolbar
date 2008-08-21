module TextileToolbar
  def textile_toolbar(id)
    html = link_to_function(image_tag("textile_toolbar/bold.png", :size => "23x22", :alt => "Make selection bold"), "surround_selection('#{id}', '*', '*')")
    html << "&nbsp;"
    html << link_to_function(image_tag("textile_toolbar/italic.png", :size => "23x22", :alt => "Make selection italic"), "surround_selection('#{id}', '_', '_')")
    html << "&nbsp;"
    html << link_to_function(image_tag("textile_toolbar/hyperlink.png", :size => "23x22", :alt => "Make hyperlink"), "insert_hyperlink('#{id}')")
    html << "&nbsp;&nbsp;"
    html << "<small>" << link_to("Textile", "http://hobix.com/textile/") << "&nbsp;enabled</small>"
  end
end

ActionView::Base.send :include, TextileToolbar