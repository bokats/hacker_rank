class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def remove_nth_from_end(head, n)

  if n == 1 && head.next.nil?
    return []
  end
  link_before_delete = nil
  count = 0
  current_link = head

  while current_link
    if current_link.next
      current_link = current_link.next
    else
      current_link = nil
    end
    if count - n >= 0
      if link_before_delete.nil?
        link_before_delete = head
      else
        link_before_delete = link_before_delete.next
      end
    end
    count += 1
  end
  if count - n == 0
    temp_head = head.next
    head.next = nil
    head = temp_head
  elsif link_before_delete.next.nil?
    link_before_delete.next = nil
  else
    link_before_delete.next = link_before_delete.next.next
  end
  head
end

# l1 = ListNode.new(1)
# l2 = ListNode.new(2)
# l1.next = l2
# l3 = ListNode.new(3)
# l2.next = l3

p remove_nth_from_end(l1, 3)

# Better Python Solution

# class Solution:
#     def removeNthFromEnd(self, head, n):
#         fast = slow = head
#         for _ in range(n):
#             fast = fast.next
#         if not fast:
#             return head.next
#         while fast.next:
#             fast = fast.next
#             slow = slow.next
#         slow.next = slow.next.next
#         return head
