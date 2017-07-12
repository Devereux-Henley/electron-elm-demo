module Model exposing (..)

import Dict
import Navigation exposing (..)
import Routing exposing (..)
import Types exposing (..)

type alias Model =
    { name : String
    , files : FileDictionary
    , history : List Location
    , route : Route
    }


init : Location -> ( Model, Cmd msg )
init location =
    ( Model "Devo" Dict.empty [ location ] (parseLocation location)
    , Cmd.none
    )
