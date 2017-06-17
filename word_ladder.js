// var ladderLength = function(beginWord, endWord, wordList) {
//   let steps = 1;
//   let wordList_set = new Set([]);
//   for (let i = 0; i < wordList.length; i++) {
//     wordList_set.add(wordList[i]);
//   }
//
//   let testWord;
//   while (beginWord !== endWord) {
//     for (let i = 0; i < beginWord.length; i++) {
//       testWord = beginWord.slice(0,i) + endWord[i] + beginWord.slice(i + 1, beginWord.length);
//       if (wordList_set.includes(testWord)) {
//         beginWord = testWord;
//         wordList_set.delete(testWord);
//         steps ++;
//         break;
//       } else {
//
//       }
//     }
//   }
// };

// ladderLength('hit', 'cog',["hot","dot","dog","lot","log","cog"]);


const addTwo = (x) => {
  let firstNum = x;
  const sumNumbers = (y) => {
    return x + y;
  };
  return sumNumbers;
};

console.log(addTwo(1)(6));
