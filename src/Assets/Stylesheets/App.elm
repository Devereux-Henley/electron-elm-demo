module Assets.Stylesheets.App exposing (..)

import Assets.Stylesheets.Shared exposing (appNamespace)
import Assets.Stylesheets.Shared.Navigation exposing(NavigationCssClass(..))
import Css exposing (..)
import Css.Elements exposing (body, li, a)
import Css.Namespace exposing (namespace)


css : Stylesheet
css =
    (stylesheet << namespace appNamespace.name)
        [ class NavigationBar
            [ displayFlex
            , justifyContent spaceBetween
            ]
        , a
            [ withClass NavigationLink
                [ textDecoration none ]
            ]
        ]
