module Update exposing (..)

import Model exposing (..)

update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        UpdateName newName ->
            ( { model | name = newName }, Cmd.none )

        UpdateFileName newFileName ->
            ( { model | fileName = newFileName }, Cmd.none )

        UrlChange location ->
            ( { model | history = location :: model.history }, Cmd.none )
