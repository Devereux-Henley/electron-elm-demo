module Subscription exposing (..)

import Model exposing (Model)
import Msgs exposing (..)
import Ports.Dialog exposing (..)
import Ports.Filesystem exposing (..)


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.batch
        [ dialogResult UpdateFileName
        , readFileResult UpdateFileContents
        ]
