package stepDefination;

import io.cucumber.java.en.*;
import org.junit.Assert;
import utilities.ConfigReader;
import utilities.Driver;
import utilities.ReusableMethods;

public class FaceBookStepDefinition {

        @Given("kullanici {string} sayfaina gider")
        public void kullanici_sayfaina_gider(String istenenUrl) {
            Driver.getDriver().get(ConfigReader.getProperty(istenenUrl));

        }
        @Then("kullanici {int} saniye bekler")
        public void kullanici_saniye_bekler(Integer istenenSure) {
            ReusableMethods.waitFor(istenenSure);

        }
        @When("url in {string} icerdigini test edelim")
        public void url_in_icerdigini_test_edelim(String istenenUrl) {
            String actualUrl=Driver.getDriver().getCurrentUrl();
            Assert.assertTrue(actualUrl.contains(istenenUrl));

        }

    }


