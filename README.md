#Our Favorite Songs
Our Favorite Songs allows users to keep track of their favorite songs and artists. It is my first app using ActiveAdmin and is intended to explore customizing ActiveAdmin. The administration portal allows administrators basic CRUD functionality as well as the ability to charge users via the Stripe API and keep track of people via the Pipeline Deals API.

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

Add your secret [Stripe](https://dashboard.stripe.com/account/apikeys) and [Pipeline](https://www.pipelinedeals.com/admin/api) keys to a .env file in the project's root folder:

```ruby
STRIPE_PUBLISHABLE_KEY=keygoeshere
STRIPE_SECRET_KEY=keygoeshere
PIPELINE_KEY=keygoeshere
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000/admin`.

##Author
[moof mayeda](https://github.com/moofmayeda)

##License
MIT