require 'tdd'
require 'rspec'

# describe Array do 
    describe "#my_uniq" do 
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

describe Array do
    describe "#two_sum" do
        
        let(:pair_arr) {[-1, 0, 2, -2, 1]}
        let(:pairless) {[5, 4, 3, 2, 1]}
        let(:two_zero) {[-1, 5, 0, 3, 0, -3]}

        context "when array is empty or has no pairs that don't sum to zero" do 
            it "should return an empty array" do 
                expect([].two_sum).to eq([])
                expect(pairless.two_sum).to eq([])
            end
        end

        it "should return a nested array that contains all pairs that sum to zero" do
            expect(pair_arr.two_sum).to eq([[0,4], [2,3]])
            expect(two_zero.two_sum).to eq([[2,4], [3,5]])
        end

    end
end

