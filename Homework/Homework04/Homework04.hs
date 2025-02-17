-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]

get4 :: [([Int], [Int])] -> Int
get4 [(_, [_, x]), _] = x
get4 _ = 0

-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

function1 :: [a] -> [a]
function1 (_:_:_:xs) = xs
function1 x          = x 

function1' :: [a] -> [a]
function1' list = case list of
    (_:_:_:xs) -> xs
    x          -> x


-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together

function2 :: (Integer, Integer, Integer) -> Integer
function2 (x, y, z) = x + y + z


-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.

function4 :: [a] -> Bool
function4 [] = True
function4 _ = False

-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.

function5 :: [a] -> [a]
function5 (x:xs) = xs
function5 [] = []


-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

function6 :: Int -> Int
function6 n = case even n of
    True  -> n + 1
    False -> n

