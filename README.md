# ZestConstants

A constant silo to keep the definition of constants in one place.

## Installation

Add this line to your application's Gemfile:

    gem 'zest_constants'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zest_constants

## Usage

    $ bundle console

    > require 'zest_constants'
    > ZestConstants::FOO
    => "bar"

In separate repos, replace references to hard coded values with reference to
the same gem constant, which can be more self documenting.

    if object.current_status == "foo"
      head :ok
    elsif object.current_status == "bar"
      head :not_found
    end

Becomes:

    if object.current_status == ZestConstants::FOO
      head :ok
    elsif object.current_status == ZestConstants::BAR
      head :not_found
    end


## Contributing

1. Fork it ( http://github.com/<my-github-username>/zest_constants/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
