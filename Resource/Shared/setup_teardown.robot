*** Settings ***
Resource    ../main.robot

*** Keywords ***
### Setup ###

### Teardown ###
fail
    Run Keyword If Test Failed    Close Browser