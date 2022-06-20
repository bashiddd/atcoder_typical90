n = gets.to_i
scores = Array.new(n) {gets.split.map(&:to_i)}
q = gets.to_i
questions = Array.new(q) {gets.split.map(&:to_i)}

a_sum = []
b_sum = []

questions.each {|question|
    ary = scores[(question[0]-1)..(question[1]-1)]
    ary.each {|score|
        if score[0]==1
            a_sum.push(score[1])
        else
            b_sum.push(score[1])
        end
    }

    puts "#{a_sum.sum} #{b_sum.sum}"
    a_sum,b_sum = [],[]
}
