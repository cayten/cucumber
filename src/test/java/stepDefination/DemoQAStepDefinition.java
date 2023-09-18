package stepDefination;

import io.cucumber.java.en.*;
import org.junit.Assert;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pages.DemoQaPage;
import utilities.Driver;
import utilities.ReusableMethods;

import java.time.Duration;

public class DemoQAStepDefinition {

    DemoQaPage demoqa = new DemoQaPage();
    WebDriverWait wait = new WebDriverWait(Driver.getDriver(), Duration.ofSeconds(15));
    @When("kullanici Visible After bes seconds butonunun gorunur olmasini bekler")
    public void kullaniciVisibleAfterBesSecondsButonununGorunurOlmasiniBekler() {
        ReusableMethods.waitForVisibility(demoqa.visible,15);

    }

    @And("kullanici Visible After bes seconds butonunun gorunur oldugunu test eder")
    public void kullaniciVisibleAfterBesSecondsButonununGorunurOldugunuTestEder() {
        Assert.assertTrue(demoqa.visible.isDisplayed());
    }
}
