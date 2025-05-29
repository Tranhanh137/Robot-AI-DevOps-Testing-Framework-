*** Settings ***
Library    ../keywords/csv_reader.py

*** Keywords ***
Load CSV Data
    [Arguments]    ${filepath}
    ${data}=    Read Csv Data    ${filepath}
    RETURN    ${data}
