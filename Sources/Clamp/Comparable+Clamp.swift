import Foundation

public extension Comparable {
    mutating func clamp(to range: ClosedRange<Self>) {
        self = self.clamped(to: range)
    }

    func clamped(to range: ClosedRange<Self>) -> Self {
        min(max(range.lowerBound, self), range.upperBound)
    }
}
