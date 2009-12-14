require 'rake'

namespace :textile_toolbar do
  desc "Install files required by textile_toolbar"
  task :install do  
    source = File.expand_path(File.join(File.dirname(__FILE__), '..', 'files'))
    FileUtils.cp_r "#{source}/public", "#{RAILS_ROOT}"
  end
end
