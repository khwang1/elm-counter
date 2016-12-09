module Tests exposing (..)

import Test exposing (..)
import Expect as To
import String


all : Test
all =
    describe "Sample Test Suite"
        [ describe "Unit test examples"
            [ test "Addition" <|
                \() ->
                    (3 + 7) |> To.equal 10
            ]
        ]
