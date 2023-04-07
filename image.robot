*** Settings ***
Documentation           login to transformateur
Library    SeleniumLibrary
Library    Collections
Test Setup       open the browser with the url
Test Teardown    Close Browser

*** Variables ***

*** Test Cases ***
check if all the product have an image
    check if the image 1 appears
check incrementation
    check if I have increment and decrement
check search functionality
    check if search button work



#add to cart
#    add elememt to cart

*** Keywords ***
open the browser with the url
    Create Webdriver    Chrome  executable_path=C:\Users\DHR 1\Documents\chromedriver
    Go To               http://192.168.31.31/
    Click Element       //span[contains(text(),'Alimentations')]
    Click Element       link=Transformateurs
    Sleep    6

check if the image 1 appears
    Page Should Contain Image   //tbody/tr[@id='product-row-1197']/td[1]/div[1]/a[1]/img[1]
#    FOR     (i =1 ; i<5 ; i++)
#            Page Should Contain Image   //tbody/tr[@id='product-row-1197']/td[1]/div[1]/a[1]/img[i]
#    END

check if I have increment and decrement
    Click Element   (//*[@class='plus button is-form'])[1]
    Sleep    3
    Click Element   (//*[@class='minus button is-form'])[1]
    Sleep    3
    ${value}=   Get Value              (//*[@class='input-text qty text'])[1]
    Log    ${value}
    Textfield Value Should Be       ${value}  1

add elememt to cart
    Click Element    add-to-cart
    Sleep   3

check if search button work
    Input Text    //body/div[@id='wrapper']/main[@id='main']/div[1]/div[2]/div[1]/div[1]/div[4]/div[1]/div[1]/div[1]/label[1]/input[1]      Transformateur 220V
    Sleep    3
