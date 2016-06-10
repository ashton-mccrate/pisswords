require 'rspec'
require 'pissword'

describe Pissword do

	it "can create an array of strings from words in a dictionary file" do
		words = Pissword.read_words
		expect( words ).to be_a( Array )
		expect( words ).to all( be_a( String ) )
	end

end
