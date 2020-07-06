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

Assume that your SOCKS5 proxy run on host 10.0.50.185 port 7891, you can create a Profile and just put the link into the input area. then click the Download button

```js
https://findproxyforurl.herokuapp.com?SOCKS5[]=10.0.50.185:7891
```

### Credits

https://github.com/codexss/auto-pac
https://developer.mozilla.org/zh-CN/docs/Web/HTTP/Proxy_servers_and_tunneling/Proxy_Auto-Configuration_(PAC)_file#dateRange

MIT License

Copyright (c) 2020 csrutil
