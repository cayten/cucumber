Feature: US017 Class Work

  Scenario: explicitly wait
    Given kullanici "demoqaUrl" anasayfasinda
    Then kullanici Will enable bes seconds butonunun enable olmasini bekler
    And kullanici Will enable bes seconds butonunun enable oldugunu test eder

    When kullanici Visible After bes seconds butonunun gorunur olmasini bekler
    And kullanici Visible After bes seconds butonunun gorunur oldugunu test eder
