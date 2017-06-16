//
//  Myteacher.swift
//  wei09
//
//  Created by apple on 2017/6/16.
//  Copyright © 2017年 swift006. All rights reserved.
//

import Foundation

class Brad01{
    var x = 10  //物件屬性

}
class Brad02{
    static var x1 = 12   //類別屬性
    static var x2:Int?
    static var x3:Int {
        return x1 * 100
    }
    var x4 = 123
    var x1 = 321
    init(){
        print(x4)
        print(Brad02.x1)//物件歸物件類別歸類別(加static時)
        print(x1) //可直接使用一樣名稱變數
    }
}

class Brad03{
    var x = 100
    static var y = 200
    func f1(){
        x += 1
        Brad03.f2() //可呼叫類別方法
        print("Brad03:f1()")

    }
    static func f1(){
        print("Brad03:static:f1()")
    }

    static func f2(){
        //x += 1 類別級別 無法存取物件級別
        y += 1
        //f1()。 級別不同無法呼叫
        f1()
        
    }
}

class Bike{
    static var counter = 0
    var counter = 0
    init(){
        Bike.counter += 1
        counter += 1
        print("Create a new Bike!")
    }
}
//------------------
//繼承
class Super1{
    init(){
        print("父:init()")
    }
    
}
class Sub11: Super1 {
    // 沒有定義任何init則呼叫老爸的Super1.init
}
class Sub12: Super1 {
    override init(){
        //兒子的建構式要加overrride
        print("子:init()")
    }
}
class Sub13 : Super1{
    init(_ : Int){
        
    }
}
//--------------
class Super2{
    init(){
        print("Super2:init()")
    }
    init(_ : Int){
        print("Super:init(Int)")
    }
    init(_ : Double){
        print("Super:init(Double)")
    }
}
class Sub21: Super2{
    
}
class Sub22: Super2{
    override init(){
        //可以任意位子super.init(4)
        //不能叫兩個super.init(2.0)
        print("Sub22:init()")
        super.init()
    }
    override init(_: Int) {
        super.init()
    }     //不管怎樣一定要叫爸爸
    init(_: String) {
        super.init()
    }
}

//----------------------
class Super3{
    init(){
        print("爸爸.init()")
    }
}
class Sub31 : Super3 {
    override init(){
        print("dosomething")
    }
    convenience init(_ : Int){
        //只要呼叫自己的就要convenience
        print("兒:init(Int)")
        self.init()
    }
    
}
class TWID{
    var id:String?
    convenience init(){
        self.init(false)
    }
    convenience init(_ gender: Bool){
        self.init(gender, 1)
    }
    convenience init(_ area:Int){
        self.init(true, area)
    }
    init(_ gender:Bool , _ area:Int){
        print("main logic")
        self.id = "A123456789"
    }
    init?(_ id:String){
        let a = Int(arc4random_uniform(2))
        if a == 0{
           return nil
        }else{
        self.id = id
        }
    }
}
//------
class Super4{
    init(){print("Super4:init()")}
    required init(x:Int){
    print("Super4:init(Int)")
    }
}

class Sub41:Super4 {
        init(x:Double){
        
        super.init()
    }
     required init(x: Int) {
       super.init()
    }
}
class Sub42:Super4 {
    
}

class Sub421:Sub42{
    override init() {
        super.init()
    }
    required init(x: Int) {
        super.init()
    }
}












