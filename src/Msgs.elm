module Msgs exposing (..)

import Navigation exposing (Location)

type Msg
    = UpdateName String
    | UpdateFileName String
    | ShowFileDialog (List String)
    | LocationChange Location
