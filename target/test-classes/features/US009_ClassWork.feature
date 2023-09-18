Feature: US009 Datatables sitesi

  Scenario Outline: TC01 kullanici 5 farkli girisi yapabilmeli
    When kullanici "dataUrl" anasayfasinda
    Then new butonuna basar
    And isim bolumune "<firstname>" yazar
    And kullanici 1 saniye bekler
    And soyisim bolumune "<lastname>" yazar
    And kullanici 1 saniye bekler
    And position bolumune "<position>" yazar
    And kullanici 1 saniye bekler
    And office bolumune "<office>" yazar
    And kullanici 1 saniye bekler
    And extension bolumune "<extension>" yazar
    And kullanici 1 saniye bekler
    And startDate bolumune "<startDate>" yazar
    And kullanici 1 saniye bekler
    And salary bolumune "<salary>" yazar
    And kullanici 1 saniye bekler
    And kullanici create tusuna basar
    When kullanici "<firstname>" ile arama yapar
    And kullanici 1 saniye bekler
    Then isim bolumunde "<firstname>" oldugunu test eder





    Examples:
      | firstname | lastname | position | office   | extension | startDate  | salary |
      | erol      | Kan      | qa       | burdur   | UI        | 2021-10-11 | 20000  |
      | emre      | Can      | tester   | izmir    | api       | 2022-05-05 | 11000  |
      | ahmet     | Kacmaz   | BA       | istanbul | -         | 2022-07-10 | 40000  |
      | cemil     | efe      | PO       | ankara   | -         | 2022-03-12 | 45000  |
      | selim     | Kaya     | Tester   | ankara   | database  | 2022-06-06 | 11000  |

  Scenario: Kullanici Sayfayi kapatir
    Given sayfayi kapatir