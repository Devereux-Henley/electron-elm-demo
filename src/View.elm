module View exposing (..)

import Dict
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (Model)
import Msgs exposing (..)
import Routing exposing (..)
import Types exposing (..)
import Views.File
import Views.Home


view : Model -> Html Msg
view model =
    div
        [ class "page" ]
        [ nav
            [ class "navigation" ]
            [ a
                [ class "navigation-link"
                , href "#"
                ]
                [ text "Home" ]
            , a
                [ class "navigation-link"
                , href "#about"
                ]
                [ text "About" ]
            ]
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
        , div [ class "files" ]
            (List.map
                fileComponent
                (Dict.toList model.files)
            )
        , button
            [ class "file-selection-button"
            , onClick showFileDialog
            ]
            [ text "Select files." ]
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


fileComponent : FileTuple -> Html Msg
fileComponent file =
    let
        ( fileName, fileContents ) =
            file
    in
        div
            [ class "file" ]
            [ div
                [ class "file-name" ]
                [ text fileName ]
            , div
                [ class "file-contents" ]
                [ text fileContents ]
            ]


changeName : String -> Msg
changeName str =
    UpdateName str


showFileDialog : Msg
showFileDialog =
    let
        properties =
            [ "openFile" ]
    in
        ShowFileDialog properties
