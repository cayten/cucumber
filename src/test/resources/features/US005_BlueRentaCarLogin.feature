Feature: US005 Blue RentaCar Login

  Scenario: TC01 kullanici gecerli bilgilerle girs yapar

    Given kullanici "brcUrl" anasayfasinda
    And kullanici 2 saniye bekler
    Then login yazisina tiklar
    And kullanici 2 saniye bekler
    And gecersiz username girer
    And kullanici 2 saniye bekler
    And gecersiz password girer
    And kullanici 2 saniye bekler
    And Login butonuna basar
    And kullanici 2 saniye bekler
    Then sayfaya giris yapilmadigi kontrol eder
    And sayfayi kapatir