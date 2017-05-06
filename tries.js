

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

const fs = require('fs');
const text = fs.readFileSync("./input12.txt").toString('utf-8');
const textByLine = text.split("\n");

let t = new ContactTries();

for(let i = 1; i < textByLine.length; i++) {
  let line = textByLine[i].split(" ");
  if (line[0][0] === "a") {
    t.addWord(line[1]);
  } else {
    console.log(t.findWord(line[1]));
  }
}
