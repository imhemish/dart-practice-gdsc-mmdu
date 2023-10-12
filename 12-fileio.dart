import 'dart:io';
// A program to convert all singular 'i' into 'I'

void main() {
  var file = File("input.txt");
  var content = file.readAsStringSync();
  var content_list = content.split(" ");
  content_list = content_list.map((e) => (e == 'i' ? 'I' : e)).toList();
  var content_new = content_list.join(" ");
  var ofile = File("output.txt");
  ofile.writeAsStringSync(content_new);
}
