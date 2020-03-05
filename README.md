HelloWorld

# CohortCLI

Welcome to the Breakbad Gem! This gem allows you to run an interactive prompt after entering `bin/CohortCLI`.
The gem will ask you for the character's first and last name to search it up in the database of the Breaking Bad TV Show. It will then store the information that it has been told to grab and the the name in a list with index numbers in front. If you would like to learn more about a character simply type out the index number infront of the character name that you have requested. After viewing the information it would ask whether you would like to comment on the character, and base on the response that you enter y/n, yes/no, it will ask you to type out your comment. It will store that comment and return to the list of names, the next time that you call up that same character again it will present the comment information. If at anytime you would like to leave the interface simply  type quit. 


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'CohortCLI'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install CohortCLI

## Usage

If you would like to learn about a certain character, enter the first and last name of the character. Select it from the list that will proc and there you will see the information. If you would like to comment on the character, simply add a comment and the next time you return to the list and you select the character, the comment will pop up as additional information.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'breezy-file-4838'/CohortCLI. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the CohortCLI project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'breezy-file-4838'/CohortCLI/blob/master/CODE_OF_CONDUCT.md).
