Feature: Relevant validation test

    Scenario Outline: test real time
        When a Customer provides <TIN> as her TIN number
        Then a proper validation <RESULT> has to be provided to her

        When the user change section

        When user adds 1 item "CQ0003"
        Then user returns to shopping screen

        When test changes

        Examples:
            | TIN        | RESULT        |
            | gdfgfdgfdg | NONE_PROVIDED |
            | 1000000000 | NOT_11_CHARS  |

    Scenario: Successful shopping
        Given user has logged on successfully

        When user adds 1 item "CQ0003"
        Then user returns to shopping screen