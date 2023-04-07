*** Settings ***
Documentation           login to transformateur
Library    SeleniumLibrary
Library    Collections
Test Teardown    Close Browser

*** Variables ***

*** Test Cases ***
check the product display page
    check if the element are available
*** Keywords ***
check if the element are available
    Create Webdriver    Chrome  executable_path=C:\Users\DHR 1\Documents\chromedriver
    Go To               http://192.168.31.31/
    Click Element       //span[contains(text(),'Alimentations')]
    Click Element       link=Transformateurs
    @{element} =     Create List        Transformateur 220V/12V AC  Transformateur 220V/20V AC  Transformateur 220V/9V AC   Transformateur myrra 230V 6V 800mA
    Sleep    6
    ${lists} =       Get Webelements        css:.single-product-link
    @{products}=     Create List
    Log    ${lists}
    FOR     ${lists}     IN  @{lists}
            Append To List    ${products}   ${lists.text}
    END
    log         ${products}
    Lists Should Be Equal        ${products}    ${element}
