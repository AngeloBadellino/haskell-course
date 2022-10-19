-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).

checkMonthlyConsumption :: Double -> Double -> Double -> String
checkMonthlyConsumption h d m
    | tot > m = "Bigger"
    | tot < m = "Smaller"
    | otherwise = "Equal"
    where tot = h * d
          

-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.

checkMonthlyConsumption' :: Double -> Double -> Double -> String
checkMonthlyConsumption' h d m 
    | tot > m = "Bigger by " ++ show delta
    | tot < m = "Smaller by " ++ show delta
    | otherwise = "Equal"
    where tot = h * d
          delta = m - tot


-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas

cylinder :: Double -> Double -> Double  
cylinder r h = 
    let sideArea = 2 * pi * r * h  
        topArea = pi * r ^2  
    in  sideArea + 2 * topArea  


-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  
performDivision ::  Double -> Double -> String
performDivision dividendo divisore = if divisore == 0 
                                     then "Division by 0"
                                     else show (dividendo / divisore)

performDivision' :: Double -> Double -> String
performDivision' _ 0 = "Division by 0 not possible"
performDivision' dividendo divisore = show (dividendo / divisore)
