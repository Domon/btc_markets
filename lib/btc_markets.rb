# frozen_string_literal: true

require 'bigdecimal'
require 'http'
require 'active_support/core_ext/hash/keys'
require 'active_support/inflector'
require "btc_markets/version"

module BTCMarkets
  module Market
    def self.tick
      url = 'https://api.btcmarkets.net/market/BTC/AUD/tick'

      response_body = HTTP.get(url).to_s
      hash = JSON.parse(response_body, decimal_class: BigDecimal)
      hash.transform_keys { |key| key.underscore.to_sym }
    end
  end
end
