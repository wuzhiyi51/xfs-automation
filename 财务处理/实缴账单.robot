*** Settings ***
Library           Selenium2Library
Library           Screenshot

*** Test Cases ***
上传实缴明细
    open browser    https://dev-sps.xinfushe.com/serviceLogin/serviceProviderLogin    IE
    Wait Until Page Contains Element    id=mobile
    input text    id=mobile    13264516854
    input text    id=password    123abc
    input text    id=valico    1
    click button    id=loginsub
