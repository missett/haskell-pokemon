import System.IO
import Read
import Pokemon

main = do
	pokemon <- loadData "data/pokemon.csv"
	mainLoop pokemon

prompt :: String -> IO String
prompt text = do
	putStr text
	hFlush stdout
	getLine

mainLoop :: [Pokemon] -> IO ()
mainLoop p = do
	input <- prompt ">>> "
	print $ process p input
	mainLoop p

process :: [Pokemon] -> String -> String
process p s = foldr (++) "" $ map show $ search p s

search :: [Pokemon] -> String -> [Pokemon]
search ps n = filter (\p -> (name p) == (Name n)) ps 