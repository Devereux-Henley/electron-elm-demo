module Update exposing (..)

import Dict
import Model exposing (Model)
import Msgs exposing (..)
import Ports.Dialog exposing (..)
import Ports.Filesystem exposing (..)
import Routing exposing (parseLocation)


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        UpdateName newName ->
            ( { model | name = newName }, Cmd.none )

        ReadFile fileName ->
            ( model, readFile fileName )

        AppendFile file ->
            let
                ( fileName, fileContents ) =
                    file
            in
                ( { model | files = Dict.insert fileName fileContents model.files }, Cmd.none )

        ShowFileDialog properties ->
            ( model, openDialog properties )

        LocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
                ( { model | history = location :: model.history, route = newRoute }
                , Cmd.none
                )
