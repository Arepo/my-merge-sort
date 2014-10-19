require 'byebug'

class Array

	def merge_sort
		return self if self.length < 2

	end

end

def merge(sorted_arr1, sorted_arr2)
	output_length = sorted_arr1.length + sorted_arr2.length
	counterA = 0
	counterB = 0
	output = []
	output_length.times do
		if sorted_arr1[counterA] && sorted_arr2[counterB]
			if sorted_arr1[counterA] < sorted_arr2[counterB]
				output << sorted_arr1[counterA]
				counterA += 1
			else
				output << sorted_arr2[counterB]
				counterB += 1
			end
		elsif sorted_arr1[counterA]
			output << sorted_arr1[counterA]
			counterA += 1
		else
			output << sorted_arr2[counterB]
			counterB += 1
		end
	end
	output
end