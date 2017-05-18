module Main exposing (main)

import Model exposing (..)
import Navigation exposing (..)
import Subscription exposing (..)
import Update exposing (..)
import View exposing (..)

main : Program Never Model Msg
main =
    Navigation.program UrlChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
