import 'dart:convert';
import 'package:convert/convert.dart';

/*Convert hex to base64
The string:
49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d
Should produce:
SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t*/

void main() {
  var string =
      '49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d';
  print(Convert_hex_to_base64(string));
}

String Convert_hex_to_base64(String hex_string) {
  return base64Encode(hex.decode(hex_string));
}
