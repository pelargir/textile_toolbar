# Textile Toolbar

Adds a handy Textile toolbar to any text area. The toolbar currently offers
the following functions:

- Bold: select some text and click this button to make it bold.
- Italic: select some text and click this button to make it italic.
- Insert Hyperlink: select some text, click, enter URL, and link is inserted.
- Insert Image: click, enter image URL, and image is inserted at cursor.

A link to a Textile reference page is also shown beside the toolbar.

## Installation

Add this line to your application's Gemfile:

    gem 'textile_toolbar'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install textile_toolbar

## Usage

Use the textile_area helper where you would normally use the text_area
helper. Yep, it's that simple!

    <%= text_area :article, :body %>      # plain old text area
    <%= textile_area :article, :body %>   # text area with Textile toolbar

Form blocks are supported, letting you do this also:

    <% form_for :article do |f| -%>
      <%= f.textile_area :body %>
    <% end -%>

Any options that can be passed to text_area can also be passed to textile_area.
For example, to set the width and height:

    <%= textile_area :article, :body, :rows => 5, :cols => 10 %>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## TODO

- Add specs for existing functionality
- Incorporate live preview? See http://jrm.cc/extras/live-textile-preview.php
- More buttons (check PHP bulletin board)
- Create Radiant extension for admin text areas
- Convert textile_toolbar.js to jQuery

## Resources

Repository: http://github.com/pelargir/textile_toolbar/
Blog: http://matthewbass.com
Author: Matthew Bass
