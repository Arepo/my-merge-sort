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

		it 'given an empty array and a single-element array appends the element to self' do
			expect([1].merge([], [2])).to eq [1, 2]
		end

		it 'given [2] and [3] appends first 2 then 3 to self' do
			arr1 = [1]
			arr2 = [2]
			arr3 = [3]
			expect(arr1).to receive(:push).with(2).ordered
			expect(arr1).to receive(:push).with(3).ordered
			arr1.merge(arr2, arr3)
		end

		it 'given [3] and [2] appends first 2 then 3 to self' do
			arr1 = [1]
			arr2 = [2]
			arr3 = [3]
			expect(arr1).to receive(:push).with(2).ordered
			expect(arr1).to receive(:push).with(3).ordered
			arr1.merge(arr3, arr2)
		end

	end

end