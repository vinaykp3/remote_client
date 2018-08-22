# RemoteClient

### Prerequisites:

Install stable RVM
Installed ruby version 2.3.5

## Installation

### Install it locally and use it

1. Download the source
```
git clone git@github.com:vinaykp3/remote_client.git
```
2. Checkin to library and install it
```
cd remote_client
gem install remote_client-0.1.0.gem
```

### Install it in Rails application

Add this line to your application's Gemfile:

```ruby
gem 'remote_client', git: 'git@github.com:vinaykp3/remote_client.git'
```

And then execute:

    $ bundle

## Usage

```
RemoteClient::Client.get('<get_url>')
RemoteClient::Client.post('<post_url>', {})
RemoteClient::Client.put('<put_url>', {})
RemoteClient::Client.delete('<delete_url>')
```    
Note : <data> is hash data type with key value pair.

