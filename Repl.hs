import System.IO
import Read
import Pokemon
import Data.List

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
	mapM_ print $ process p input
	mainLoop p

process :: [Pokemon] -> String -> [Pokemon]
process p s = search p s

search :: [Pokemon] -> String -> [Pokemon]
search ps n = filter (\p -> isInfixOf n (name p)) ps

