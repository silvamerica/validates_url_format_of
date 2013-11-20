# validates\_url\_format\_of

[![Build Status](https://travis-ci.org/conickal/validates_url_format_of.png?branch=master)](https://travis-ci.org/conickal/validates_url_format_of)

Rails plugin that provides a `validates_url_format_of` method to `ActiveRecord` models. URLs are validated by regexp.

## Usage
After installing the plugin, it's used like

    class User < ActiveRecord::Base
      validates_url_format_of :url,
                              :allow_nil => true,
                              :message => 'is completely unacceptable'
    end

Takes the same arguments as [`validates_format_of`](http://ar.rubyonrails.org/classes/ActiveRecord/Validations/ClassMethods.html#M000087) except for the `:with` regexp.

The default `:message` is different depending on whether the attribute name contains the word "URL". So you will get "Homepage URL does not appear to be valid" but "Homepage does not appear to be a valid URL" without having to customize the `:message`.

Please note that the regexp used to validate URLs is not perfect, but hopefully good enough. See the test suite. Patches are very welcome.

## Limitations and design choices
Does not handle IPv6.

By design, the plugin does not allow e.g. "http://localhost" or "http://my.localurl", which are valid URLs but not suitable in most web apps. It also requires a "http://" or "https://" prefix, so just "example.com" is not valid. Fix that in the setter.
