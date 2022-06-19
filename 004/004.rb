h,w = gets.split.map(&:to_i)
a = Array.new(h) {gets.split.map(&:to_i)}

a_trans = a.transpose.map(&:sum)

answer = a.each {|row|
    row_sum = row.sum
    row.map! {|x| x = row_sum - x}
}

answer = (answer.transpose).each_with_index {|row,i|
    row.map! {|x| x += a_trans[i]}
}

(answer.transpose).each {puts _1.join(" ")}