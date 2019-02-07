def size_splitter(array, size)
  # TODO: Return an array of two arrays, the first containing
  first_array = array.select do |word|
    word.length == size
  end

  second_array = array.reject do |word|
    word.length == size
  end

  return [first_array.sort, second_array.sort]
end

def block_splitter(array)
  first_array = array.select do |name|
    yield(name)
  end

  second_array = array.reject do |name|
    yield(name)
  end

  return [first_array.sort, second_array.sort]
end

