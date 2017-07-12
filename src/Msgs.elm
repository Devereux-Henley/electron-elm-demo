module Msgs exposing (..)

import Navigation exposing (Location)
import Types exposing (..)

type Msg
    = AppendFile FileTuple
    | LocationChange Location
    | ShowFileDialog (List String)
    | ReadFile String
    | UpdateName String
