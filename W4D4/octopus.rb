def longest(arr)
    longest = ""
    arr.each_with_index do |ele, i|
        arr.each_with_index do |el, j|
            if ele.length > el.length 
                longest = ele  
            end 
        end
    end
    longest
end

def longest_n(arr)
    return quick_sort(arr)[-1]
end 

def quick_sort(arr)
    return arr if arr.length <= 1
    pivot = arr[0].length 
    left = arr[1..-1].select{|ele| ele.length < pivot}
    right = arr[1..-1].select{|ele| ele.length > pivot}
    sorted = quick_sort(left) + [pivot] + quick_sort(right)
end 

def long(arr)
    max_length_index = 0
    # longest = ""
    arr.each_with_index do |ele, i|
        if ele.length > arr[max_length_index].length
            max_length_index = i
        end
    end
    arr[max_length_index]
end
# p long(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])

def slow_dance(dir, arr)
    arr.each_with_index do |ele, i|
        if ele == dir
            return i  
        end
    end
end

def fast_dace(dir, new_ds)
    return new_ds[dir]
end

def hash(arr)
    hash = {}
    arr.each_with_index do |ele, i|
        hash[ele] = i
    end
    hash
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
new_ds = hash(tiles_array)
p fast_dace("up", new_ds)