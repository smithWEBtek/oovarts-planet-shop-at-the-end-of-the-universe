# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Recipes)
			- User has_many planets, Planet has_many orders, Feature has_many orders
- [x] Include at least one belongs_to relationship (x belongs_to y e.g. Post belongs_to User)
			- Planet belongs_to user, Order belongs_to planet, Order belongs_to feature
- [x] Include at least one has_many through relationship (x has_many y through z e.g. Recipe has_many Items through Ingredients)
			- Planet has_many features through orders, Feature has_many planets through orders
- [x] The "through" part of the has_many through includes at least one user submittable attribute (attribute_name e.g. ingredients.quantity)
			- User submits size attribute on each order
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
			- Feature: must have name, description must not be more than 1000 letters
			- Order: user must submit a size request
			- Planet: must have a name that's between 3-20 letters, maximum number of moons is 8, maximum population is 8000000(times 1000)
			- User: must have a name that is unique, and an email

- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
			- Planet.most_populated returns the planet with the highest population
			- Planet.most_moons returns the planet with the most moons
			- Planet.most_expensive returns the planet with the highest price
- [x] Include a nested form writing to an associated model using a custom attribute writer (form URL, model name e.g. /recipe/new, Item)

- [ ] Include signup (how e.g. Devise)
- [ ] Include login (how e.g. Devise)
- [ ] Include logout (how e.g. Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)

- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate
