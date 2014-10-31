Feature: Calculate stock productivity
  In order to manage and estimate my stock
  I must be able to calculate and store stock data 
 
Scenario: Calculate prices
  Given The web application runs on Heroku 
 
  When I open the application url
  Then I must see the front page with application title "Stock productivity calculator"
 
  When I click "Enter new stock"
  Then I must see the page with title "Enter stock details" 
  And I must be able to enter the following values:
    | Stock name | Company XYZ | required string  |
    | Price      | 2.00        | required decimal |
    | Quantity   | 200         | required integer |
    | Percentage | 3.00        | required decimal |
    | Years      | 10          | required integer | 
  And I press button "Calculate"
  Then I must see the page with title "Calculation result"
  And I must see the original input data:
    | Stock name | Company XYZ | 
    | Price      | 2.00        |
    | Quantity   | 200         |
    | Percentage | 3.00        |
    | Years      | 10          |
  And list of stock values for each year:
    | 0  | 400.00 |
    | 1  | 412.00 |
    | 2  | 424.36 |
    | 3  | 437.09 |
    | 4  | 450.20 |
    | 5  | 463.71 |
    | 6  | 477.62 |
    | 7  | 491.95 |
    | 8  | 506.71 |
    | 9  | 521.91 |
    | 10 | 537.57 |
  And the stock growth is shown as a visual graph
  And the stock data must be saved into the database for later review
 
  When I click "Back"
  Then I must see the page with title "Enter stock details" 
 
Scenario: View exisiting calculations
  Given The web application runs on Heroku 
  Given the system has already calculated stocks  
    | Name         | Price  | Quantity | Percentage | Years |
    | Apple        | 172.00 | 10       | 5.00       | 10    |
    | Microsoft    | 30     | 25       | 1.25       | 5     |
 
  When I open the application url
  Then I must see the front page with application title "Stock productivity calculator"
  And I must see a table of saved stocks:
    | Name         | Price  | Quantity | Percentage | Years |
    | Apple        | 172.00 | 10       | 5.00       | 10    |
    | Microsoft    | 30     | 25       | 1.25       | 5     |
 
  When I click on the calculated line "Company XYZ" 
  Then I must see the already calculated data
 
  When I click "Back"
  Then I must see the front page with application title "Stock productivity calculator"