require 'textile_toolbar'
require 'textile_toolbar/asset_copier'

if RAILS_ENV == "development"
  TextileToolbar::AssetCopier.copy "textile_toolbar"
else
  TextileToolbar::AssetCopier.warn "textile_toolbar"
end