/**
 * Definition for singly-linked list.
 */

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);

  @override
  String toString() {
    return "ListNode($val, ListNode(${next?.val}))";
  }
}

class MergeTwoLists {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode? list;

    while (list1 != null) {
      // print("list1.val: ${list1.val}");
      // print("list2.val: ${list2.val}");

      if (list1.val > list2!.val) {
        print(1);
        while (list != null) {
          list = list.next;
        }

        list = list1;
      } else {
        print(2);
        list != null ? list.next = list1 : list = list1;
      }

      list1 = list1.next;
      print(list.toString());
    }

    while (list != null) {
      print(list.toString());
      list = list.next;
    }

    return null;
  }
}
