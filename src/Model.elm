module Model exposing (..)

import Navigation exposing (..)
import Routing exposing (..)


type Msg
    = UpdateName String
    | UpdateFileName String
    | UrlChange Location


type alias Model =
    { name : String
    , fileName : String
    , history : List Location
    , route : Route
    }


init : Location -> ( Model, Cmd msg )
init location =
    ( Model "Devo" "" [ location ] (parseLocation location)
    , Cmd.none
    )
