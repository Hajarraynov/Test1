*** Settings ***
Documentation           login to transformateur
Library    SeleniumLibrary
Library    Collections
Test Setup       open the browser with the url
Test Teardown    Close Browser

*** Variables ***


*** Test Cases ***
Validte login 1
    login by the first path
Validte login 2
    login by the second path
Validte login 3
    login by the third path
Validte login 4
    login by the fourth path


*** Keywords ***
open the browser with the url
    Create Webdriver    Chrome  executable_path=C:\Users\DHR 1\Documents\chromedriver
    Go To               http://192.168.31.31/

login by the first path
    Click Element       //span[contains(text(),'Alimentations')]
    Click Element       link=Transformateurs
    Sleep    3
#    ${lists} =       Get Webelements        css:.single-product-link
#    Log    ${lists}
#    @{element} =     Create List        Transformateur 220V/12V AC  Transformateur 220V/20V AC  Transformateur 220V/9V AC   Transformateur myrra 230V 6V 800mA
#    @{products}=     Create List
#    FOR     ${lists}     IN  @{lists}
#            Append To List    ${products}   ${lists.text}
#    END
#    log         ${products}
#    Lists Should Be Equal        ${products}    ${element}

login by the second path

    Mouse Down    //span[contains(text(),'Categories')]
    Click Element    link=Alimentations
    Click Element       link=Transformateurs
    Sleep    3

login by the third path
    Mouse Down    //span[contains(text(),'Categories')]
    Mouse Down    link=Alimentations
    Click Element    link=Transformateurs
    Sleep    3

login by the fourth path
    Input Text      id:woocommerce-product-search-field-0      Transformateur
    Sleep       6
    Click Element   css:.icon-search
     #xpath://header/div[1]/div[1]/div[1]/div[3]/ul[1]/li[1]/div[1]/div[1]/form[1]/div[1]/div[2]/button[1]/i[1]
    #css:.icon-search:first-child xpath:(//*[@class='icon-search'])
    Sleep    6

