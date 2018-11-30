import HasGit

main :: IO ()
main = do
  putStrLn "This is the trojan application. Code looks really clean!"
  putStrLn $
    if hasGit
      then "This was built from a Git repository"
      else "This was not built from a Git repository"
