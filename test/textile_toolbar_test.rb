require_relative 'test_helper'

class TextileToolbarTest < Test::Unit::TestCase

  include TextileToolbar
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::AssetTagHelper
  include ActionView::Helpers::JavaScriptHelper
  include ActionView::Helpers::UrlHelper
  include ActionView::Helpers::FormHelper
  
  context "textile_area" do
    should "render text area" do
      assert textile_area(:article, :body).include?("<textarea")
      assert textile_area(:article, :body).include?("</textarea>")
    end
  end

end
