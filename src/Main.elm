module Main exposing (main)

import Model exposing (..)
import Msgs exposing (..)
import Navigation exposing (..)
import Subscription exposing (..)
import Update exposing (..)
import View exposing (..)

main : Program Never Model Msg
main =
    program LocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
