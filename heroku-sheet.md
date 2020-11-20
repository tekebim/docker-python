# Start with Heroku

## Step 1 : Install heroku
> https://devcenter.heroku.com/articles/heroku-cli#getting-started

## Step 2 : Login with heroku
```heroku login```

## Step 3: Create Heroku app
Now you’re ready to create your first Heroku app:

```
cd ~/app
heroku create
```

# Build docker images with Heroku
### Step 4 : create heroku.yml
```
build:
  docker:
    web: Dockerfile
run:
  web: bundle exec puma -C config/puma.rb
```
### Step 5 : commit the file
```
git add heroku.yml
git commit -m "Add heroku.yml"
```
### Step 6 : Set the stack of your app to `container:`
```
heroku stack:set container
```

### Step 7 : Push your app to Heroku
```
git push heroku master
```

Getting started
Make sure you have a working Docker installation (eg. docker ps) and that you’re logged in to Heroku (heroku login).

Log in to Container Registry:

`heroku container:login`

```heroku create
Creating salty-fortress-4191... done, stack is heroku-18
https://salty-fortress-4191.herokuapp.com/ | https://git.heroku.com/salty-fortress-4191.git
Build the image and push to Container Registry:
```
```
heroku container:push web
```
Then release the image to your app:

```heroku container:release web```
Now open the app in your browser:

```heroku open```
