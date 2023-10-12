import 'dart:io';

void main() {
  List<String> list = [];

  while (true) {
    print("");
    print("""
Enter the operation to perform:
1. Add to list
2. Delete from list
3. Search in list""");

    int operation = int.parse(stdin.readLineSync()!);
    switch (operation) {
      case 1:
        print("");
        print("Enter the element to add: ");
        String element = stdin.readLineSync()!;
        list.add(element);
        break;
      case 2:
        print("");
        print("Here is the list of all elements: ");
        for (var i = 0; i < list.length; i++) {
          print("${i}. ${list[i]}");
        }
        print("Enter the index of element to delete: ");
        int ind = int.parse(stdin.readLineSync()!);
        list.removeAt(ind);
        break;
      case 3:
        print("");
        print("Enter the term to search for: ");
        String query = stdin.readLineSync()!;
        for (var i = 0; i < list.length; i++) {
          String item = list[i];
          if (item.toLowerCase().contains(query.toLowerCase())) {
            print("${i} ${item}");
          }
        }
        break;
    }
  }
}
