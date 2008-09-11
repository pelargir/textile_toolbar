module TextileToolbar
  def textile_area(object_name, method, options={})
    disable = options.delete(:disable) || {}
    toolbar = textile_toolbar(options[:id] || "#{object_name}_#{method}", disable)
    toolbar + text_area(object_name, method, options)
  end
  
  def textile_toolbar(id, disable)
    html = link_to_function(image_tag("textile_toolbar/bold.png", :size => "23x22", :alt => "Make selection bold"), "surround_selection('#{id}', '*', '*')")
    html << "&nbsp;"
    html << link_to_function(image_tag("textile_toolbar/italic.png", :size => "23x22", :alt => "Make selection italic"), "surround_selection('#{id}', '_', '_')")
    html << "&nbsp;"
    html << link_to_function(image_tag("textile_toolbar/hyperlink.png", :size => "23x22", :alt => "Make hyperlink"), "insert_hyperlink('#{id}')")
    html << "&nbsp;"
    unless disable == :image
      html << link_to_function(image_tag("textile_toolbar/image.png", :size => "23x22", :alt => "Insert image"), "insert_image('#{id}')")
      html << "&nbsp;&nbsp;"
    end
    html << "<small>" << link_to("Textile", "http://hobix.com/textile/", :target => "_blank") << "&nbsp;enabled</small>"
  end
end

ActionView::Base.send :include, TextileToolbar