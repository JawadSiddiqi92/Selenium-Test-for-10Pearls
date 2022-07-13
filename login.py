import time

from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By

driver = webdriver.Chrome(ChromeDriverManager().install())
driver.maximize_window()
driver.get("https://www.saucedemo.com/")
time.sleep(2)
username = driver.find_element(By.XPATH, '(//input[@id="user-name"])[1]').send_keys("standard_user")
password = driver.find_element(By.XPATH, '(//input[@id="password"])[1]').send_keys("secret_sauce")
click_btn = driver.find_element(By.XPATH, '(//input[@id="login-button"])[1]').click()
time.sleep(2)
verify = self.url_verification(driver.current_url)
    
time.sleep(2)
driver.close()
        