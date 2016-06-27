# -*- ruby -*-
#encoding: utf-8

module Pissword

	### The name of the file which holds the dictionary
	DEFAULT_DICTIONARY_FILE_NAME = 'dictionary.txt'

	###############
	module_function
	###############


	### Return the file that has the dictionary of words
	def dictionary_file
		return Pathname( __FILE__ ).dirname + DEFAULT_DICTIONARY_FILE_NAME
	end


	### Return the list of words to choose from. If there isn't one, read the
	### words from the dictionary file
	def word_list
		return @word_list ||= read_words
	end


	### Read the words from the dictionary_file and return them as strings
	### in an array
	def read_words
		words = []

		self.dictionary_file.open( 'r' ) do |io|
			lines = io.readlines.
				map( &:strip ).
				reject {|line| line.empty? || line.start_with?('#') }
			words.replace( lines )
		end

		return words
	end


	### Encode the +secrets+ you don't want people to know about.
	### Returns the secrets hashed in to dirty words.
	def encode( secrets )
		return secrets.bytes.map{|byte| word_list[byte] }.join( ' ' )
	end


	### Decode the given +pisswords+ to return the original secret
	def decode( pisswords )
		bytes = pisswords.split( ' ' ).map{|word| word_list.index( word )}
		return bytes.pack( 'C*' )
	end

end
