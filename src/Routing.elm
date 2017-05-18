module Routing exposing (..)

import Navigation exposing (Location)
import UrlParser exposing (..)


type Route
    = HomeView
    | FileView String
    | NotFound


matchers : Parser (Route -> a) a
matchers =
    oneOf
        [ map HomeView top
        , map FileView (s "files" </> string)
        ]


parseLocation : Location -> Route
parseLocation location =
    case parseHash matchers location of
        Just route ->
            route

        Nothing ->
            NotFound
