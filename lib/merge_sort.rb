require 'byebug'

class Array

	def merge_sort
		return self if self.length < 2

	end

end

def merge(sorted_arr1, sorted_arr2)
	output = []
	while sorted_arr1.length > 0 && sorted_arr2.length > 0
		if sorted_arr1.first < sorted_arr2.first
			output << sorted_arr1.first
			sorted_arr1.shift
		else
			output << sorted_arr2.first
			sorted_arr2.shift
		end
	end
	output + sorted_arr1 + sorted_arr2
end