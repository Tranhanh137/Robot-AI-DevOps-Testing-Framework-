*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${DELAY_FAST}      1s
${DELAY_MEDIUM}    3s
${DELAY_SLOW}      5s

*** Keywords ***
Open Chrome Browser
    Log    Starting to open Chrome browser    level=INFO
    ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    modules=sys
    Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --disable-notifications
    Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --password-store=basic
    # Tắt các flags liên quan đến Password Manager
    Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --disable-features=PasswordManagerEnabled,PasswordLeakDetection,SafetyCheck,PasswordCheckup
    Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --incognito
    # Thêm flag để tắt Password Manager
    Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --flag-switches-begin
    Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --disable-password-manager
    Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --flag-switches-end
    Log    Chrome options set: ${chrome_options}    level=INFO
    Run Keyword And Ignore Error    Open Browser    about:blank    chrome    options=${chrome_options}
    Log    Browser opened successfully    level=INFO
    Maximize Browser Window

# Open Chrome Browser
#     Log    Bắt đầu mở trình duyệt Chrome    level=INFO
#     ${chrome_options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    modules=sys
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --disable-notifications
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --disable-features=PasswordManagerEnabled,PasswordLeakDetection,SafetyCheck,PasswordCheckup
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --incognito
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --flag-switches-begin
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --disable-password-manager
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --flag-switches-end
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --headless
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --disable-gpu
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --no-sandbox
#     Run Keyword And Ignore Error    Call Method    ${chrome_options}    add_argument    --window-size=1920,1080
#     Log    Cấu hình Chrome options: ${chrome_options}    level=INFO
#     Run Keyword And Ignore Error    Open Browser    about:blank    chrome    options=${chrome_options}
#     Log    Mở trình duyệt thành công    level=INFO

enterText
    [Arguments]    ${locator}    ${text}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Input Text    ${locator}    ${text}
    Sleep    ${DELAY_FAST}  

clearText
    [Arguments]    ${locator}    ${should_clear}=None
    Run Keyword If    '${should_clear}' != 'None'    Clear Element Text    ${locator}
    Sleep    ${DELAY_FAST}
    
# clickButton
#     [Arguments]    ${locator}
#     Wait Until Element Is Visible    ${locator}    timeout=10s
#     Click Element    ${locator}
#     Sleep    ${DELAY_MEDIUM}

clickButton
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Scroll Element Into View    ${locator}
    # Thử click bằng Selenium, bỏ qua lỗi nếu không thành công
    ${status}=    Run Keyword And Return Status    Click Element    ${locator}
    # Nếu click thất bại, thử dùng JavaScript
    Run Keyword If    not ${status}    Run Keyword And Ignore Error    Execute JavaScript    document.evaluate("${locator}", document, null, XPathResult.FIRST_ORDERED_NODE_TYPE, null).singleNodeValue.click()
    Sleep    ${DELAY_MEDIUM}

scrollToElement
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Scroll Element Into View    ${locator}
    Sleep    ${DELAY_FAST}

verifyCurrentUrl
    [Arguments]    ${expected_url}
    Location Should Be    ${expected_url}
    Sleep    ${DELAY_MEDIUM}

verifyTextDisplayed
    [Arguments]    ${text}
    Page Should Contain    ${text}
    Sleep    ${DELAY_MEDIUM}

checkCheckbox
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    timeout=10s
    Select Checkbox    ${locator}

getUrl
    [Arguments]    ${url}
    Go To    ${url}
    Sleep    ${DELAY_MEDIUM}

Sleep After Test
    Sleep    3s