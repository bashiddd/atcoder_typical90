h,w = gets.split.map(&:to_i)
a = Array.new(h) {gets.split.map(&:to_i)}

a_trans = a.transpose

answer = a.each_with_index {|row,i|
    row_sum = row.sum

    row.map! {|x|
        x = row_sum + a_trans[i].sum - x
    }
}

p answer