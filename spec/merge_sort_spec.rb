require 'merge_sort'

describe 'merge sort' do 

	let(:unsorted){ [4,6,2,1,9,3,5,8,7]}

	it 'returns an unchanged array if it has 0 elements' do
		expect([].merge_sort).to eq []
	end

	it 'returns an unchanged array if it has 1 element' do
		expect([1].merge_sort).to eq [1]
	end

	it 'returns [1,2] when called on [2,1]' do
		expect([2,1].merge_sort).to eq [1,2]
	end

	it 'returns [1,2,3,4,5,6,7,8,9] when called on unsorted array above' do
		expect(unsorted.merge_sort).to eq [1,2,3,4,5,6,7,8,9]
	end

	describe 'merge' do

		it 'given two single-element arrays returns a single array with the two elements sorted' do
			expect(merge([2], [1])).to eq [1, 2]
		end

		it 'given an empty array and a sorted array returns the sorted array unchanged' do
			expect(merge([], [2, 4, 8])).to eq [2, 4, 8]
		end

		it 'given two multi-element sorted arrays, returns an array with all the elements sorted' do
			expect(merge([2,5,9], [1,4,9])).to eq [1,2,4,5,9,9]
		end

	end

end