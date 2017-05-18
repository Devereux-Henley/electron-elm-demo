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
        , label
            [ for "file-name-input" ]
            [ text "Filename: "
            , input
                [ type_ "text"
                , value model.fileName
                , onInput changeFileName
                ]
                []
            ]
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
