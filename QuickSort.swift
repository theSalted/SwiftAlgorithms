import Foundation

let test = "2708934723098483290".map {
    Int(String($0))!
}

print(quickSort(test))

func quickSort<T: Comparable>(_ values: [T]) -> [T] {
    guard let pivot = values.randomElement() else { return values }

    let less = values.filter { $0 < pivot }
    let equal = values.filter { $0 == pivot }
    let more = values.filter { $0 > pivot }

    return quickSort(less) + equal + quickSort(more)
}
