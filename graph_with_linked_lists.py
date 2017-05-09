class Link(object):
    def __init__(self, value = None):
        if value is None:
            self.value = None
        else:
            self.value = value
        self.next = None
        self.prev = None

class LinkedList(object):
    def __init__(self):
        self.head = Link()
        self.tail = Link()
        self.head.next = self.tail
        self.tail.prev = self.head

    def insert(self, value):
        link = Link(value)
        link.next = self.tail
        link.prev = self.tail.prev
        self.tail.prev.next = link
        self.tail.prev = link

def graph_linked_lists(root):
    level = 0
    queue = [[root, level]]
    while queue.length > 0:
        current_node = queue[0][0]
        current_level = queue[0][1]
        if current_level != level:
            linked_list = LinkedList()
            level = current_level
        else:
            linked_list.insert(current_node.value)
        if current_node.left:
            queue.append([current_node.left, level + 1)
        if current_node.right:
            queue.append([current_node.right, level + 1])
        
