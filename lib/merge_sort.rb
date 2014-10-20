require 'byebug'

class Array

	def merge_sort
		length = self.length
		return self if length < 2
		first_half = self[0, length/2].merge_sort
		second_half = self[(length/2)...length].merge_sort
		merge first_half, second_half
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