const subsets = (nums) => {
  let result = [[]];
  nums = nums.sort();
  let subresult = [];
  let subset;
  for (let i = 0; i < nums.length; i++) {
    for (let j = 0; j < result.length; j++) {
      subset = result[j].slice();
      subset.push(nums[i]);
      subresult.push(subset);
    }
    result = result.concat(subresult);
    subresult = [];
  }
  return result;
};

console.log(subsets([1,2,3]));
