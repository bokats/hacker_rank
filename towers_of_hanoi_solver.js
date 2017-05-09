class TowersOfHanoi {
  constructor() {
    this.towers = [[1,2,3,4], [], []];
    this.lastMove = [];
  }

  rearrange() {

  }

  allowedMove(fromTower, toTower) {
    let fromTowerLast = this.peek(fromTower);
    let toTowerLast = this.peek(toTower);
    if ([fromTower, toTower] !== this.lastMove) {
      if (!fromTowerLast) {
        return false;
      } else if (!toTowerLast) {
        return true;
      } else if (fromTowerLast < toTowerLast) {
        return false;
      } else {
        return true;
      }
    }
    return false;
  }

  possibleMoves(towers) {
    let result = [];
    let fromTower = 0;

    while (fromTower < 3) {
      let toTower = 0;
      while (toTower < 3) {
        if (this.allowedMove(fromTower, toTower)) {
          result.push([fromTower, toTower]);
        }
        toTower++;
      }
      fromTower++;
    }
    return result;
  }

  gameOver() {
    if (this.towers[1].length === 4 || this.towers[2].length === 4) {
      return true;
    }
    return false;
  }

  peek(towerIdx) {
    if (this.towers[towerIdx].length > 0) {
      return this.towers[towerIdx][this.towers[towerIdx] - 1];
    } else {
      return false;
    }
  }
}
