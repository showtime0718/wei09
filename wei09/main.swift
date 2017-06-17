//
//  main.swift
//  wei09
//
//  Created by apple on 2017/6/16.
//  Copyright © 2017年 swift006. All rights reserved.
//

import Foundation

var obj1 = Brad01()
print(obj1.x)

print(Brad02.x1)

var obj2 = Brad02()
Brad03.f2()
print("---bike--")
var bike1 = Bike()
var bike2 = Bike()
var bike3 = Bike()
print(Bike.counter)
print(bike1.counter)
print(bike2.counter)
print(bike3.counter)
print("---bike--")

var obj3 = Super1()
var obj4 = Sub11()
print("__比對__")
var obj5 = Sub12()
print("＿＿＿")
var obj6 = Sub13(1)
print("＿＿＿")
var obj7 = Sub21()
print("____")
var obj8 = Sub22()
print("____")
var obj9 = Sub22(3)
print("____")
var obj10 = Sub31(1)
print("____")
var obj11 = Sub41(x:1.0)
var objb = Sub41(x:1)
var objc = Sub42()
var objd = Sub42(x:1)
print("____")
var myid = TWID("A123456789")
if myid == nil{
    print("xx")
}else{
    print("OK")
}




 ß



