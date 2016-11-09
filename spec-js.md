# Specifications for the Rails with jQuery Assessment

Specs:
- [x] Use jQuery for implementing new requirements
- [x] Include a show resource rendered using jQuery and an Active Model Serialization JSON backend.
	- User can sift through features by clicking on the 'Next' button on a feature show page.
- [x] Include an index resource rendered using jQuery and an Active Model Serialization JSON backend.
	- The orders index page is rendered via jQuery and JSON on each feature show page.
- [x] Include at least one has_many relationship in information rendered via JSON and appended to the DOM.
	- The orders index page rendered on each feature show page shows a list of orders that belong to the feature, and the associated planets that have many orders.
- [x] Include at least one link that loads or updates a resource without reloading the page.
	- New feature form posts via AJAX and appends the response data directly to the features index page.
- [x] Translate JSON responses into js model objects.
	- JSON response from new feature form is translated into a Feature object.
- [x] At least one of the js model objects must have at least one method added by your code to the prototype.
	- Feature model object has the methods renderLi, success, and error called on the prototype.

Confirm
- [x] You have a large number of small Git commits
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
