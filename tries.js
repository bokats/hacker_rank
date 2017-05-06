class Node {
    constructor(value) {
        this.value = value;
        this.children = {};
        this.num_visits = 0;
    }
}

class ContactTries {
    constructor() {
        this.root = new Node("*");
    }

    addWord(word) {
        let currentNode = this.root;
        for(let i = 0; i < word.length; i++) {
            if (!currentNode.children[word[i]]) {
                currentNode.children[word[i]] = new Node(word[i]);
            }
            currentNode = currentNode.children[word[i]];
            currentNode.num_visits += 1;
        }
    }

    findWord(subWord) {
        let count = 0;
        let currentNode = this.root;
        for(let i = 0; i < subWord.length; i++) {
            if (currentNode.children[subWord[i]]) {
                currentNode = currentNode.children[subWord[i]];
            } else {
                return count;
            }
        }

        return currentNode.num_visits;

    }
}

let t = new ContactTries();
t.addWord("bo");
t.addWord("bozh");
t.addWord("bozhi");
console.log(t.findWord("b"));
