import 'dart:ui';

var colorData = {
  "a": Color.fromRGBO(226, 95, 81, 1),
  "b": Color.fromRGBO(242, 96, 145, 1),
  "c": Color.fromRGBO(187, 101, 202, 1),
  "d": Color.fromRGBO(149, 114, 207, 1),
  "e": Color.fromRGBO(120, 132, 205, 1),
  "f": Color.fromRGBO(91, 149, 249, 1),
  "g": Color.fromRGBO(72, 194, 249, 1),
  "h": Color.fromRGBO(69, 208, 226, 1),
  "i": Color.fromRGBO(38, 166, 154, 1),
  "j": Color.fromRGBO(82, 188, 137, 1),
  "k": Color.fromRGBO(155, 206, 95, 1),
  "l": Color.fromRGBO(212, 227, 74, 1),
  "m": Color.fromRGBO(254, 218, 16, 1),
  "n": Color.fromRGBO(247, 192, 0, 1),
  "o": Color.fromRGBO(255, 168, 0, 1),
  "p": Color.fromRGBO(255, 138, 96, 1),
  "q": Color.fromRGBO(194, 194, 194, 1),
  "r": Color.fromRGBO(143, 164, 175, 1),
  "s": Color.fromRGBO(162, 136, 126, 1),
  "t": Color.fromRGBO(163, 163, 163, 1),
  "u": Color.fromRGBO(175, 181, 226, 1),
  "v": Color.fromRGBO(179, 155, 221, 1),
  "w": Color.fromRGBO(194, 194, 194, 1),
  "x": Color.fromRGBO(124, 222, 235, 1),
  "y": Color.fromRGBO(188, 170, 164, 1),
  "z": Color.fromRGBO(173, 214, 125, 1),
  "ă": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "â": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "đ": Color.fromRGBO(149, 114, 207, 1), // same as "d"
  "ê": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ô": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ơ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ư": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "á": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "à": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ả": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ã": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ạ": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ấ": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ầ": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ẩ": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ẫ": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "ậ": Color.fromRGBO(226, 95, 81, 1), // same as "a"
  "é": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "è": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ẻ": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ẽ": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ẹ": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ế": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ề": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ể": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ễ": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "ệ": Color.fromRGBO(120, 132, 205, 1), // same as "e"
  "í": Color.fromRGBO(38, 166, 154, 1), // same as "i"
  "ì": Color.fromRGBO(38, 166, 154, 1), // same as "i"
  "ỉ": Color.fromRGBO(38, 166, 154, 1), // same as "i"
  "ĩ": Color.fromRGBO(38, 166, 154, 1), // same as "i"
  "ị": Color.fromRGBO(38, 166, 154, 1), // same as "i"
  "ó": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ò": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ỏ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "õ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ọ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ố": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ồ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ổ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ỗ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ộ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ớ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ờ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ở": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ỡ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ợ": Color.fromRGBO(255, 168, 0, 1), // same as "o"
  "ú": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ù": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ủ": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ũ": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ụ": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ứ": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ừ": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ử": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ữ": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ự": Color.fromRGBO(175, 181, 226, 1), // same as "u"
  "ý": Color.fromRGBO(188, 170, 164, 1), // same as "y"
  "ỳ": Color.fromRGBO(188, 170, 164, 1), // same as "y"
  "ỷ": Color.fromRGBO(188, 170, 164, 1), // same as "y"
  "ỹ": Color.fromRGBO(188, 170, 164, 1), // same as "y"
  "ỵ": Color.fromRGBO(188, 170, 164, 1), // same as "y"
};
