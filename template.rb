# frozen_string_literal: true

require 'open-uri'
require 'timeout'

# https://github.com/codexss/auto-pac
PAC_URL = 'https://cdn.jsdelivr.net/gh/pexcn/daily@gh-pages/pac/whitelist.pac'.freeze

def get_template
  if Time.now.to_i > @last_updated_time.to_i
    buff = open(PAC_URL).read

    @template = buff[buff.index('const direct')..-1]
    @last_updated_time = Time.now.to_i + 86_400
  else
    @template || File.read('public/proxy.pac').freeze
  end

  @template
rescue Exception => e
  puts e.inspect
  File.read('public/proxy.pac').freeze
end
