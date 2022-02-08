import CEvent

public class RunLoop {
    public static let shared = RunLoop()

    internal let eventBase: OpaquePointer
    private var events: [Event]

    public init() {
        eventBase = event_base_new()
        events = []
    }

    deinit {
        event_free(eventBase)
    }

    public func register(event: Event) {
        event.add()
        events.append(event)
    }

    public func remove(event: Event) {
        // The event instance takes care of removing and Freeing
        // the libevent event from the eventBase
        events = events.filter { !($0 === event) }

        // In case the event wasn't found we remove it from the libevent queue
        // anyway to prevent any other possible glitches from happening.
        event.remove()
    }

    @discardableResult
    public func run() -> Bool {
        guard event_base_dispatch(eventBase) == 1 else { return false }
        return true
    }
}
