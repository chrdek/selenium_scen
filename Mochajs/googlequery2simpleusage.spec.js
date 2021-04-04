// Generated by Selenium IDE
const { Builder, By, Key, until } = require('selenium-webdriver')
const assert = require('assert')

describe('google-query2_simpleusage', function() {
  this.timeout(30000)
  let driver
  let vars
  beforeEach(async function() {
    driver = await new Builder().forBrowser('chrome').build()
    vars = {}
  })
  afterEach(async function() {
    await driver.quit();
  })
  it('google-query2_simpleusage', async function() {
    // Test name: google-query2_simpleusage
    // Step # | name | target | value | comment
    // 1 | open | https://www.google.com/ |  | 
    await driver.get("https://www.google.com/")
    // 2 | setWindowSize | 1054x848 |  | 
    await driver.manage().window().setRect(1054, 848)
    // 3 | type | name=q | selenium webdriver | 
    await driver.findElement(By.name("q")).sendKeys("selenium webdriver")
    // 4 | sendKeys | name=q | ${KEY_ENTER} | 
    await driver.findElement(By.name("q")).sendKeys(Key.ENTER)
    // 5 | click | css=#\_OJppYNyLAfmKjLsPiYKEmAY16 .KA4pGd |  | 
    await driver.findElement(By.css("#\\_OJppYNyLAfmKjLsPiYKEmAY16 .KA4pGd")).click()
    // 6 | click | css=#\_OJppYNyLAfmKjLsPiYKEmAY16 > div |  | 
    await driver.findElement(By.css("#\\_OJppYNyLAfmKjLsPiYKEmAY16 > div")).click()
    // 7 | click | css=.g:nth-child(7) .LC20lb |  | 
    await driver.findElement(By.css(".g:nth-child(7) .LC20lb")).click()
  })
})