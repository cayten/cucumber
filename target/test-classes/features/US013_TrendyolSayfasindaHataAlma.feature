Feature: US013 Parametre kullanimi
  Scenario: TC01 Parametre kullanimi
    Given kullanici "https://www.trendyol.com" sayfasinda
    Then kullanici 3 saniye bekler
    When url nin "amazon" icerdigini test edelim
    And sayfayi kapatir