import Foundation

let test = "2708934723098483290".map {
    Int(String($0))!
}

print(mergeSort(test))

func mergeSort<T>(_ values: [T]) -> [T] where T: Comparable {
    guard values.count > 1 else { return values }

    let mid = values.count / 2
    let lhs = mergeSort(Array(values[..<mid]))
    let rhs = mergeSort(Array(values[mid...]))

    return merge(lhs, rhs)
}


func merge<T>(_ lhs: [T], _ rhs: [T]) -> [T] where T: Comparable {
    var result = [T]()
    var i = 0
    var j = 0

    while i < lhs.count && j < rhs.count {
        if lhs[i] <= rhs[j] {
            result.append(lhs[i])
            i += 1
        } else {
            result.append(rhs[j])
            j += 1
        }
    }

    result.append(contentsOf: lhs[i...])
    result.append(contentsOf: rhs[j...])

    return result
}
