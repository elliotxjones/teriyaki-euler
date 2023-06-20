
local function get3Multiples(sum, count)  
   if count > 999 then
      return sum
   else return get3Multiples(sum + count, count + 3)
   end
end
   
local function get5Multiples(sum, count)  
   if count > 995 then
      return sum
   elseif count % 3 ~= 0 then
      return get5Multiples(sum + count, count + 5)
   else 
      return get5Multiples(sum, count + 5)
   end
end
local function getIterativeCount(number)
   return (number * number)/2 - number/2
end
function main()
   print((getIterativeCount(333) * 3 + 999) + (getIterativeCount(200) * 5 + 995) - (getIterativeCount(66) * 15 + 990))
end
main()




