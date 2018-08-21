# RemoteClient

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/remote_client`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

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

RemoteClient::Client.get('<get_url>')
RemoteClient::Client.post('<post_url>', '<data>')
RemoteClient::Client.put('<put_url>', '<data>')
RemoteClient::Client.delete('<delete_url>', '<data>')
    
Note : <data> is hash data type with key value pair.

