// Generated by Selenium IDE
const { Builder, By, Key, until } = require('selenium-webdriver')
const assert = require('assert')

describe('mail-anonym_testaccount1', function() {
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
  it('mail-anonym_testaccount1', async function() {
    // Test name: mail-anonym_testaccount1
    // Step # | name | target | value | comment
    // 1 | open | http://mailnesia.com/ |  | 
    await driver.get("http://mailnesia.com/")
  })
})
