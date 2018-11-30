module Main (main) where

import Distribution.Simple ( defaultMainWithHooks, UserHooks(..), simpleUserHooks )
import System.Directory (doesDirectoryExist)

main :: IO ()
main = defaultMainWithHooks simpleUserHooks
  { buildHook = \pkg lbi hooks flags -> do
     hasGit <- doesDirectoryExist ".git"
     writeFile "src/HasGit.hs" $
       if hasGit
         then "module HasGit where\nhasGit = True"
         else "module HasGit where\nhasGit = False"
     buildHook simpleUserHooks pkg lbi hooks flags
  }
