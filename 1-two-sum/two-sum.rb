# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    indexes = []
    ## traditional approach with O(n^2)
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

    ## O(n)
#     nums.each_with_index do |num_1, index_1|
#         num_2 = target - num_1
#         index_2 = nums.index(num_2)
#         indexes.push(index_1, index_2) if !index_2.nil? && (index_2 >= 0) && (index_1 != index_2)
#         break if indexes.size.eql?(2)
#     end
#   indexes

     hash = {}
    nums.each_with_index do |number, index|
        if hash[target - number]
            return [hash[target - number], index]
        else
            hash[number] = index
        end
    end

end