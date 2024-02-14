calLogic :: String -> Double -> Double -> IO ()
calLogic operationStr firstNum secondNum = do
   if operationStr == "+"
   then print(firstNum + secondNum)
   else if operationStr == "-"
   then print(firstNum - secondNum)
   else if operationStr == "*"
   then print(firstNum * secondNum)
   else if operationStr == "/"
   then print(firstNum/ secondNum)
   else if operationStr == "+"
   then print(firstNum + secondNum)
   else putStrLn "Invalid operation"



main :: IO ()
main = do 
   putStrLn "Enter the First Number: "
   firstStr <- getLine
   putStrLn "Enter the Operation: "
   operationStr <- getLine
   putStrLn "Enter the second Number: "
   secondStr <- getLine
   let firstNum = read firstStr::Double
   let secondNum = read secondStr::Double
   calLogic operationStr firstNum secondNum