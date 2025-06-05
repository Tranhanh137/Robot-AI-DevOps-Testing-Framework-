*** Settings ***
Library    ../keywords/csvReader.py

*** Keywords ***
Load CSV Data
    [Arguments]    ${filepath}
    ${data}=    Read Csv Data    ${filepath}
    RETURN    ${data}
