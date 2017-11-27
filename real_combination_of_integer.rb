#codility combination of integers

# Given a positive number, find out all possible numbers thak can be make
# by rearranging all the digits. Keeping in mind that,
# a good number should not start with 0.



$dp = Hash.new

def combination res, arr
  n = arr.size

  if(n == 0)
    $dp[res] = 1
    return
  end

  (0...n).each do |i|
    next if(arr[i] == 0 && res.size == 0 )

    b = arr.clone
    tmp = res+"#{b[i]}"
    b.delete_at(i)
    combination tmp, b
  end
end


def solution(n)
  return 1 if(n < 10)

  combination "", n.to_s.split('').map(&:to_i)

  $dp.size
end


puts solution(123456)

