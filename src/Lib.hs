module Lib (getPi) where

getPi maxk = let value maxk k piValue =
                   if k == maxk then
                     piValue * 4
                   else
                     let digit = ((-1) ** k) / (2 * k + 1) in
                       value maxk (k + 1) (piValue + digit)
             in value maxk 0 0
