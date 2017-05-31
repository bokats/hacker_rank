const largestRectangleArea = (heights) => {
  let min = heights[0];
  let totalMax = 0;
  let seen = 0;
  let current = [];

  for (let i = 0; i < heights.length; i++) {
    seen++;
    if (heights[i] < min) {
      min = heights[i];
    }
    if (heights[i] < current[0]) {
      current = [heights[i], current[1] + 1];
    }
  }
};
