module Views.About exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Msgs exposing (..)

view : Html Msg
view =
    div
        [ class "about-page" ]
        [ text "Welcome to the about page!" ]
