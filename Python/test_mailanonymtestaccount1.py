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

class TestMailanonymtestaccount1():
  def setup_method(self, method):
    self.driver = webdriver.Chrome()
    self.vars = {}
  
  def teardown_method(self, method):
    self.driver.quit()
  
  def test_mailanonymtestaccount1(self):
    # Test name: mail-anonym_testaccount1
    # Step # | name | target | value | comment
    # 1 | open | http://mailnesia.com/ |  | 
    self.driver.get("http://mailnesia.com/")
  
