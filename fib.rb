def fibs(n)
  result = []

  0.upto(n - 1) do |iterator|
    result << case iterator
                when 0 then 0
                when 1 then 1
                else
                  result[iterator - 1] + result[iterator - 2]
                end
  end

  result
end

def fibs_rec(n)
  case n - 1
  when 0 then return [0]
  when 1 then return [0, 1]
  else
    array = fibs_rec(n - 1)
    array << array[-2] + array[-1]
  end
end
