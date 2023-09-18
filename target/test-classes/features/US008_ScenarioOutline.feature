Feature: US008 ODEV
  Scenario Outline: TC01 kullanici gecersiz giris yapmali


Given kullanici "brcUrl" anasayfasinda
Then Login yazisina tiklar
Then "<gecersizEmail>" username girer
And "<gecersizPassword>" password girer
And brc Login butonuna basar
Then sayfaya giris yapilamadigini kontrol eder
And kullanici 1 saniye bekler

Examples:
| gecersizEmail | gecersizPassword |
| ayten@gmail.com   | gecersizPassword |
| cuneyt@gmail.com   | gecersizPassword |





  #kullanici gecersiz bilgilerle giris yapar
  #Blue rent a car sitesine gecersiz email ve gcersiz password ile giris yapmayi deneyin
  # Senario Outline ile yapilacak