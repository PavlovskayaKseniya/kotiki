Description: Task 2;

Meta:
@proxy

Scenario: Sign up scenario with example tables 

Given I am on the main application page
When I click on element located `By.xpath(//a[text()='Sign up'])`
When I enter `<Email>` in field located `By.xpath(//*[@id="email"])`
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I wait until element located `By.xpath(//*[@id="displayName"])` appears
When I click on element located `By.xpath(//*[@id="displayName"])`
When I enter `<FullName>` in field located `By.xpath(//*[@id="displayName"])`
When I click on element located `By.xpath(//button[@type='submit'])`
When I wait until element located `By.xpath(//iframe[@title="recaptcha challenge expires in two minutes"])` appears
Then the page title is 'Sign up - Log in with Atlassian account'

Examples:
|Email                               |FullName                    |
|kipavlovskaya@gmail.com             |Test                        |
|#{generate(Internet.emailAddress)}  |#{generate(Name.fullName)}  |

Scenario: Create a board
Given I am on a page with the URL 'https://trello.com/userworkspace17718680/home'
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/?name=test3&key=44f17f910a0a7d63ff5e6c021fab8f37&token=d4f31f947080e030c8b1cbaf0d853e1c78fed3cab3d283fdb7f9a5359ab1381f'
Then `${responseCode}` is equal to `200`


Scenario: Structure of nested steps

Given I am on the main application page
When the condition '#{eval("<class>"==".font-weight-bold")}' is true I do

|step                                                                                                                |
|When I click on element located `By.xpath(//a[text()='Sign up'])`                                                   |
|When I enter `<Email>` in field located `By.xpath(//*[@id="email"])`                                                |
|When I click on element located `By.xpath(//*[@id="signup-submit"])`                                                |
|When I wait until element located `By.xpath(//*[@id="displayName"])` appears                                        |
|When I click on element located `By.xpath(//*[@id="displayName"])`                                                  |
|When I enter `<FullName>` in field located `By.xpath(//*[@id="displayName"])`                                       |
|When I click on element located `By.xpath(//button[@type='submit'])`                                                |
|When I wait until element located `By.xpath(//iframe[@title="recaptcha challenge expires in two minutes"])` appears |
|Then the page title is 'Sign up - Log in with Atlassian account'                                                    |


