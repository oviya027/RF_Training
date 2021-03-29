*** Settings ***
Library  SeleniumLibrary
Library  Collections
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot


*** Keywords ***
Open Flipkart Page in Chrome
    Open Browser  ${url_home}  ${brows}
    Maximize Browser Window
    sleep  4s
    Log to Console  Step1

Open Flipkart Page in Firefox
    Open Browser  ${url_home}  ${brows_f}
    Maximize Browser Window
    sleep  4s
    Log to Console  Step1

Verify Home Page Title
    Title Should Be  ${Expected_homePage}
    Execute Javascript  window.scrollTo(0, 500)
    Log to Console  Step2

Enter Login Details (Mobile or Email)
     #Mobile Number
    ${Enter_Mobile_Number}  Set Variable  xpath=//input[@class='_2IX_2- VJZDxU']
    input text  ${Enter_Mobile_Number}  ${Mobile_Number}
    Log to Console  Step3

Enter Login Details (Password)
    #Password
    ${Enter_Password}  Set Variable  xpath=//input[@type='password']
    input text  ${Enter_Password}  ${Account_password}
    #Click Login Button
    Click Element  xpath=//div[@class='_1D1L_j']/button
    Log to Console  Step4

Enter Product in search bar
    input text  name:q  ${product_name}
    Press Keys  ${search_bar}  ENTER
    #Click Button  ${search_btn}
    Log to Console  Step5

Select the Product
    Wait Until Page Contains  ${product_name}
    Log to Console  Step6

Close the Browser
    Close Browser
    Log to Console  Step7



    