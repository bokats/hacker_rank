class Stack(object):
    def __init__(self, stack = None):
        if stack is None:
            self.stack = []
        else:
            self.stack = stack

    def push(self, el):
        self.stack.append(el)

    def pop(self):
        return self.stack.pop()

    def peek(self):
        return self.stack[-1]

    def is_empty(self):
        return len(self.stack) < 1

def sort_stack(stack):
    new_stack = Stack()
    while not stack.is_empty():
        temp = stack.pop()
        while not new_stack.is_empty() and new_stack.peek() > temp:
            stack.push(new_stack.pop())
        new_stack.push(temp)
    return new_stack.stack

# tests
s = Stack([4,3,1,2])
print(sort_stack(s))
