[![Gem Version](https://badge.fury.io/rb/rails_sandbox.png)](https://rubygems.org/gems/rails_sandbox)

# RailsSandbox


a tiny gem that provides a protective sandbox for database transactions.

this gem is based on the magic of `ActiveRecord::Base#transaction`.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rails_sandbox'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rails_sandbox

## Usage Example

in your model:

```ruby
# app/models/my_model.rb

require 'rails_sandbox'

class MyModel
  def json_with_updated_attributes(params)
    # the json result with updated attributes will be returned while the actual
	# record keeps unchanged
    ActiveRecord::Base.sandbox do
	  self.update_attributes(params)
	  self.to_json
	end
  end

end
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/rails_sandbox/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
