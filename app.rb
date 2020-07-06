# frozen_string_literal: true

require 'sinatra'
require_relative 'template'

get '/' do
  content_type 'application/x-ns-proxy-autoconfig'
  # content_type 'text/javascript'

  proxies = params.map do |type, items|
    items.map do |item|
      [type, item].join ' '
    end.join '; '
  end

  proxy = ''"
          const proxy = \"#{proxies.join '; '}\";
          "''.strip

  proxy + get_template
end
