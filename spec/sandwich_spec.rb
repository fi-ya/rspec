Sandwich = Struct.new(:taste, :toppings)
RSpec.describe 'An ideal sandwich' do
    
    it 'is delcious' do
        # Arrange/Setup - an object to do something with it
        sandwich = Sandwich.new('delicous', [])
        # Act/Exercise - run/call the system(class/object/method) under test (SUT/CUT/OUT/MUT)
        taste = sandwich.taste
        # Assert/Verify - check it behaved the way you wanted 
        expect(taste).to eq('delicous')
        #Annialte/Teardown - feature for next test
    end

    it 'lets me add toppings' do
        sandwich = Sandwich.new('delicious', [])
        sandwich.toppings << 'cheese'
        toppings = sandwich.toppings
        # negate expecatation ie. check for a falsehood using `not_to`
        expect(toppings).not_to be_empty
    end
end