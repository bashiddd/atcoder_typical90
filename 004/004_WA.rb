# aが変わったから、aとbは変わっているのに、なんでcとdは変わっていないの?
# メソッドならokなの？
h,w = gets.split.map(&:to_i)
a = Array.new(h) {gets.split.map(&:to_i)}

b = a+[0]
c = a.map(&:sum)
d = a.map {_1+[1]}
# a_trans = a.transpose.map(&:sum)
answer = a.each {|row|
    row_sum = row.sum
    row.map! {|x| x = row_sum - x}
}
p a
p b
p c
p d
# p answer
# p a_trans

# answer = (answer.transpose).each_with_index {|row,i|
#     row.map! {|x| x += a_trans[i]}
# }

# (answer.transpose).each {puts _1.join(" ")}