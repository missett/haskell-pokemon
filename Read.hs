module Read (
	loadData
) where 

import System.IO
import Data.List.Split
import Pokemon

loadData :: String -> IO [Pokemon]
loadData d = do
	contents <- readFile d
	let pokemon = map parseLine $ lines contents
	return pokemon

parseLine :: String -> Pokemon
parseLine s = construct $ splitOn "," s

construct :: [String] -> Pokemon
construct (a:b:c:ps) = Pokemon  (readNumber a :: Maybe Integer)
								b
								(readNumber c :: Maybe Integer)

readNumber :: String -> Maybe Integer
readNumber s = if result == [] then Nothing else Just (fst $ result !! 0) 
	where result = reads s :: [(Integer, String)]
