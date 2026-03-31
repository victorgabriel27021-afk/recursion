def merge_sort(arr)
	return arr if arr.length <= 1

	mid = arr.length / 2
	left = merge_sort(arr[0...mid])
	right = merge_sort(arr[mid..])

	merge(left, right)
end
def merge(left, right)
	result = []

	until left.empty? || right.empty?
		if left.first <= right.first
			result << left.shift
		else
			result << right.shift
		end
	end
	result + left + right
end

p merge_sort([3, 2, 1, 13, 8, 5, 0,1])