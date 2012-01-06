require 'rack'

module Rack
  module Throttle
    autoload :Limiter,    'rack/throttle/limiter'
    autoload :Interval,   'rack/throttle/interval'
    autoload :TimeWindow, 'rack/throttle/time_window'
    autoload :Daily,      'rack/throttle/daily'
    autoload :Hourly,     'rack/throttle/hourly'
    autoload :RailsCacheAdapter,     'rack/throttle/rails_cache_adapter'
    autoload :VERSION,    'rack/throttle/version'
  end
end
