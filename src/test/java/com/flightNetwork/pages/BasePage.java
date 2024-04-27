package com.flightNetwork.pages;

import com.flightNetwork.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.PageFactory;


public class BasePage {
    public BasePage(){

        PageFactory.initElements(Driver.getDriver(),this);
    }

    public WebElement getButtons(String buttonName){
        String setButton = "//button[text()='"+buttonName+"']";

        System.out.println("setButton = " + setButton);

        return Driver.getDriver().findElement(By.xpath(setButton));
    }

}
