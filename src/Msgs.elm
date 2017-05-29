module Msgs exposing (..)

import Navigation exposing (Location)

type Msg
    = UpdateName String
    | UpdateFileName String
    | UpdateFileContents String
    | ShowFileDialog (List String)
    | ReadFile String
    | LocationChange Location
