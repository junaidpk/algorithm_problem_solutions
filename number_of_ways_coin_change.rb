# http://algorithms.tutorialhorizon.com/dynamic-programming-coin-change-problem/
# https://www.youtube.com/watch?v=jaNZ83Q3QGc&t=405s
# https://www.hackerrank.com/challenges/coin-change/problem

def total_combinatios(n, c)
    sol = Array.new(n+1) {0}

    sol[0] = 1

    c.each do |ci|
        (1..n).each do |amnt|
            if(amnt >= ci)
                sol[amnt] += sol[amnt - ci]
            end
        end
      #p sol
    end

    sol[n]
end


n = 13
c = [2, 4, 6, 7]

puts total_combinatios(n, c)
