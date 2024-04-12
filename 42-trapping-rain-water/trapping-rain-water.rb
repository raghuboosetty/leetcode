# @param {Integer[]} height
# @return {Integer}
def trap(height)
    left_max = []; right_max = []
    height.each_index do |index|
        if index.zero?
            left_max.push(height[index])
            right_max.push(height[-index-1])
        else
            left_max.push([left_max[index-1], height[index]].max)
            right_max.unshift([right_max[-index], height[-index-1]].max)
        end
    end
    water_trapped = 0
    height.each_index do |index|
        water_trapped += ([left_max[index], right_max[index]].min - height[index])
    end
    water_trapped
end