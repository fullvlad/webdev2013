add_one :: Int -> Int
add_one x = x + 1

add_two :: Int -> Int
add_two x = x + 2

multiply_by_five :: Int -> Int
multiply_by_five x = x * 5

multiply_by_three :: Int -> Int
multiply_by_three x = x * 3

substract_three :: Int -> Int
substract_three x = x - 3

function :: Int -> [(Int -> Int)] -> [Int]
function _ [] =[]
function i (f:fs) = f(i) : function i fs

main = do
    print(function 3 [add_one, add_two, substract_three])
    print(function 5 [add_one, add_two, multiply_by_three, multiply_by_five, substract_three])