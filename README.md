#Our Favorite Songs
Our Favorite Songs allows users to keep track of their favorite songs and artists. It is my first app using ActiveAdmin and is intended to explore customizing ActiveAdmin.

##Setup
In your terminal, clone this repo:

```console
$ git clone https://github.com/moofmayeda/our-favorite-songs.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install [ImageMagick](http://www.imagemagick.org) for photo uploads via [Homebrew](http://brew.sh):

```console
$ brew install imagemagick
```

Install gems:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:migrate
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.

##Author
[moof mayeda](https://github.com/moofmayeda)

##License
MIT