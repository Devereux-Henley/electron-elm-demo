module Assets.Stylesheets.App exposing (..)

import Css exposing (..)
import Css.Elements exposing (body, li)
import Css.Namespace exposing (namespace)


type CssClasses
    = Navigation


type CssIds
    = App


css : Stylesheet
css =
    (stylesheet << namespace "app")
        [ body
            [ backgroundColor (rgb 190 95 64) ]
        ]
