Zipcodr
=======
A library for looking up zip codes and their associated info based on mlightner's [zip codes](https://github.com/mlightner/zip_codes) library with some improvements/bug fixes.

Install
-------
 `gem install zipcodr`

---

Usage
-----
  `require 'zipcodr`
  `Zipcodr::find('94720')         # returns a ZipCode object.`
  `Zipcodr::find('94720').zip     # returns a zip code string.`
  `Zipcodr::find('94720').city    # returns a city string.`
  `Zipcodr::find('94720').state   # returns a state short code string.`
  `Zipcodr::find('94720').county  # returns a county string.`
  `Zipcodr::find('94720').long    # returns a longitude integer.`
  `Zipcodr::find('94720').lat     # returns a latitude integer.`
  `Zipcodr::find('94720').valid?  # returns a validity boolean.`

---
