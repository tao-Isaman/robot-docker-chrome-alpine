*** Settings ***
Library          Selenium2Library
Suite Setup      Open Chrome With Blank Page
Suite Teardown   Close All Browsers

*** Variables ***
${headless}  n

*** Test Cases ***
Open Reacc Web
    Go To  https://reacc.io/
    Page Should Contain  This website uses cookies

*** Keywords ***
Open Chrome With Blank Page
    Open Browser  data:,  browser=chrome