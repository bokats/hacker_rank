# def hanoi(n, source, helper, target):
#     if n > 0:
#         print('before first call', n, source, helper, target)
#         hanoi(n - 1, source, target, helper)
#         print('after first call', n, source, helper, target)
#         if source:
#             target.append(source.pop())
#         print('before second call', n, source, helper, target)
#         hanoi(n - 1, helper, source, target)
#         print('after second call', n, source, helper, target)
#
# source = [4,3,2,1]
# target = []
# helper = []
# hanoi(len(source),source,helper,target)
#
# print(source, helper, target)

def hanoi(n, source, helper, target):
    print ("hanoi( ", n, source, helper, target, " called")
    if n > 0:
        # move tower of size n - 1 to helper:
        hanoi(n - 1, source, target, helper)
        # move disk from source peg to target peg
        if source[0]:
            disk = source[0].pop()
            print ("moving " + str(disk) + " from " + source[1] + " to " + target[1])
            target[0].append(disk)
        # move tower of size n-1 from helper to target
        hanoi(n - 1, helper, source, target)

source = ([4,3,2,1], "source")
target = ([], "target")
helper = ([], "helper")
hanoi(len(source[0]),source,helper,target)

print (source, helper, target)
