module RemoteClient
  class Client
    
    def self.get(url)
      Request.new(url, {method: 'get'}).run
    end

    def self.post(url, data={})
      Request.new(url, {method: 'post', data: data}).run
    end

    def self.put(url, data={})
      Request.new(url, {method: 'update', data: data}).run
    end

    def self.delete(url)
      Request.new(url, {method: 'delete'}).run
    end

  end
end