package org.step;

import java.util.concurrent.TimeUnit;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;


public class stepdefinitions {
	
	static WebDriver driver;
	@Given("the user should be in login page")
	public void the_user_should_be_in_login_page() {
		WebDriverManager.chromedriver().setup();
		driver=new ChromeDriver();
		driver.get("https://sakshingp.github.io/assignment/login.html");
		driver.manage().window().maximize();
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		
	  
	}

	@When("the user  has to enter valid {string} and {string}")
	public void the_user_has_to_enter_valid_and(String user1,String pass1) {
	   WebElement user = driver.findElement(By.id("username"));
	   user.sendKeys(user1);
	   WebElement pass = driver.findElement(By.id("password"));
	   pass.sendKeys(pass1);
	}

	@When("the user has to click the login button")
	public void the_user_has_to_click_the_login_button() {
	    WebElement loginbtn = driver.findElement(By.id("log-in"));
	    loginbtn.click();
	}

	@Then("the user has to successfully login into the page")
	public void the_user_has_to_successfully_login_into_the_page() {
		WebDriverWait W=new WebDriverWait(driver,3);
	    W.until(ExpectedConditions.urlContains("home"));
	    Assert.assertTrue("home", driver.getCurrentUrl().contains("home"));
	    System.out.println("Successfully loged in");
	   
	}

	@Then("the user has to click the amount header to sort it.")
	public void the_user_has_to_click_the_amount_header_to_sort_it() {
	 WebElement Header = driver.findElement(By.id("amount"));
	 Header.click();
	 System.out.println("Sorting done");
	}

	@Then("the user has to quit the page")
	public void the_user_has_to_quit_the_page() {
	    driver.quit();
	}


	
		
}
