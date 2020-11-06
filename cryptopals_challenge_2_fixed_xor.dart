/* Fixed XOR
Write a function that takes two equal-length buffers and produces their XOR combination.

If your function works properly, then when you feed it the string:

1c0111001f010100061a024b53535009181c
... after hex decoding, and when XOR'd against:

686974207468652062756c6c277320657965
... should produce:

746865206b696420646f6e277420706c6179 */

import 'package:convert/convert.dart';
import 'dart:core';

void main() {
  var string1 = '1c0111001f010100061a024b53535009181c';
  var string2 = '686974207468652062756c6c277320657965';

  print(fixed_xor(string1, string2));
}

String fixed_xor(String string1, String string2) {
  var output = '';

  for (var i = 0; i < string1.length; i++) {
    output += hex.encode([
      int.parse(string1[i], radix: 16) ^ int.parse(string2[i], radix: 16)
    ]).toString()[1];
  }
  return output;
}
