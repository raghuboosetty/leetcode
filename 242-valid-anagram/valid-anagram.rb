# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    # return false if s.size != t.size
    # s = s.chars
    # t = t.chars
    # s.each do |c| 
    #     index = t.index(c)
    #     index ? t.delete_at(index) : break
    # end
    # t.size.zero?

    s.chars.sort.join == t.chars.sort.join
end