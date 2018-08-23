RSpec.describe RemoteClient::Client do
  describe '.get' do
    it 'should return the processed request object' do
      data = RemoteClient::Client.get('http://www.google.com')
      expect(data.code).to eq("200")
    end
  end

  describe '.post' do
    it 'should return the processed request object' do
      http = double
      allow_any_instance_of(RemoteClient::Request).to receive(:run).and_return(Net::HTTPResponse)
      data = RemoteClient::Client.post('http://www.test.com', {})
      expect(data).to eq(Net::HTTPResponse)
    end
  end

  describe '.put' do
    it 'should return the processed request object' do
      http = double
      allow_any_instance_of(RemoteClient::Request).to receive(:run).and_return(Net::HTTPResponse)
      data = RemoteClient::Client.put('http://www.test.com', {})
      expect(data).to eq(Net::HTTPResponse)
    end
  end

  describe '.delete' do
    it 'should return the processed request object' do
      http = double
      allow_any_instance_of(RemoteClient::Request).to receive(:run).and_return(Net::HTTPResponse)
      data = RemoteClient::Client.delete('http://www.test.com')
      expect(data).to eq(Net::HTTPResponse)
    end
  end
end