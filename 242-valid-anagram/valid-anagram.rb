# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    # Navie approach - O(n^n)
    # return false if s.size != t.size
    # s = s.chars
    # t = t.chars
    # s.each do |c| 
    #     index = t.index(c)
    #     index ? t.delete_at(index) : break
    # end
    # t.size.zero?

    # better approach - O(n^2)
    # s.chars.sort.join == t.chars.sort.join

    # another approach from solutions not sure if it's O(n)
    s.chars.tally == t.chars.tally
end