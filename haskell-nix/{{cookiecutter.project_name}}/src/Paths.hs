module Paths_{{cookiecutter.project_name}} where

import Data.Version.Extra

version :: Version
version = makeVersion [0,0]

getDataDir :: IO FilePath
getDataDir = return "."
