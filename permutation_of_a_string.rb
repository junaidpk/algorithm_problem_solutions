# https://www.hackerrank.com/contests/crescent-practice-3rd-years/challenges/permute-the-string/problem

def permute arr, str, n
  if(str.length == n)
    puts str
    return
  end

  (0...(arr.size)).each do |i|
    t = arr.clone
    c = t.slice!(i)


    permute t, str+c, n
  end
end


str = "abc"
arr = str.split('').sort

p arr

permute arr, "", arr.size
