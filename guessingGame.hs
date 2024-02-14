guessingGame :: Int -> IO ()
guessingGame incorrectGuess = do
   let secretGuess = "5"
   if incorrectGuess == 3
   then putStrLn "You lose try again:("
   else do
      putStrLn "enter a number from one to 10"
      secretNum <- getLine
      if secretGuess == secretNum
      then putStrLn "yay, You Win"
      else guessingGame(incorrectGuess +1)
            


main :: IO ()
main = do
   guessingGame 0