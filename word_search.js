const exist = (board, word) => {
  let boardCount = {};
  let wordCount = {};
  let letter;
  for (let row = 0; row < board.length; row++) {
    for (let col = 0; col < board[row].length; col++) {
      letter = board[row][col];
      if (boardCount[letter]) {
        boardCount[letter]++;
      } else {
        boardCount[letter] = 1;
      }
    }
  }

  for (let i = 0; i < word.length; i++) {
    letter = word[i];
    if (wordCount[letter]) {
      wordCount[letter]++;
    } else {
      wordCount[letter] = 1;
    }
  }

  let wordKeys = Object.keys(wordCount);
  for (let i = 0; i < wordKeys.length; i++) {
    letter = wordKeys[i];
    if (!boardCount[letter] || boardCount[letter] < wordCount[letter]) {
      return false;
    }
  }
  return true;
};

console.log(exist(["ab","cd"], 'abcd'));
