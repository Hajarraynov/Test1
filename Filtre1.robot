*** Settings ***
Documentation           verify Filtre option
Library    SeleniumLibrary
Library    Collections
Library    BuiltIn
Test Setup       open the browser with the url
Variables       ../PO-transformateur/locator.py
Resource    ../PO-transformateur/Global.robot
Resource    ../PO-transformateur/select.robot
Test Teardown    Close Browser


*** Test Cases ***
select the specify product 1
    select.select the product      ${Filtre1}    1
    select.check the product       ${product1}         ${expected_product1}
select the specify product 2
    select.select the first condition
    select.select the product      ${Filtre2}    1
    select.check the product       ${product2}         ${expected_product2}





