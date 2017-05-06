def is_matched(expression):
    seen_brackets = []
    opposite_brackets = {")": "(", "]": "[", "}": "{"}
    for bracket in expression:
        if bracket == "(" or bracket == "[" or bracket == "{":
            seen_brackets.append(bracket)
        elif bracket in opposite_brackets.keys():
            if opposite_brackets[bracket] != seen_brackets.pop():
                return False
        else:
            return False

    return True
