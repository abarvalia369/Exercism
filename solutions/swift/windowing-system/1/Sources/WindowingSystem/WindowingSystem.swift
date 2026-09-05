// TODO: Define the Size struct
struct Size {
    var width: Int = 80
    var height: Int = 60
    mutating func resize(newWidth: Int, newHeight: Int){
        width = newWidth
        height = newHeight
    }
}
// TODO: Define the Position struct
struct Position {
    var x: Int = 0
    var y: Int = 0
    mutating func moveTo(newX: Int, newY: Int) {
        x = newX
        y = newY
    }
}
// TODO: Define the Window class
class Window {
    var title: String = "New Window"
    var screenSize: Size = Size(width: 800, height: 600)
    var size: Size = Size()
    var position: Position = Position()
    var contents: String? 

    init(){
    }

    init(title: String, contents: String?, size: Size = Size(), position: Position = Position()){
        self.title = title
        self.contents = contents
        self.size = size
        self.position = position
    }

    func display() -> String{
        return ("\(title)\nPosition: (\(position.x), \(position.y)), Size: (\(size.width) x \(size.height))\n\(contents ?? "[This window intentionally left blank]")\n")
    }

    func update(text: String?) -> () {
        self.contents = text
    }

    func update(title: String) -> () {
        self.title = title
    }

    func move(to: Position) -> () {
        var mx = screenSize.width - size.width
        var my = screenSize.height - size.height

        position.x = min(max(to.x,0),mx)
        position.y = min(max(to.y,0),my)
    }

    func resize(to: Size) -> () {
        var w = to.width
        var h = to.height
        let mw = screenSize.width - position.x
        let mh = screenSize.height - position.y
        if w < 1{
            size.width = 1
        }
        else if w > mw {
            size.width = mw
        }
        else {
            size.width = w
        }
        if h < 1{
            size.height = 1
        }
        else if h > mh {
            size.height = mh
        }
        else {
            size.height = h
        }
    }

}