# OmniAuth::Acumatica

OmniAuth strategy for 3dcart OAuth2

## Usage

Authorization Code Flow
https://apirest.3dcart.com/v2/getting-started/index.html#getting-started

You must first register your application:
http://devportal.3dcart.com/

When you register the application, you will get an 'Client ID' and 'Client Secret'. These need to be provided when you configure the strategy (this example assumes the values are available in environment variables):

```
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :g3dcart, ENV['CLIENT_ID'], ENV['CLIENT_SECRET']
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-g3dcart'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-g3dcart

## Response Example

Expected from 3dcart:

```
{
  "token":"secret_secretihaveasecret",
  "expires":"false"
}
```


## Contributing

1. Fork it ( https://github.com/dropstream/omniauth-g3dcart/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
