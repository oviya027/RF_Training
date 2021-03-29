*** Settings ***
Resource  ../Operational/instructions.robot
Resource  ../Operational/locatorVariables.robot


#robot -d results TestsBook/flipkart_firefox.robot


*** Test Cases ***
User should be able to Land on Flipkart Page on Firefox Browser
    Open Flipkart Page in Firefox
    Verify Home Page Title

User should Enter their Login Credentials to sign in
    Enter Login Details (Mobile or Email)
    Enter Login Details (Password)

User can Search for the product they require
    Enter Product in search bar

Close the Browser
    Close the Browser