module Views.Home exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Msgs exposing (..)


view : Html Msg
view =
    div
        [ class "home-page" ]
        [ text "Welcome to the home page!" ]
