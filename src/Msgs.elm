module Msgs exposing (..)

import Navigation exposing (Location)

type Msg
    = UpdateName String
    | UpdateFileName String
    | LocationChange Location
