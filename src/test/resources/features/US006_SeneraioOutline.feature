Feature: US006 kullanici amazonda istedigi kelimeleri aratir

  Scenario Outline: TC01 kullanici istedigi kelimeleri aratir
    Given kullanici amazon sayfasina gider
    Then kullanici "<istenenKelime>" icin arama yapar
    Then sonuclarin "<istenenKelimekontrol>"icerdigini test eder
    And sayfayi kapatir







    Examples:
      | istenenKelime | istenenKelimekontrol |
      | nutella       | nutella              |
      | selenium      | senenium             |
      | sql           | sql                  |

    # TestNG deki dataProvider kullanimindaki gibi Cucumberda da Scenario Outline kullaniriz.
# Bu şekilde birden fazla kelimeyi tek seferde aratabiliriz.

   # Feature dosyasinda yazdığımız komutta eğer "" (Tırnak) kullanirsak stepDefinition da parametreli
 # bir method oluşturur. Ve artik stepDefinition'ı kullanmadan Feature dosyasında ""(tırnak) içindeki
 # string'i değiştirerek istediğim kelimeyi aratabilirim.
 # Scenario Outline da ise yine ""(Tırnak) içinde birden fazla kelime aratıcaksam "<>" şeklindeki kullanım ile
 # "<>" içine yazdığım herhangi bir kelimeyi Scenario Outline'ın aşağıda oluşturduğu Examples altında aratmak
 # istediğim kelimeleri yazar ve sırasıyla aratabiliriz