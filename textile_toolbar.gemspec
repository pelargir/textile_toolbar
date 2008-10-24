Gem::Specification.new do |s|
  s.name     = "textile_toolbar"
  s.version  = "0.5"
  s.date     = "2008-08-21"
  s.summary  = "Adds a handy Textile toolbar to any text area."
  s.email    = "pelargir@gmail.com"
  s.homepage = "http://github.com/pelargir/textile_toolbar"
  s.description = "Adds a handy Textile toolbar to any text area."
  s.has_rdoc = true
  s.authors  = ["Matthew Bass", "Terralien"]
  s.files    = [
    "CHANGELOG",
    "files/public/images/textile_toolbar/bold.png",
    "files/public/images/textile_toolbar/hyperlink.png",
    "files/public/images/textile_toolbar/image.png",
    "files/public/images/textile_toolbar/italic.png",
    "files/public/javascripts/textile_toolbar.js",
		"init.rb",
		"install.rb",
		"lib/textile_toolbar.rb",
    "MIT-LICENSE",
    "Rakefile",
		"README",
		"tasks/textile_toolbar.rake",
		"test/test_helper.rb",
		"test/textile_toolbar_test.rb",
		"textile_toolbar.gemspec",
    "TODO"
		]
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README"]
end