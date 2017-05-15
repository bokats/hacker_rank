import math
def solution(A, B):
    if abs(A) > abs(B):
        A, B = B, A
    return (int(math.floor(math.sqrt(B)) - math.ceil(math.sqrt(A)) + 1))

print solution(-25, -5)
