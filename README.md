# Wed Jan 22nd To Do:

## Index & Show Routes / Models / URL helpers

* Make a Migration for a Shoe model
  - attributes: brand, color, price, condition
  - 001_create_shoes.rb
* Make a model file - inherits from ActiveRecord::Base
* Add a model method
  - #name_and_color
* Make and Index Route
* Make a Show Route
* Add links to go from the index to the show route
* Add links to a layout page
* Add a custom route that shows the most expensive shoe
* Create a form for making new shoes using form_tag


# Thurs Jan 23:

## CRUD

```
<h1>Create a New Shoe here:</h1>

<form action="/shoes" method="post">
  <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">
  <label>Brand:</label>
  <input type="text" name="shoes[brand]">

  <input type="submit" value="Create Shoe">
</form>

<br>
<hr>
# Searches, forms not related to a model (:url)
<%= form_tag("/shoes") do %>
  <%= label_tag(:brand) %>
  <%= text_field_tag :'shoes[brand]' %>
  <%= submit_tag "Create Shoe" %>
<% end %>

<br>
<hr>
# creating or updating of models
<%= form_for(@shoe) do |f| %>
  <%= f.label :brand %>
  <%= f.text_field :brand %>
  <%= f.submit %>
<% end %>

<br>
<hr>

<%= form_with(model: @shoe, class: 'new_shoe') do |f| %>
  <%= f.label :brand %>
  <%= f.text_field :brand %>
  <%= f.submit %>
<% end %>

```

# Tues Jan 28:

## Validations

This [guide](https://guides.rubyonrails.org/active_record_validations.html) is all you need.

# Wed Jan 29:

## Associations & Nested Forms

- Setting up Associations (models & migrations)
- Basic Nested Form using [Accepts Nested Attributes](https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html)
- Nested Form using a custom attribute writer

# Thurs Jan 30:

## Refactoring

- Using Partials
- Partials w/ locals
- Scope methods

# Tues Feb 4:

## Nested Routes

- Check out this [guide](https://guides.rubyonrails.org/routing.html#nested-resources)
- When to use Nested Routes
- Shallow Routing
- Implementing Nested Routes (index & New)