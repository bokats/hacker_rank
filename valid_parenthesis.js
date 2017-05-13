var isValid = function(s) {
  let current = [];
  for (let i = 0; i < s.length; i++) {
    if (s[i] === "(" || s[i] === "[" || s[i] === "{") {
      current.push(s[i]);
    } else {
      switch (s[i]) {
        case ")":
          if (current[current.length - 1] !== '(') {
            return false;
          } else {
            current.pop();
          }
          break;
        case "]":
          if (current[current.length - 1] !== '[') {
            return false;
          } else {
            current.pop();
          }
          break;
        case "}":
          if (current[current.length - 1] !== '{') {
            return false;
          } else {
            current.pop();
          }
          break;
      }
    }
  }
  if (current.length > 0) {
    return false;
  }
  return true;
};

console.log(isValid("["));
// console.log(isValid("()[]{}"));
// console.log(isValid("(]"));
// console.log(isValid("([)]"));
