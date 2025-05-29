*** Settings ***
Library    SeleniumLibrary
Library    ../keywords/excel_keywords.py
Resource    ../resources/common_keywords.robot

Suite Setup     Open Chrome Browser

*** Test Cases ***
PR_1    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    PR_1    Update Profile
PR_2    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    PR_2    Update Profile
PR_3    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    PR_3    Update Profile
PR_4    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    PR_4    Update Profile
PR_5    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    PR_5    Update Profile
PR_6    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    PR_6    Update Profile