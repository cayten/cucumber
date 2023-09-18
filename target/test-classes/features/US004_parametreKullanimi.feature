Feature: US004 Parametre Kullanimi

  Scenario: TC01 Parametre Kullanimi

    Given kullanici "https://www.hepsiburada.com" sayfasinda
    Then kullaici 3 saniye bekliyor
    When url nin "hepsiburada" icerdigini test edelim
    And sayfayi kapatalim