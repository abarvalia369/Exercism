// TODO: define the 'LogLevel' enum, its `init`, and its `shortFormat` method
enum LogLevel: Int {
    case trace = 0
    case debug = 1
    case info = 4
    case warning = 5
    case error = 6
    case fatal = 7
    case unknown = 42

    init(_ s: String){
        switch true {
        case s.contains("[TRC]"): self = .trace
        case s.contains("[DBG]"): self = .debug
        case s.contains("[INF]"): self = .info
        case s.contains("[WRN]"): self = .warning
        case s.contains("[ERR]"): self = .error
        case s.contains("[FTL]"): self = .fatal
        default:  self = .unknown
        }       

    }

    func shortFormat(message: String) -> String {
        return ("\(self.rawValue):\(message)")
    }
}

