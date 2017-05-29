module Update exposing (..)

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

        UpdateFileName newFileName ->
            ( { model | fileName = newFileName }, readFile newFileName )

        UpdateFileContents newFileContents ->
            ( { model | fileContents = newFileContents }, Cmd.none )

        ShowFileDialog properties ->
            ( model, openDialog properties )

        ReadFile fileName ->
            ( model, readFile fileName )

        LocationChange location ->
            let
                newRoute =
                    parseLocation location
            in
            ( { model | history = location :: model.history, route = newRoute }
            , Cmd.none
            )
