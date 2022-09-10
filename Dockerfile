FROM klakegg/hugo:ubuntu

WORKDIR /src

CMD ["server", "-D", "-p", "8088", "-b", "localhost"]
