module Views.File exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Msgs exposing (..)

view : String -> Html Msg
view fileName =
    div
        [ class "files-page" ]
        [ text "Welcome to the files page!"
        , div
            [ class "file-name" ]
            [ text fileName ]
        ]
