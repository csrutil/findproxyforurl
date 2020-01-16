# FindProxyForURL

### 🤔Why
I am a SwitchyOmega addict, so I need to setup lots of the proxy clauses. it's kind of mess. So I create the project, 
it will create the proxy automatically.


### 📍Where is it
I ship it to the heroku, you can check the code base by yourself


### How to run the project

```ruby
$ git clone https://github.com/csrutil/findproxyforurl
$ bundle install
$ bundle exec rackup config.ru -p 8080
```

### How do I use it

Assume your SOCKS5 proxy run on host 10.0.50.185 port 7891, you can create a Profile and just put the link into the input area. then click the Download button

```js
https://findproxyforurl.herokuapp.com?host=10.0.50.185&port=7891
```

![Screen Shot 2020-01-16 at 10.49.59 PM.png](https://i.loli.net/2020/01/16/7RsB6NmuUAM1ZdP.png)

```
MIT License

Copyright (c) 2020 csrutil

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
