Feature: US012 Class Work

  Scenario Outline:TC01 kullanici sutun basligi ile liste alabilme
    Given kullanici "guruUrl" anasayfasinda
    Then "<Basliklar>" sutunundaki tum degerleri yazdirir



    Examples:
      | Basliklar          |
      | Company            |
      | Group              |
      | Prev Close (Rs)    |
      | Current Close (Rs) |
      | % Change           |


    Scenario: kullanici sayfayi kapatir
      Given sayfayi kapatir
