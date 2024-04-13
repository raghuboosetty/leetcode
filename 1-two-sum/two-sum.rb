# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    indexes = []
    # nums.each_with_index do |num_1, index_1|
    #     nums.each_with_index do |num_2, index_2|
    #         next if index_1.eql?(index_2)
    #         if (num_1 + num_2).eql?(target)
    #             indexes.push(index_1)
    #             indexes.push(index_2)
    #         end
    #     end
    #     break if indexes.size.eql?(2)
    # end
    # indexes
    nums.each_with_index do |num_1, index_1|
    # if num_1 <= target
      num_2 = target - num_1
      index_2 = nums.index(num_2)
      if !index_2.nil? && (index_2 >= 0) && (index_1 != index_2)
        indexes.push(index_1)
        # index_1 < index_2 ? indexes.push(index_2) : indexes.unshift(index_2)
        indexes.push(index_2)
      end
    # end
    break if indexes.size.eql?(2)
  end
  indexes
end