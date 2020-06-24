*** Settings ***
Resource            ../resources/keywords.robot
Suite Setup          Setup Browser
Suite Teardown       End suite



*** Test Cases ***

LoginAlert     	   
	Appstate       	HomePage   
	HoverText      	Quick Order                      
	VerifyText     	Quick Order   
	ClickText      	Quick Order           
	TypeText       	Item#   Y1004
	TypeText       	Qty   5            
	VerifyInputValue	Item#   Y1004
	VerifyInputValue	Qty   5
	ClickText      	Add to cart                      
	VerifyText     	Shopping Cart   
	VerifyText     	Y1004   
	VerifyText     	$199.95   
	ClickText      	Check Out                        
	VerifyText     	Secure Checkout   
	TypeText       	* E-Mail Address or User ID:   stageits123@gmail.com
	TypeText       	*Password:   123123   
	VerifyInputValue	* E-Mail Address or User ID:   rsivakumar@dss-partners.com
	VerifyInputValue	*Password:   123123
	ClickText      	Login and Checkout               
	VerifyText     	SHIPPING ADDRESS   
	ClickText      	Ship to this Address             
	ClickCheckbox  	 paypal   paypal  
	VerifyInputValue	paypal   paypal  	   
	ClickCheckbox  	Credit Card   
	VerifyInputValue	credit-card   credit-card
	DropDown       	Card Number   Visa
	TypeText       	Card Number   4111111111111111
	VerifyInputValue	Card Number   4111111111111111
	TypeText       	Name On Card   Test
	VerifyInputValue	Name On Card   Test
	TypeText       	CVV/Security Code   123
	DropDown       	Expiration Date   05-May
	DropDown       	Expiration Date   2029
	HoverText      	Review Order                     
	HoverText      	Review Order                     
	ClickText      	Review Order                     REVIEW ORDER
	VerifyText     	ORDER SUMMARY   
	HoverText      	Place Order                      
	ClickText      	Place Order                      PLACE ORDER
