Feature: US007 Scenario Outline kullanimi

  Scenario Outline: TC01 ConfigReader ile Scenario Oulnine kullanimi

    Given kullanici "<arananUrl>" sayfasina gider
    Then kullanici 3 saniye bekler
    When url`in"<arananKelime>" icerdigini test edelim
    And sayfayi kapatir











    Examples:
      | arananUrl | arananKelime |
      | amazonUrl | amazon       |
      | faceUrl   | face         |
      | google    | google       |
      | brcUrl    | blue         |
