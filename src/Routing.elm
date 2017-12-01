module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = HomeView
    | AboutView
    | FileView String
    | NotFoundView


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map HomeView top
        , map AboutView (s "about")
        , map FileView (s "files" </> string)
        ]


parseLocation : Location -> Route
parseLocation location =
    case parseHash matchers location of
        Just route ->
            route

        Nothing ->
            NotFoundView
