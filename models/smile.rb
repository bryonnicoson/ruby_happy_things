class Smile

	#constructor
	def initialize
		@smiles = Array.new
	end

	def add_smile(txt)
		@smiles.push(txt)
	end

	def find_smile(txt)
		results = search_list(@smiles, txt)
		bubble_sort(results)
	end

	def get_smiles
		@smiles
	end

	def to_s
		'happy thoughts'
	end

	private
	#everything from here on is private

	def bubble_sort(arr)
		length = arr.size

		loop do
			swapped = false
			(length -1).times do |i|
				if arr[i] > arr[i+1]
					arr[i], arr[i+1] = arr[i+1], arr[i]
					swapped = true
				end
			end
			break if not swapped
		end
		#return sorted array
		arr
	end

	def search_list(arr, query)
		length = arr.size
		dataset = Array.new

		arr.each do |item|
			if item.include? query
				dataset.push(item)
			end
		end
		dataset
	end
end

