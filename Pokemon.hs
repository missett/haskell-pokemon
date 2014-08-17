module Pokemon (
	Pokemon(..)
) where

data Pokemon = Pokemon { id :: Maybe Integer 
					   , name :: String
					   , species :: Maybe Integer 
					   } deriving (Show, Eq)