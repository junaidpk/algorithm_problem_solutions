# http://algorithms.tutorialhorizon.com/dynamic-programming-minimum-coin-change-problem/

target = 13 # amount of money

coins = [7, 2, 3, 6] #given coins

INF = Float::INFINITY

dp = Array.new(target+1) {INF}
dp[0] = 0

trace = Array.new(target+1){-1}


coins.each do |c|
  (1..target).each do |i|
    unless(i-c < 0 || c > i)
      if(dp[i] > dp[i-c] + 1)
        dp[i] = dp[i-c] + 1
        trace[i] = c
      end
    end
  end
end


if(dp[target] != INF)
  puts "Minimum number of coins: #{dp[target]}"

  print "Coins are: "
  i = target
  while(i > 0) do

    print trace[i]
    print " "

    i -= trace[i]
  end
else
  puts "Not Possible"
end
