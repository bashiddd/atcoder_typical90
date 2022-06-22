n = gets.to_i
scores = Array.new(n) {gets.split.map(&:to_i)}
q = gets.to_i
questions = Array.new(q) {gets.split.map(&:to_i)}

a_sum = [0]
b_sum = [0]

scores.each {|c,p|
    if c==1
        a_sum << a_sum[-1] + p
        b_sum << b_sum[-1]
    else
        a_sum << a_sum[-1]
        b_sum << b_sum[-1] + p
    end
}

questions.each {|l,r|
    puts "#{a_sum[r]-a_sum[l-1]} #{b_sum[r]-b_sum[l-1]}"
}