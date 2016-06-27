require 'rspec'
require 'pissword'

describe Pissword do

	it "can create an array of strings from words in a dictionary file" do
		words = Pissword.read_words
		expect( words ).to be_a( Array )
		expect( words ).to all( be_a( String ) )
	end


	describe "encoding and decoding" do

		let( :secret ) { "I hate the way your butt looks in those shorts." }


		it "can encode your secrets" do
			encoded = Pissword.encode( secret )
			expect( encoded ).to be_a( String )
			expect( encoded ).to_not eq( secret )
		end


		it "can decode your pisswords" do
			encoded = Pissword.encode( secret )
			expect( Pissword.decode( encoded) ).to eq( secret )
		end
	end

end
