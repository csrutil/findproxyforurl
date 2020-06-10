# frozen_string_literal: true

require 'sinatra'

PAC_TEMPLATE = File.read('public/proxy.pac').freeze

get '/' do
  content_type 'application/x-ns-proxy-autoconfig'
  # content_type 'text/javascript'

  # don't remove for the compatible
  host = params[:host]
  port = params[:port]

  if host
    proxy = ''"
            var proxy = \"SOCKS5 #{host}:#{port}; SOCKS #{host}:#{port}\";
            "''.strip
  else
    proxies = params.map do |type, items|
      items.map do |item|
        [type, item].join ' '
      end.join '; '
    end

    proxy = ''"
            var proxy = \"#{proxies.join '; '}\";
            "''.strip
  end

  proxy << PAC_TEMPLATE
end
