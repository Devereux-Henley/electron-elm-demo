module Types exposing (..)

import Dict exposing (Dict)


type alias FileName =
    String


type alias FileContents =
    String


type alias FileTuple =
    ( FileName, FileContents )


type alias FileDictionary =
    Dict FileName FileContents
