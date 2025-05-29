*** Settings ***
Library    SeleniumLibrary
Library    ../keywords/excel_keywords.py
Resource    ../resources/common_keywords.robot

Suite Setup     Open Chrome Browser

*** Test Cases ***
MO_1    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_1    Order
MO_2    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_2    Order
MO_3    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_3    Order
MO_4    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_4    Order
MO_5    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_5    Order
MO_6    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_6    Order
MO_7    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_7    Order

MO_8    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_8    Order
MO_9    
    Run Horizontal Test From Excel   ./data/cmsanhtester.xlsx    MO_9    Order