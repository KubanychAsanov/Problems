import 'leetcode/88_merge_sorted_array.dart';

void main(List<String> args) {
  MergeSortedArray mergeSortedArray = MergeSortedArray();

  // mergeSortedArray.merge2([4, 5, 6, 0, 0, 0], 3, [1, 2, 3], 3);
  // mergeSortedArray.merge2([0], 0, [1], 1);
  // mergeSortedArray.merge2([1, 0], 1, [2], 1);
  // mergeSortedArray.merge2([0, 0, 0, 0, 0], 0, [1, 2, 3, 4, 5], 5);
  mergeSortedArray.merge2([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3);
  // mergeSortedArray.merge2([4, 0, 0, 0, 0, 0], 1, [1, 2, 3, 5, 6], 5);
}
