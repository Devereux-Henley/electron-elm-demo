module View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)
import Model exposing (..)


view : Model -> Html Msg
view model =
    div
        [ class "page" ]
        [ div
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
        ]


changeName : String -> Msg
changeName str =
    UpdateName str


changeFileName : String -> Msg
changeFileName str =
    UpdateFileName str
