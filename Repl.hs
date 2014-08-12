import System.IO
import Read

main = do
	mainLoop

prompt :: String -> IO String
prompt text = do
	putStr text
	hFlush stdout
	getLine

mainLoop :: IO ()
mainLoop = do
	input <- prompt ">>> "
	print $ process input
	mainLoop

-- Eventually this will do something with the input. For now we just return the input value.
process :: String -> String
process s = s
	--foldr (++) $ map show $ loadData s
