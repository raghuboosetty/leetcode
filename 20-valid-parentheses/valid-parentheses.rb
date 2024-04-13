# @param {String} s
# @return {Boolean}
def is_valid(s)
    arr = []
    params = { '{' => '}', '(' => ')', '[' => ']'}
    last_param = nil
    s.split('').each do |p|
        if ['{', '(', '['].include?(p)
            arr.push(p) 
            last_param = p
        end
        if ['}', ')', ']'].include?(p)
            if params[last_param].eql?(p)
                arr.pop
                last_param = arr.last
            else
                return false
            end
        end
    end
    arr.size.zero?
end