package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin={"pretty",
                "html:target/default-cucumber-reports.html",
                "json:target/json-reports/cucumber1.json",
                "junit:target/xml-report/cucumber.xml",
                "rerun:TestOutput/failed_scenario.txt"},
        //rerun ile belirttiğimiz dosyada fail olan senaryolar tutulur.
        features = "src/test/resources/features/uiFeatures",
        glue = {"stepDefinitions/uiStepDefs"},
        tags = "",
        dryRun = true,//-->true seçersek scenarioları kontrol eder browser'ı çalıştırmaz
        monochrome = true//-->true kullanırsak konsoldaki çıktılar tek renk(siyah) olur
)

public class Runner {
}
    /*
     Runner Class'ı TestNG'deki XMl mantığı ile çalışır. Çalıştırmak istediğimiz senartolara tag belirtiriz
    ve belirttiğimiz tag'ları çalıştırır. XMl deki gibi istediğimiz testleri çalıştırmak için kullanırız.
    Runner class body'si boştur ve runner class'ını ekleyeceğimiz notasyonlar aktive eder.
     Bu class'da kullanacağımız 2 adet notasyon vardır
    -@RunWith(Cucumber.class)  notasyonu Runner class'ına çalışma özelliği ekler.
    Bu notasyon olduğu için Cucumber frameworkumuzde Junit kullanmayı tercih ederiz
    -@CucumberOptions notasyonu içinde
    features : Runeer dosyasının feature dosyasını nereden bulacağını tarif eder
    glue : stepDefinitions yolunu belirtiriz
    tags : Hangi tag'i çalıştırmak istiyorsak onu belli eder
    dryRun : iki seçenek vardır
    dryRun = true; dersek testimizi çalıştırmadan eksik adımları bize verir
    dryRun = false; testlerimizi driver ile çalıştırır.
     */

