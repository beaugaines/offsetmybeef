# high voltage static pages without /pages prefix
HighVoltage.configure do |config|
  config.route_drawer = HighVoltage::RouteDrawers::Root
end