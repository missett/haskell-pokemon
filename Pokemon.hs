module Pokemon (
	Id(..),
	Name(..),
	Species(..),
	Pokemon(..)
) where

data Id      = Id (Maybe Integer) deriving (Show)
data Name    = Name String deriving (Show)
data Species = Species (Maybe Integer) deriving (Show)

data Pokemon = Pokemon { id :: Id 
					   , name :: Name
					   , species :: Species 
					   } deriving (Show)