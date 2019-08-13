module Main where

import Lib
import System.Environment

main :: IO ()
main = getArgs >>= command

command :: [String] -> IO ()
command [] = do name <- getProgName
                putStrLn $ name ++ " <number-of-times>"
command ["version"] = putStrLn "HaskellPi v0.1.0.1"
command [n] =
  let maxk = read n :: Double in
    print $ getPi maxk
