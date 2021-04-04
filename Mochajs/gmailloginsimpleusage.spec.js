// Generated by Selenium IDE
const { Builder, By, Key, until } = require('selenium-webdriver')
const assert = require('assert')

describe('gmail-login_simpleusage', function() {
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
  async function waitForWindow(timeout = 2) {
    await driver.sleep(timeout)
    const handlesThen = vars["windowHandles"]
    const handlesNow = await driver.getAllWindowHandles()
    if (handlesNow.length > handlesThen.length) {
      return handlesNow.find(handle => (!handlesThen.includes(handle)))
    }
    throw new Error("New window did not appear before timeout")
  }
  it('gmail-login_simpleusage', async function() {
    // Test name: gmail-login_simpleusage
    // Step # | name | target | value | comment
    // 1 | open | https://www.google.com/intl/el/gmail/about/# |  | 
    await driver.get("https://www.google.com/intl/el/gmail/about/#")
    // 2 | setWindowSize | 1054x848 |  | 
    await driver.manage().window().setRect(1054, 848)
    // 3 | click | linkText=Σύνδεση |  | 
    vars["windowHandles"] = await driver.getAllWindowHandles()
    // 4 | selectWindow | handle=${win5202} |  | 
    await driver.findElement(By.linkText("Σύνδεση")).click()
    // 5 | click | id=identifierId |  | 
    vars["win5202"] = await waitForWindow(2000)
    // 6 | type | id=identifierId | testmail11434@gmail.com | 
    await driver.switchTo().window(vars["win5202"])
    // 7 | click | css=.VfPpkd-RLmnJb |  | 
    await driver.findElement(By.id("identifierId")).click()
    // 8 | mouseDownAt | id=identifierId | 73.39999389648438,24.399993896484375 | 
    await driver.findElement(By.id("identifierId")).sendKeys("testmail11434@gmail.com")
    // 9 | mouseMoveAt | id=identifierId | 73.39999389648438,24.399993896484375 | 
    await driver.findElement(By.css(".VfPpkd-RLmnJb")).click()
    // 10 | mouseUpAt | id=identifierId | 73.39999389648438,24.399993896484375 | 
    {
      const element = await driver.findElement(By.id("identifierId"))
      await driver.actions({ bridge: true }).moveToElement(element).clickAndHold().perform()
    }
    // 11 | click | id=identifierId |  | 
    {
      const element = await driver.findElement(By.id("identifierId"))
      await driver.actions({ bridge: true }).moveToElement(element).perform()
    }
    // 12 | type | id=identifierId | testmail1@gmail.com | 
    {
      const element = await driver.findElement(By.id("identifierId"))
      await driver.actions({ bridge: true }).moveToElement(element).release().perform()
    }
    // 13 | click | css=.VfPpkd-RLmnJb |  | 
    await driver.findElement(By.id("identifierId")).click()
    // 14 | click | name=password |  | 
    await driver.findElement(By.id("identifierId")).sendKeys("testmail1@gmail.com")
    // 15 | type | name=password | 345435 | 
    await driver.findElement(By.css(".VfPpkd-RLmnJb")).click()
    // 16 | click | css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > .VfPpkd-RLmnJb |  | 
    await driver.findElement(By.name("password")).click()
    // 17 | close |  |  | 
    await driver.findElement(By.name("password")).sendKeys("345435")
    await driver.findElement(By.css(".VfPpkd-LgbsSe-OWXEXe-k8QpJ > .VfPpkd-RLmnJb")).click()
    await driver.close()
  })
})
