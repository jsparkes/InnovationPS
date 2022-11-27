// 'use strict';

shuffleArray = function (array) {
  return function () {
    return array
      .map((value) => ({ value, sort: Math.random() }))
      .sort((a, b) => a.sort - b.sort)
      .map(({ value }) => value);
  };
};

export { shuffleArray };
