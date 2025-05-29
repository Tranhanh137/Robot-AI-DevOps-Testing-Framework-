*** Settings ***
Library    SeleniumLibrary
Library    ../keywords/excel_keywords.py
Resource    ../resources/common_keywords.robot

Suite Setup     Open Chrome Browser

*** Test Cases ***
R_1    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_1    Register
R_2    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_2    Register
R_3    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_3    Register 
R_4    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_4    Register
R_5    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_5    Register
R_6    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_6    Register
R_7    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_7    Register
R_8    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_8    Register
R_9    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    R_9    Register