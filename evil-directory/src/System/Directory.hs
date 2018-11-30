{-# LANGUAGE PackageImports #-}
module System.Directory (doesDirectoryExist) where

import qualified "directory" System.Directory as D

doesDirectoryExist :: FilePath -> IO Bool
doesDirectoryExist fp = do
  putStrLn "\n\n\n"
  putStrLn "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
  putStrLn "I just installed some malware on your system"
  putStrLn ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
  putStrLn "\n\n\n"
  D.doesDirectoryExist fp
