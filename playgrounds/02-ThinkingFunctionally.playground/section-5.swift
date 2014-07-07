func inRange₂(target: Position, ownPosition: Position, range: Double) -> Bool {
   let dx = ownPosition.x - target.x
   let dy = ownPosition.y - target.y
   return sqrt(dx * dx + dy * dy) <= range
}