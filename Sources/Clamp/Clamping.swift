@propertyWrapper
public struct Clamping<Value: Comparable> {
    var value: Value
    let range: ClosedRange<Value>

    public init(wrappedValue value: Value, _ range: ClosedRange<Value>) {
        self.value = value.clamped(to: range)
        self.range = range
    }

    public var wrappedValue: Value {
        get { self.value }
        set { self.value = newValue.clamped(to: self.range) }
    }
}
