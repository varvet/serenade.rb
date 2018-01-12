# PROJECT IS ARCHIVED, DO NOT USE

# Serenade.js for Ruby

[Serenade.js] is a JavaScript client side MVC framework. This gem makes Serenade.js
available for usage with [Sprockets], or the asset pipeline in Ruby on Rails version
3.1 or later.

[serenade.js]: https://github.com/elabs/serenade.js
[sprockets]: http://rubygems.org/gems/sprockets

## Installation

To use Serenade with Rails, add Serenade to the assets group in your Gemfile:

``` ruby
group :assets do
  gem "serenade", :require => "serenade/rails"
end
```

You can now require Serenade in your `app/assets/javascripts/application.js` file:

``` javascript
//= require serenade
```

Serenade should now be loaded and ready. See the [Serenade README] for examples.

[Serenade README]: https://github.com/elabs/serenade.js/blob/master/README.md

### Using Serenade with Sprockets

If you are not using Rails, you can still use Serenade with just Sprockets:

``` ruby
gem "serenade", :require => "serenade/sprockets"
```

You’ll also need to register the Serenade asset path with your Sprockets environment.

``` ruby
sprockets.append_path Serenade::ASSET_PATH
```

## Serenade.js views and the asset pipeline

Serenade.js allows Sprockets or the Rails asset pipeline to compile your Serenade
views for you, just use the extension `.serenade` on any asset file.  Your views
will be precompiled server-side before being served to the client.

For example, if you create the following view in `app/assets/javascripts/test.serenade`:

``` serenade
h1 "Hello " @name
```

Now you can render this view:

``` javascript
var model = new Serenade.Model({ name: "Vega" })
document.body.appendChild(Serenade.render('test', model));
```

And, like in all Serenade.js views, you can change your model and see the DOM
update itself accordingly:

``` javascript
model.name = "Mercedes" // HTML now says <h1>Hello Mercedes</h1>
```

### A note about the view path

If the path to your view starts with `views`, that initial part is stripped off,
so you could have placed the above view in `app/assets/javascripts/views/test.serenade`
without changing the code.

## License

(The MIT License)

Copyright (c) 2012 Jonas Nicklas, Kim Burgestrand

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
