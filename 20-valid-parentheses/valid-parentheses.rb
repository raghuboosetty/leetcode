# @param {String} s
# @return {Boolean}
def is_valid(s)
    brackets = []
    params = { '{' => '}', '(' => ')', '[' => ']'}
    last_open_bracket = nil
    s.chars.each do |p|
        if params.keys.include?(p)
            last_open_bracket = p
            brackets.push(p)
        end
        if params.values.include?(p)
            if params[last_open_bracket].eql?(p)
                 brackets.pop
                 last_open_bracket = brackets.last
            else
                return false
            end
        end
    end
    brackets.empty?
end