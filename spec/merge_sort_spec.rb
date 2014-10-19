require 'merge_sort'

describe 'merge sort' do 

	let(:unsorted){ [4,6,2,1,9,3,5,7]}

	it 'is an array method' do
		expect(unsorted).to respond_to(:merge_sort)
	end

	it 'returns an unchanged array if it has 0 elements' do
		expect([].merge_sort).to eq []
	end

	it 'returns an unchanged array if it has 1 element' do
		expect([1].merge_sort).to eq [1]
	end

	xit 'returns a sorted array from a 2-element array' do
		expect([2,1].merge_sort).to eq [1,2]
	end

	describe 'merge' do

		it 'given two single-element arrays returns a single array with the two elements sorted' do
			expect(merge([2], [1])).to eq [1, 2]
		end



	end

end