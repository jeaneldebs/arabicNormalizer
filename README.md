# ArabicNormalizer

ArabicNormalizer is pure Ruby port of Arabic Normalizer from Lucene.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'arabicNormalizer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install arabicNormalizer

## Usage
```
require 'arabicNormalizer'

ArabicNormalizer::normalize("مكتبٌ")
=> "مكتب"
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

