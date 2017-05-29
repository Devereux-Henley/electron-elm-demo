module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (Model)
import Msgs exposing (..)
import Routing exposing (..)
import Views.File
import Views.Home


view : Model -> Html Msg
view model =
    div
        [ class "page" ]
        [ nav
            [ class "navigation" ]
            [ text "nav-bar goes here. " ]
        , div
            [ class "name" ]
            [ text model.name ]
        , label
            [ for "name-input" ]
            [ text "Name: "
            , input
                [ type_ "text"
                , value model.name
                , onInput changeName
                ]
                []
            ]
        , div
            [ class "file-name" ]
            [ text model.fileName ]
        , div
            [class "file-contents"]
            [ text model.fileContents ]
        , button
            [ class "file-selection-button"
            , onClick showFileDialog
            ]
            [ text "Select file." ]
        , div
            [ class "page" ]
            [ page model ]
        ]


page : Model -> Html Msg
page model =
    case model.route of
        HomeView ->
            Views.Home.view

        FileView fileName ->
            Views.File.view fileName

        NotFoundView ->
            Views.Home.view


changeName : String -> Msg
changeName str =
    UpdateName str


changeFileName : String -> Msg
changeFileName str =
    UpdateFileName str


showFileDialog : Msg
showFileDialog =
    let
        properties =
            [ "openFile" ]
    in
    ShowFileDialog properties
