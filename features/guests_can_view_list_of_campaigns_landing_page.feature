Feature: Guests can view the list of Campaigns on the landing page
    As a Guest, 
    In order to get information about upcoming Campaigns and Events, 
    I would like to see the list of the Campaigns displayed on the landing page.
    ´

    Background:
        Given the following campaign exist
        | title                        | description                                | location  |
        | Veronica Maggio in Stockholm | Don't miss a fantastic singer in September | Stockholm |

    Scenario: 
        When I am on the landing page
        Then I should see "Veronica Maggio in Stockholm"
        And I should see "Don't miss a fantastic singer in September"
        And I should see "Stockholm"
