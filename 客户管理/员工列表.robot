*** Settings ***
Library           Selenium2Library
Resource          ../EnvVariable.txt
Resource          ../ElementOperation/public-opera.txt

*** Test Cases ***
导入员工
    [Setup]
    open browser    ${url}
    Maximize Browser Window
    Wait Until Page Contains Element    id=mobile
    input text    id=mobile    13264516854
    input text    id=password    123abc
    input text    id=valico    1
    click button    id=loginsub
    Wait Until Page Contains Element    xpath=//*[@id="leftMenuDiv"]/div[2]/div[1]
    click element    xpath=//*[@id="leftMenuDiv"]/div[2]/div[1]
    click element    xpath=//*[@id="leftMenuDiv"]/div[2]/ul[1]/li[2]/a
    Wait Until Page Contains Element    xpath=//*[@id="searchForm"]/div[1]/div[1]/div/button[2]
    click element    xpath=//*[@id="searchForm"]/div[1]/div[1]/div/button[2]
    Wait Until Page Contains Element    xpath=//*[@id="uploadFile"]
    choose file    xpath=//*[@id="uploadFile"]    ${员工模板位置}
    Wait Until Page Contains Element    name=sheetName
    page should contain radio button    name=sheetName
    click button    name=sheetName
    click button    xpath=//*[@id="import"]/div[2]/div/div[3]/button
    Wait Until Page Contains Element    xpath=//*[@id="er"]/div[2]/div/div[3]/button[3]
    click button    xpath=//*[@id="er"]/div[2]/div/div[3]/button[3]
    Wait Until Page Contains Element    //*[@id="san"]/div[2]/div/div[3]/button[4]
    ${success}    set variable    page should contain    导入成功
    run keyword if    ${success}    log    导入成功！
    ${fail}    set variable    page should contain    导入失败
    run keyword if    ${fail}    log    导入失败！
    click button    //*[@id="san"]/div[2]/div/div[3]/button[4]
    [Teardown]    close browser

导入员工_成功
    [Setup]
    open browser    ${url}
    Maximize Browser Window
    Wait Until Page Contains Element    id=mobile
    input text    id=mobile    13264516854
    input text    id=password    123abc
    input text    id=valico    1
    click button    id=loginsub
    Wait Until Page Contains Element    xpath=//*[@id="leftMenuDiv"]/div[2]/div[1]
    click element    xpath=//*[@id="leftMenuDiv"]/div[2]/div[1]
    click element    xpath=//*[@id="leftMenuDiv"]/div[2]/ul[1]/li[2]/a
    Wait Until Page Contains Element    xpath=//*[@id="searchForm"]/div[1]/div[1]/div/button[2]
    click element    xpath=//*[@id="searchForm"]/div[1]/div[1]/div/button[2]
    Wait Until Page Contains Element    xpath=//*[@id="uploadFile"]
    choose file    xpath=//*[@id="uploadFile"]    ${员工模板位置}
    Wait Until Page Contains Element    name=sheetName
    page should contain radio button    name=sheetName
    click button    name=sheetName
    click button    xpath=//*[@id="import"]/div[2]/div/div[3]/button
    Wait Until Page Contains Element    xpath=//*[@id="er"]/div[2]/div/div[3]/button[3]
    click button    xpath=//*[@id="er"]/div[2]/div/div[3]/button[3]
    Wait Until Page Contains Element    //*[@id="san"]/div[2]/div/div[3]/button[4]
    验证导入状态    导入成功
    click button    //*[@id="san"]/div[2]/div/div[3]/button[4]
    [Teardown]    close browser

导入员工_失败
    [Setup]
    open browser    ${url}
    Maximize Browser Window
    Wait Until Page Contains Element    id=mobile
    input text    id=mobile    13264516854
    input text    id=password    123abc
    input text    id=valico    1
    click button    id=loginsub
    Wait Until Page Contains Element    xpath=//*[@id="leftMenuDiv"]/div[2]/div[1]
    click element    xpath=//*[@id="leftMenuDiv"]/div[2]/div[1]
    click element    xpath=//*[@id="leftMenuDiv"]/div[2]/ul[1]/li[2]/a
    Wait Until Page Contains Element    xpath=//*[@id="searchForm"]/div[1]/div[1]/div/button[2]
    click element    xpath=//*[@id="searchForm"]/div[1]/div[1]/div/button[2]
    Wait Until Page Contains Element    xpath=//*[@id="uploadFile"]
    choose file    xpath=//*[@id="uploadFile"]    ${员工模板位置}
    Wait Until Page Contains Element    name=sheetName
    page should contain radio button    name=sheetName
    click button    name=sheetName
    click button    xpath=//*[@id="import"]/div[2]/div/div[3]/button
    Wait Until Page Contains Element    xpath=//*[@id="er"]/div[2]/div/div[3]/button[3]
    click button    xpath=//*[@id="er"]/div[2]/div/div[3]/button[3]
    Wait Until Page Contains Element    //*[@id="san"]/div[2]/div/div[3]/button[4]
    验证导入状态    导入失败
    click button    //*[@id="san"]/div[2]/div/div[3]/button[4]
    [Teardown]    close browser

新增员工
