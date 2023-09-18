package stepDefination;

import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import pages.GuruPage;
import utilities.Driver;

import java.util.List;

public class GuruStepDefinition {


    GuruPage guru = new GuruPage();
    @And("{string} sutunundaki tum degerleri yazdirir")
    public void sutunundakiTumDegerleriYazdirir(String baslik) {

        int index=0;
        for (int i = 0; i < guru.basliklar.size(); i++) {
            if (guru.basliklar.get(i).getText().equals(baslik)){

                System.out.println(guru.basliklar.get(i).getText());
                index=i+1;

                List<WebElement> sutunElementleri=Driver.getDriver().findElements(By.xpath("//tbody//tr//td["+index+"]"));

                for (WebElement w:sutunElementleri) {
                    System.out.println(w.getText());
                }
            }

            
        }

    }

}
