//
//  main.swift
//  SimpleCalc
//
//  Created by Ted Neward on 10/3/17.
//  Copyright © 2017 Neward & Associates. All rights reserved.
//

import Foundation

public class Calculator {
    public func calculate(_ args: [String]) -> Int {
        if(args.count == 3) {
            switch args[1] {
            case "+":
                return Int(args[0])! + Int(args[2])!
            case "-":
                return Int(args[0])! - Int(args[2])!
            case "/":
                return Int(args[0])! / Int(args[2])!
            case "%":
                return Int(args[0])! % Int(args[2])!
            case "*":
                return Int(args[0])! * Int(args[2])!
            default:
                return 0
            }
        } else {
            switch args[args.count - 1] {
            case "count":
                if args.count == 1 {
                    return 0
                } else {
                    var total = 0
                    for _ in 0...(args.count - 2) {
                        total += 1
                    }
                    return total
                }
            case "avg":
                if args.count == 1 {
                    return 0
                } else {
                    var total = 0
                    for i in 0...(args.count - 2) {
                        total += Int(args[i])!
                    }
                    return total / (args.count - 1)
                }
            case "fact":
                if args.count == 1 {
                    return 0
                } else {
                    var total = 1
                    for i in 1...Int(args[0])! {
                        total *= i
                    }
                    print(total)
                    return total 
                }
            default:
                return 0
            }
        }
    }
    
    public func calculate(_ arg: String) -> Int {
        return calculate( arg.split(separator: " ").map({ substr in String(substr) }) )
    }
}

print("UW Calculator v1")
print("Enter an expression separated by returns:")
let first = readLine()!
let operation = readLine()!
let second = readLine()!
print(Calculator().calculate([first, operation, second]))

