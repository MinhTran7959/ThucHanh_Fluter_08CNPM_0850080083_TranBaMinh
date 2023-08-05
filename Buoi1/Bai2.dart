
import 'dart:io';

void main() {
  print("Nhập số nguyên:");
  int n = int.parse(stdin.readLineSync()!);
  String result = convertToVietnamese(n);
  print("Số $n được đọc là: $result");
}

String convertToVietnamese(int number) {
  List<String> units = [
    '', 'một', 'hai', 'ba', 'bốn', 'năm', 'sáu', 'bảy', 'tám', 'chín'
  ];
  List<String> suffixes = ['', 'mươi', 'trăm'];
  List<String> groupNames = ['', 'nghìn', 'triệu', 'tỷ'];

  if (number == 0) {
    return 'không';
  }

  String result = '';
  int groupIndex = 0;

  do {
    int group = number % 1000;
    if (group != 0) {
      String groupText = '';
      int unitIndex = 0;

      do {
        int unit = group % 10;
        int suffixIndex = unit != 0 ? unitIndex : -1;
        String unitText = units[unit];
        String suffixText = suffixIndex >= 0 ? suffixes[suffixIndex] : '';

        groupText = '$unitText $suffixText $groupText';

        unitIndex++;
        group = (group ~/ 10);
      } while (group > 0);

      result = '$groupText${groupNames[groupIndex]} $result';
    }

    groupIndex++;
    number = (number ~/ 1000);
  } while (number > 0);

  return result.trim();
}
