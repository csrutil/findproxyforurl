# frozen_string_literal: true

require 'sinatra'

PAC_TEMPLATE = File.read('public/proxy.pac').freeze

get '/' do
  content_type 'application/x-ns-proxy-autoconfig'
  # content_type 'text/javascript'

  host = params[:host]
  port = params[:port]

  proxy = ''"
          var proxy = \"SOCKS5 #{host}:#{port}; SOCKS #{host}:#{port}\";
          "''.strip

  proxy << PAC_TEMPLATE
end
