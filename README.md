# Serenade.js for Ruby on Rails

[Serenade.js] is a JavaScript client side MVC framework. This gem makes it
easy to use Serenade.js with the Ruby on Rails Asset Pipeline in Rails
3.1 and later.

Add it to the assets group in your Gemfile:

``` ruby
group :assets do
  gem 'serenade_rails'
end
```

You can now require Serenade in your `application.js` file, or wherever
you prefer:

``` javascript
//= require serenade
```

You can now use Serenade! See the [Serenade README][readme] for
examples.

## Views

You can also easily use views from the asset pipeline. Just use the extension
`.serenade` on your views, for example, place something like this in
`app/assets/javascripts/test.serenade`:

```
h1 "Hello world"
```

Now you can render this view:

``` javascript
document.appendChild(Serenade.render('test'));
```

Couldn't be simpler!

If the path to your view starts with `views`, that initial part is stripped
off, so you could have placed the above view in
`app/assets/javascripts/views/test.serenade` without changing the code.

## License

(The MIT License)

Copyright (c) 2012 Jonas Nicklas

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

[readme]: https://github.com/elabs/serenade.js/blob/master/README.md
[serenade.js]: https://github.com/elabs/serenade.js
