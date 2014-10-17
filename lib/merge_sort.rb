class Array

	def merge_sort
		return self if self.length < 2

	end

	def merge(arr1, arr2)
		first_of_first = arr1.first
		first_of_second = arr2.first
		if !first_of_first
			self.push first_of_second
		elsif !first_of_second
			self.push first_of_first
		elsif first_of_first < first_of_second
			self.push first_of_first
			self.push first_of_second
		else
			self.push first_of_second
			self.push first_of_first
		end
	end

	# def merge_terminal(arr)

end