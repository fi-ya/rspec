# RSpec syntax

## Spec setup 

`specs` - short for *specifications*. They specify the desired behaviour of your code. 

`RSpec.describe` - creates an example group (set of related tests) that defines what it is that you are testing, i.e Class. The block(do/end) keeps related specs together.

`it` or `spec` - creates an example of specs use (individual test case), on one particular slice of behaviour being tested.

Test vs Spec vs Example
- Test - validates that a bit of code is working properly. 
- Spec - describes the desired behaviour of a bit of code.
- Example - shows how a particular API is intended to be used. 

`expect` - verifies an expected outcome (assertion)

## Sharing setup code 
To ensure DRY specs you can share common setup across several examples. 

- *hooks*: run automatically at specific times during testing
  - `before` hooks: will run automatically before each example. You can have instance variables declared in a block
  ```ruby
   before { @sandwich = Sandwich.new('delicious', [])}
  ```
- *helper methods*: regular Ruby methods which you can control when to run
- *`let`*: initializes data on demand

## RSpec Expectations

`to` - check for truthy
`not_to` - negate an expectation, check for falsehood

`be_empty` - test if Array or Hash is empty