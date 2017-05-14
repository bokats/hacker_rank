class ListNode(object):
    def __init__(self, x):
        self.val = x
        self.next = None

class Solution(object):
    def mergeTwoLists(self, l1, l2):
        """
        :type l1: ListNode
        :type l2: ListNode
        :rtype: ListNode
        """
        if not l1 and not l2:
            return None
        if not l1:
            return l2
        if not l2:
            return l1
        current_node = ListNode(None)
        head = current_node
        while l1 and l2:
            if current_node.val:
                if l1.val < l2.val:
                    current_node.next = ListNode(l1.val)
                    l1 = l1.next
                else:
                    current_node.next = ListNode(l2.val)
                    l2 = l2.next
                if not head.next and current_node.next:
                    head = current_node
                current_node = current_node.next
            else:
                if l1.val < l2.val:
                    current_node = ListNode(l1.val)
                    l1 = l1.next
                else:
                    current_node = ListNode(l2.val)
                    l2 = l2.next
                head = current_node
        while l1:
            if current_node.val is None:
                current_node = ListNode(l1.val)
                head = current_node
            else:
                current_node.next = ListNode(l1.val)
                if not head.next:
                    head = current_node
                current_node = current_node.next
            l1 = l1.next
        while l2:
            if current_node.val is None:
                current_node = ListNode(l2.val)
                head = current_node
            else:
                current_node.next = ListNode(l2.val)
                if not head.next:
                    head = current_node
                current_node = current_node.next
            l2 = l2.next
        return head

# n1 = ListNode(-10)
# n2 = ListNode(-9)
# n1.next = n2
# n3 = ListNode(-6)
# n2.next = n3
# n4 = ListNode(-4)
# n3.next = n4
# np = ListNode(2)
# n4.next = np
# n5 = ListNode(-5)
# n6 = ListNode(-3)
# n5.next = n6
#
# s = Solution()
# r = s.mergeTwoLists(n1, n5)
# while r:
#     print(r.val)
#     r = r.next

def mergeTwoLists1(self, l1, l2):
    dummy = cur = ListNode(0)
    while l1 and l2:
        if l1.val < l2.val:
            cur.next = l1
            l1 = l1.next
        else:
            cur.next = l2
            l2 = l2.next
        cur = cur.next
    cur.next = l1 or l2
    return dummy.next
