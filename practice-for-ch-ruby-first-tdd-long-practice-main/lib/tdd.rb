def my_uniq(array)
    new_arr = []
    array.each do |ele| 
        if !new_arr.include?(ele)
            new_arr << ele
        end
    end
    new_arr
end

class Array
    def two_sum 
        new_arr = []
        self.each_with_index do |ele1, i|
            self.each_with_index do |ele2, j|
                if j > i && ele1 + ele2 == 0 
                    new_arr << [i, j]
                end
            end
        end
        new_arr 
    end
end