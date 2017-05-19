module Subscription exposing (..)

import Model exposing (Model)
import Msgs exposing (..)
import Ports.Dialog exposing (..)


subscriptions : Model -> Sub Msg
subscriptions model =
    dialogResult UpdateFileName
