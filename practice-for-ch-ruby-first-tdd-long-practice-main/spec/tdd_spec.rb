require 'tdd'
require 'rspec'

# describe Array do 
    describe "my_uniq" do 
        it "should accept an array as an argument" do 
            expect {my_uniq([1,2,3])}.to_not raise_error 
        end

        it "should return an array with unique elements" do
            expect(my_uniq([1,2,2,3])).to eq([1,2,3])
        end

        it "should return an array with unique elements in the order they orginally appear" do
            expect(my_uniq([1,2,1,2,3])).to eq([1,2,3])
        end 
    end

