# EnumerableObserver

Observe changes in enumerable objects in ruby and run callbacks when items are
added or removed.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'enumerable_observer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install enumerable_observer

## Usage

Use as a module 

```ruby
class MyClass
    include EnumerableObserver
    
    def initialize
        @my_array = []
        observer = observe(@my_array)
        
        observer.added do |items|
            puts "items added: #{items}" 
        end
        
        observer.removed do |items
            puts "items removed: #{items}"
        end
    end
end
```

...or directly

```ruby
class MyClass    
    def initialize
        @my_array = []
        observer = EnumerableObserver.observe(@my_array)
        
        observer.added do |items|
            puts "items added: #{items}" 
        end
        
        observer.removed do |items
            puts "items removed: #{items}"
        end
    end
end
```

...or by extending, and in one line.

```ruby
@my_array.extend(EnumerableObserver).observe.added { |items| puts "items added: #{items}" }.removed { |items| puts "items removed: #{items}" }
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/enumerable_observer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

