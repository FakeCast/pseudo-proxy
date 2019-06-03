#Pseudo-Proxy

When I was developing my first React application, I faced a problem where I cannot make requests to some API's because of  a ```cors error```.

It happened because when you are developing front-end applications, your application should be in the same domain name of your API.

To solve this problem, I developed a small applications that work as a "proxy" sending requests to any API in any domain and encapsulating the response as a local domain.

## Endpoints
```get '/http_address'```

	send a request to the using the method get http_address including parameters and headers.

```post '/http_address'```

	send a request with the post method to the http address including parameters and headers

## How to run (Using docker-compose)
```
git clone https://github.com/FakeCast/pseudo-proxy
cd pseudo-proxy
docker-compose build
docker-compose up
```

You must add a entry to your /etc/hosts pointing localhost:4567 to the ip-address of the container

## How to run
```
git clone https://github.com/FakeCast/pseudo-proxy
bundle
ruby server
```
