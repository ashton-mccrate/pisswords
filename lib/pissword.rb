# -*- ruby -*-
#encoding: utf-8

module Pissword

	DEFAULT_DICTIONARY_FILE_NAME = 'dictionary.txt'


	###############
	module_function
	###############


	### Return the file that has the dictionary of words
	def dictionary_file
		return Pathname( __FILE__ ).dirname + DEFAULT_DICTIONARY_FILE_NAME
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

end
