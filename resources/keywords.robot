*** Settings ***
Library             Dialogs
Library             QWeb
Library             String


*** Variables ***
${BROWSER}                  chrome


*** Keywords ***
Setup Browser
    Open Browser    about:blank    ${BROWSER}
    
	
End suite
    Close All Browsers
    Sleep    2

Appstate
	[Documentation]    Appstate handler
	[Arguments]        ${state}
	${state}=            Convert To Lowercase    ${state}
	Run Keyword If      '${state}' == 'homepage'
	...               HomePage

HomePage
	GoTo    https://its-stg-itsstore.sparkred.com/
	WriteText               cortzuser\t
   	WriteText               p0o!0pen\n
	ClickText		Sign In

