function ListNode(val) {
  this.val = val;
  this.next = null;
}

var addTwoNumbers = function(l1, l2) {
  let addToNext;
  if (l1.val + l2.val > 9) {
    addToNext = 1;
  } else {
    addToNext = 0;
  }
  let currentLink = new ListNode((l1.val + l2.val) % 10);
  let result = currentLink;
  let value;
  while (l1.next || l2.next) {
    if (!l1.next) {
      value = l2.next.val + addToNext;
      l2 = l2.next;
    } else if (!l2.next) {
      value = l1.next.val + addToNext;
      l1 = l1.next;
    } else {
      value = l1.next.val + l2.next.val + addToNext;
      l1 = l1.next;
      l2 = l2.next;
    }

    if (value > 9) {
      addToNext = 1;
    } else {
      addToNext = 0;
    }
    currentLink.next = new ListNode(value % 10);
    currentLink = currentLink.next;
  }
  if (addToNext === 1) {
    currentLink.next = new ListNode(1);
  }
  return result;
};

let l1 = new ListNode(9);
l1.next = new ListNode(8);

let l2 = new ListNode(1);
console.log(addTwoNumbers(l1, l2));
