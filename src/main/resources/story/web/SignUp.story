Description: Simple story to open trello;

Scenario: Open trello and chack the main page
Given I am on the main application page
Then the page title is equal to 'Trello'

Scenario: Open Sing up page
When I click on an element by the xpath '//a[text()="Sign up"]'
Then the page with the URL containing 'signup' is loaded

Scenario: Enter email
When I enter 'galya.annovna@gmail.com' in a field by the xpath '//*[@id="email"]'
When I click on an element by the xpath '//*[@id="signup-submit"]'
Then The element with the xpath '//h5[text()="Sign up for your account"]' exists

Scenario: Enter the first and last name
When I enter '1234567890' in a field by the xpath '//*[@id="password"]'
When I enter 'Olenka' in a field by the xpath '//*[@id="displayName"]'
When I click on an element by the xpath '//*[@id="signup-submit"]'
When I enter '1234567890' in a field by the xpath '//*[@id="password"]'
When I click on an element by the xpath '//*[@id="signup-submit"]'
Then The element with the xpath '//*[@id="rc-imageselect"]' exists
