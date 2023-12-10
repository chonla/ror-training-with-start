# Rails

Convention over Configuration

## Create app with default options

```
rails new geeky
```

## with Postgresql

```
rails new geeky --database=postgresql
```

## only API

```
rails new geeky --api
```

## Start server

```
bundle exec rails server
```

## Create database

```
bundle exec rails db:create
```

## Drop database

```
bundle exec rails db:createdrop
```

## Migrate database from db/seeds.rb

```
bundle exec rails db:migrate
```

# Creating model

```
bundle exec rails generate model writer name:string age:integer
bundle exec rails g model writer name:string age:integer
# then migrate
bundle exec rails db:migrate
```

### !!

```
ENV["RAILS_ENV] ||= "test"
```

ENV["RAILS_ENV] จะเท่ากับ test เมื่อ ENV["RAILS_ENV] ไม่มีของ

## Execute tests

```
bundle exec rails test
```

## Open rails console

```
bundle exec rails console
bundle exec rails c
```

## Create object in rails

```
Writer.count # 0
# create a new writer
writer = Writer.new(name: "John", age: 20)
# check if object persisted?
writer.persisted? # false
# save
writer.save
writer.persisted? # true
```

## Update object in rails

```
writer.name = "Jack"
writer.save
```

## Create scaffold post

```
bundle exec rails g scaffold post title:string body:text writer:references
```

## Server

- Phusion Passenger
- Rails Development Server is also production grade


## Fake data

- Faker

## Data relation

### many to many

- has_and_belongs_to_many is mostly unused and discouraged
- use relation table instead
- posts -> post_tags -> tags
- tags -> post_tags -> posts

```
bundle exec rails g model tag name:string
bundle exec rails g model post_tag tag:references post:references
```

### SQL example

```
Post.joins(:tags).group("tags.name").count
```

### Reset counter of Writer

```
Writer.reset_counters(id, :posts_count) -> to reset counters for given id
```

## compile things to public

```
bundle exec rails assets:precompile
```

## Debug rails

insert the following line to rails script whereever you want to create a debugging point

```
binding.irb
```

## Rails assets

sprockets-rails --> rails asset pipeline

```
config/manifest.js
```

sprocket will generate asset file with digested name

### link_tree

sprocket will get assets structure as it is, with digest file names.

### link_directory

sprocket will read everything inside directory and merge them as a single file

```
<%= image_tag "simple.png" %>
// or
<img src="<%= asset_path "simple.png %>">
<img src="<%= image_path "simple.png %>">
<img src="<%= image_url "simple.png %>">
```

## change asset host

edit `envionments/<env>.rb`

```
config.assets_host = '...'
```

## in css

```scss
.sample {
    background-image: url('simple.png'); // <-- rail will update this to hashed file name for you
}
```

## change view layout

```rb
class  AdminController < ApplicationController
    layout "admin"

    def index
    end
end
```

```rb
class  AdminController < ApplicationController
    before_action :set_layout

    def index
    end

    private
    def set_layout
        layout "admin"
    end
end
```

## Group route with namespace

```rb
namespace :admin do
    resource :samples, only: [:index]
end
```

## Handling session in multiple instance server

See: https://guides.rubyonrails.org/v3.1/configuring.html

environments/production.rb

```rb
config.session_store = ...
```


## Yield in html.erb

```
<%= yield :test %> <-- yield with content_for (see below code block)
<%= yield %> <-- normal yield
```

```
<% content_for :test do %>
<%= @post.title %>
<% end %>
```

## Pagination

See https://github.com/kaminari/kaminari

```
bundle add kaminari
```

### Custom pagination view

```
rails g kaminari:views default --views-prefix posts
```

rails will generate kaminari view for customization

## Faker

add this into development

```
bundle add faker --group development
```

## Using package in irb

```
require "faker"
Faker....
```

## Turbo Drive

Replace <body> with new body fragment. See LinkInterceptor, FormInterceptor in turbo rails package.

### Turn of turbo drive

```js
// in application.js
Turbo.session.drive = false
```

###

Turbo Drive --> Auto update body
Turbo Frame --> Auto update div
Turbo Stream --> Rendering Turbo Frame
Turbo Native --> Utilizing Turbo Drive, Frame, Stream in native android, ios
-----------
Stimulus

## Turbo Frame

```html
<turbo-frame>
</turbo-frame>
```

```rb
<%= turbo_frame_tag @todo do %>
<% end %>
```

## Using npm packages in rails

Use importmap

### Example

Original in toastify

```
yarn add toastify-js -S
```

Use in rail

```
bin/importmap pin toastify-js
```

it will be pinned to importmap.rb


## Enable/Disable cache in rail development mode

```
bundle exec rails dev:cache
```

## ActiveJob

Communicate with other tasks with Queue, using sidekiq.

```
bundle add sidekiq
```

### Create job

```
bundle exec rails g job CountViews --queue low
```

#### Example

```
bundle exec rails g model post_view post:references
```

## Mocking HTTP

https://github.com/jnunemaker/httparty

```
bundle add httparty
```

## Create route with name space

```
bundle exec rails g controller api/v1/posts create
```

## Show rails stat

Code coverage

```
bundle exec rails stats
```