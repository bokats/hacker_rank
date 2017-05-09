class Player:
    def __init__(self, name, score):
        self.name = name
        self.score = score

    def comparator(player_a, player_b):
        if player_a.score > player_b.score:
            return -1
        elif player_b.score > player_a.score:
            return 1
        else:
            compare_names(player_a, player_b)

    def compare_names(player_a, player_b):
        for i in range(len(player_a.name)):
            if player_a.name[i] < player_b.name[i]:
                return -1
            elif player_b.name[i] < player_a.name[i]:
                return 1

        if len(player_a.name) < len(player_b.name):
            return -1
        elif len(player_a.name) > len(player_b.name):
            return 1
        else:
            return 0


# p1 = Player('bo', 1)
# p2 = Player('bof', 2)
# print(Player.comparator(p1, p2))
