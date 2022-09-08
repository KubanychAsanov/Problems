import 'dart:io';

// Will return to this problem.

void main(List<String> args) {
  String? length = stdin.readLineSync();
  String? arrayStr = stdin.readLineSync();

  List<String> array = arrayStr!.trim().split(' ');

  Map<String, List> map = Map<String, List>.fromIterable(
    array,
    key: (item) => item.toString(),
    value: (item) => [],
  );

  for (var i = 0; i < array.length; i++) {
    map[array[i]]!.add(i);
  }

  int count = 1;

  map.forEach((key, value) {
    for (var i = 0; i < map[key]!.length; i++) {
      if (map.keys.contains(map[key]![i].toString())) {
        count += 1;
        break;
      }
    }
  });
  print(map);

  print(count);
}
