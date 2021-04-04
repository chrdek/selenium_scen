# Generated by Selenium IDE
import pytest
import time
import json
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities

class TestGmailloginsimpleusage():
  def setup_method(self, method):
    self.driver = webdriver.Chrome()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def wait_for_window(self, timeout = 2):
    time.sleep(round(timeout / 1000))
    wh_now = self.driver.window_handles
    wh_then = self.vars["window_handles"]
    if len(wh_now) > len(wh_then):
      return set(wh_now).difference(set(wh_then)).pop()
  
  def test_gmailloginsimpleusage(self):
    # Test name: gmail-login_simpleusage
    # Step # | name | target | value | comment
    # 1 | open | https://www.google.com/intl/el/gmail/about/# |  | 
    self.driver.get("https://www.google.com/intl/el/gmail/about/#")
    # 2 | setWindowSize | 1054x848 |  | 
    self.driver.set_window_size(1054, 848)
    # 3 | click | linkText=Σύνδεση |  | 
    self.vars["window_handles"] = self.driver.window_handles
    # 4 | selectWindow | handle=${win5202} |  | 
    self.driver.find_element(By.LINK_TEXT, "Σύνδεση").click()
    # 5 | click | id=identifierId |  | 
    self.vars["win5202"] = self.wait_for_window(2000)
    # 6 | type | id=identifierId | testmail11434@gmail.com | 
    self.driver.switch_to.window(self.vars["win5202"])
    # 7 | click | css=.VfPpkd-RLmnJb |  | 
    self.driver.find_element(By.ID, "identifierId").click()
    # 8 | mouseDownAt | id=identifierId | 73.39999389648438,24.399993896484375 | 
    self.driver.find_element(By.ID, "identifierId").send_keys("testmail11434@gmail.com")
    # 9 | mouseMoveAt | id=identifierId | 73.39999389648438,24.399993896484375 | 
    self.driver.find_element(By.CSS_SELECTOR, ".VfPpkd-RLmnJb").click()
    # 10 | mouseUpAt | id=identifierId | 73.39999389648438,24.399993896484375 | 
    element = self.driver.find_element(By.ID, "identifierId")
    actions = ActionChains(self.driver)
    actions.move_to_element(element).click_and_hold().perform()
    # 11 | click | id=identifierId |  | 
    element = self.driver.find_element(By.ID, "identifierId")
    actions = ActionChains(self.driver)
    actions.move_to_element(element).perform()
    # 12 | type | id=identifierId | testmail1@gmail.com | 
    element = self.driver.find_element(By.ID, "identifierId")
    actions = ActionChains(self.driver)
    actions.move_to_element(element).release().perform()
    # 13 | click | css=.VfPpkd-RLmnJb |  | 
    self.driver.find_element(By.ID, "identifierId").click()
    # 14 | click | name=password |  | 
    self.driver.find_element(By.ID, "identifierId").send_keys("testmail1@gmail.com")
    # 15 | type | name=password | 345435 | 
    self.driver.find_element(By.CSS_SELECTOR, ".VfPpkd-RLmnJb").click()
    # 16 | click | css=.VfPpkd-LgbsSe-OWXEXe-k8QpJ > .VfPpkd-RLmnJb |  | 
    self.driver.find_element(By.NAME, "password").click()
    # 17 | close |  |  | 
    self.driver.find_element(By.NAME, "password").send_keys("345435")
    self.driver.find_element(By.CSS_SELECTOR, ".VfPpkd-LgbsSe-OWXEXe-k8QpJ > .VfPpkd-RLmnJb").click()
    self.driver.close()
  
