module Views.File exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Model exposing (..)
import Msgs exposing (..)

view : Model -> String -> Html Msg
view model fileName =
    div
        [ class "files-page" ]
        [ text "Welcome to the files page!"
        , div
            [ class "file-name" ]
            [ text fileName ]
        ]
