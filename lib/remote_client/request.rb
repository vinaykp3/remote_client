require 'net/http'
require 'uri'
require 'openssl'
require 'json'

module RemoteClient
  class Request
    def initialize(url, options={})
      @url = url
      @method = options[:method]
      @data = options[:data]
      @ssl_value = options[:ssl_value] || false
    end

    def run
      uri = URI.parse(@url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = @ssl_value
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = self.send("#{@method}_request".to_sym, uri, @data)
      http.request(request)
    end

    def get_request uri, data={}
      request = Net::HTTP::Get.new(uri.request_uri)
      request
    end

    def post_request uri, data={}
      request = Net::HTTP::Post.new(uri.request_uri, 'Content-Type' => 'application/json')
      request.body = data.to_json
      request
    end

    def update_request uri, data={}
      request = Net::HTTP::Put.new(uri.request_uri, 'Content-Type' => 'application/json')
      request.body = data.to_json
      request
    end

    def delete_request uri, data={}
      Net::HTTP::Delete.new(uri.request_uri, 'Content-Type' => 'application/json')
    end

  end
end