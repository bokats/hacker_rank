def longest_paren(string):
    longest = 0
    stack = []
    current_len = 0
    for el in string:
        if el == "(":
            stack.append(el)
        else:
            if len(stack) > 0:
                stack.pop()
                current_len += 2
            else:
                if current_len > longest:
                    longest = current_len
                    current_len = 0

    if current_len > 0 and current_len > longest:
        longest = current_len
        current_len = 0

    return longest

print(longest_paren("((()))"))
