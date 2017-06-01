var isValidBST = function(root) {
  if (root.left) {

  }
};

const checkSubtree = (node,left) => {
  let stack = [];
  let current_node;
  if (left) {
    stack.push(node.left);
    while (stack.length > 0) {
      current_node = stack.pop();
      if (current_node.value > node.value) {
        return false;
      }
      if (current_node.left) {
        stack.push(current_node.left);
      }
      if (current_node.right) {
        stack.push(current_node.right);
      }
    }
  } else {
    stack.push(node.right);
    while (stack.length > 0) {
      current_node = stack.pop();
      if (current_node.value < node.value) {
        return false;
      }
      if (current_node.left) {
        stack.push(current_node.left);
      }
      if (current_node.right) {
        stack.push(current_node.right);
      }
    }
  }
  return true;
};
