# @param {String} s
# @return {String}
def reverse_words(s)
    # Solution #1 - Using Ruby default methods
    # s.split.reverse.join(" ")
    
    # Solution #2 - Advanced
    s.split.inject { |string, word| "#{word} #{string}"}
    

    # Solution #3 - Novice
    # reversed_string_arr = []
    # input_array = s.split
    # input_array.each_with_index do |word, index|
    #     reversed_string_arr[input_array.size - (index+1)] = word
    # end
    #  reversed_string_arr.join(" ")
end