Gem::Specification.new do |s|
  s.name     = "textile_toolbar"
  s.version  = "0.5"
  s.date     = "2008-08-21"
  s.summary  = "Adds a handy toolbar to any Textile-enabled text area."
  s.email    = "pelargir@gmail.com"
  s.homepage = "http://github.com/pelargir/textile_toolbar"
  s.description = "Adds a handy toolbar to any Textile-enabled text area."
  s.has_rdoc = true
  s.authors  = ["Matthew Bass"]
  s.files    = [
    "CHANGELOG",
    "MIT-LICENSE",
    "Rakefile",
		"README",
		"textile_toolbar.gemspec",
		"lib/textile_toolbar.rb",
		"test/test_helper.rb",
		"test/textile_toolbar_test.rb"
		]
  s.rdoc_options = ["--main", "README"]
  s.extra_rdoc_files = ["README"]
end