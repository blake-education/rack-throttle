module Rack; module Throttle
  # This allows whatever a Rails applications has configured for Rails.cache
  # to be used as the cache for Rack::Throttle as well.
  #
  # Usage:
  # use Rack::Throttle::Daily, :cache => Rack::Throttle::RailsCacheAdapter.new 
  class RailsCacheAdapter
    attr_accessor :options

    def initialize(options = {})
      default_options = {
        :expires_in => 1.day
      }
      
      @options = default_options.merge(options)
    end

    def [](key)
      Rails.cache.read(key) 
    end

    def []=(key, value)
      Rails.cache.write(key, value, @options)
    end

  end
end; end
