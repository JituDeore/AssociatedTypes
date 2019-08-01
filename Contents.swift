import UIKit

var str = "Hello, playground"

protocol NormalProtocol{
    var items: [String] { get set }
    mutating func add(item: String)
}
extension NormalProtocol{
    mutating func add(item: String){
        items.append(item)
    }
}

class StudentDBClass: NormalProtocol{
    var items = [String]()
}

var student = StudentDBClass()
student.add(item: "A")
student.add(item: "B")
student.add(item: "C")


class EmployeeDB: NormalProtocol{
    var items = [String]()
}

var employee = EmployeeDB()
employee.add(item: "A")
employee.add(item: "B")

print(employee.items)

// Associated Types...
protocol AssociatedTypeProtocol{
    associatedtype DataType
    var items: [DataType] { get set }
    mutating func add(item: DataType)
}

extension AssociatedTypeProtocol{
    mutating func add(item: DataType){
        items.append(item)
    }
}

class StudentDBClass1: AssociatedTypeProtocol{
    var items = [String]()
}

var student1 = StudentDBClass1()
student1.add(item: "A")
student1.add(item: "B")

print(student.items)

class EmployeeDB1: AssociatedTypeProtocol{
    var items = [Int]()
}

var employee1 = EmployeeDB1()
employee1.add(item: 1)
employee1.add(item: 2)

print(employee1.items)

