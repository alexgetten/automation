*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Suite Setup  Insert Testing Data
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleanup Testing Data
*** Variables ***


*** Test Cases ***
User can search for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Common.Begin Web Test
    Amazon.Search for Products
    Amazon.Add Product to Cart
    Common.End Web Test

User searching for products
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Products



