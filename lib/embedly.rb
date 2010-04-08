require 'rubygems'
require 'net/http'
require 'cgi'

class Embedly

  # returns a dictionary of the oembed object
  def initialize(options)
    raise ArgumentError, "No url provided in options hash" if options[:url].nil?
    @url = options[:url]

    options[:format] ||= 'json'
    options[:maxwidth] ||= nil
    options[:maxheight] ||= nil

    options.delete(:url)

    @url_params = options
    @request_url = url_for_request
  end

  def gets
    r = Net::HTTP.get_response(URI.parse(@request_url))
    return r.body
  end

  def url_for_request
    base = 'http://api.embed.ly/v1/api/oembed'
    request_url = "#{base}?url=#{CGI::escape(@url)}"
    unless @url_params.empty?
      @url_params.each do |key,value|
        request_url += "&#{CGI::escape(key.to_s)}=#{CGI::escape(value.to_s)}" if value
      end
    end
    request_url
  end

end

