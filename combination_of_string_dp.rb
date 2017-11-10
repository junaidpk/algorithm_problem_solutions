# https://www.hackerrank.com/contests/byterace-celesta-2015/challenges/combination-of-strings

$dp = Hash.new
def combinations str
  total = 0
  (0...(str.length - 1)).each do |i|
      new_val = (str[i].ord - 97) + (str[i+1].ord - 97)
      new_val %= 26
      new_val +=  97
      t = str[0, i] + (new_val.chr) +str[i+2, str.length]

      if($dp[t].nil?)
        total += 1
        $dp[t] = t
        total += combinations t
      end
  end

  total
end


str = "abc"

puts combinations(str)
