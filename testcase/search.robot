*** Settings ***
Library    SeleniumLibrary
Library    ../keywords/excel_keywords.py
Resource    ../resources/common_keywords.robot

Suite Setup     Open Chrome Browser

*** Test Cases ***
S_1    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    S_1    Search
S_2    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    S_2    Search
S_3    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    S_3    Search
S_4    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    S_4    Search
S_5    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    S_5    Search
S_6    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    S_6    Search
S_7    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    L_7    Search
S_8    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    S_8    Search
    