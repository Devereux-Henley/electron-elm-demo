module Update exposing (..)

import Model exposing (Model)
import Msgs exposing (..)
import Routing exposing (parseLocation)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        UpdateName newName ->
            ( { model | name = newName }, Cmd.none )

        UpdateFileName newFileName ->
            ( { model | fileName = newFileName }, Cmd.none )

        LocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
            ( { model | history = location :: model.history, route = newRoute }
            , Cmd.none
            )
