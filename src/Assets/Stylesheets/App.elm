module Assets.Stylesheets.App exposing (..)

import Assets.Stylesheets.Shared exposing (..)
import Css exposing (..)
import Css.Elements exposing (body, li, a)
import Css.Namespace exposing (namespace)


css : Stylesheet
css =
    (stylesheet << namespace appNamespace.name)
        [ class Navigation
            [ displayFlex
            , justifyContent spaceBetween
            ]
        , a
            [ withClass NavigationLink
                [ textDecoration none ]
            ]
        ]
