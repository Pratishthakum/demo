*** Variables ***
${PRODUCT_CARD_LINK}          xpath=(//div[@id='ProductGridContainer']/descendant::div[@class='product-card__media relative h-auto']/descendant::a)[5]

${SIZE_DROPDOWN}              xpath=(//select[@class='select'])[2]
${ADD_TO_CART_BUTTON}         xpath=//button[@name='add']
${CLOSE_CART_BUTTON}          xpath=//button[@data-entity-id="Close"]

# Locators for cart verification (TC005 / integration test)
${PRODUCT_NAME_HEADING}       xpath=//section[@id='xtitle']
${CART_ITEM_NAME_LOCATOR}     xpath=//span[@class='title']/a
${CART_ITEM_QUANTITY_INPUT}   xpath=(//input[@type='number'])[1]
${PRODUCT_QUANTITY_INPUT}     xpath=//input[@class='quantity__input']
${SELECTED_SIZE_LABEL}        xpath=(//select[@class='select'])[2]
