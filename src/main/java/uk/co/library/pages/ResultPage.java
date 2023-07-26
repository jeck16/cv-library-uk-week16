package uk.co.library.pages;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.CacheLookup;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import uk.co.library.utility.Utility;

public class ResultPage extends Utility {

    private static final Logger log = LogManager.getLogger(ResultPage.class.getName());

    public ResultPage() {
        PageFactory.initElements(driver, this);
    }

    @CacheLookup
    @FindBy(xpath = "//h1")
    WebElement resultText;

    public void verifyResultText() throws InterruptedException {
        Thread.sleep(3000);
        if (resultText.isDisplayed()) {
            System.out.println("Result Displayed.");
        } else {
            System.out.println("Result Not Displayed.");
        }
        log.info("Getting ResultText ");
    }
}
