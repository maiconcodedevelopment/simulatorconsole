//
//  main.swift
//  LoggerMVP
//
//  Created by ACT on 21/02/22.
//

import Foundation
import OSLog
import os

struct Context{
    
    var file:String
    var function:String
    var line:Int
    var description:String
    
    init(file:String,function:String,line:Int) {
        self.file = file
        self.function = function
        self.line = line
        
        // remove line and function
        description = "\((#file as NSString).lastPathComponent)"
    }
}

class Log{
    
    static let logger = OSLog(subsystem: "Login.main", category: "register")
    
    static func info(msg:String,format:String="",file:String=#file,function:String=#function,line:Int=#line){
        let context = Context(file: file, function: function, line: line)
        os_log("[ℹ️ INFO]: at %@ -> %@",log: logger,type: .default,context.description,msg)
    }
    
    static func warn(msg:String,format:String="",file:String=#file,function:String=#function,line:Int=#line){
        let context = Context(file:file,function:function,line: line)
        os_log("[⚠️ WARN]: at %@ -> %@",log: logger,type:.init(rawValue: 4),context.description,msg)
    }
    
    static func error(msg:String,format:String="",file:String=#file,function:String=#function,line:Int=#line){
        let context = Context(file:file,function:function,line: line)
        os_log("[❌ ERROR]: at %@ -> %@",log: logger,type:.init(rawValue: 4),context.description,msg)
    }
    
}

// logger api
let path = (#file as NSString).lastPathComponent
var formats = ["[%@ %@]: at %@ -> %@","%@ %@ at file: %@ message: %@",
               "(%@ %@) at file (%@) message (%@)",
               "\n%@ %@ \nfile: %@ \nmessage: %@",
               "[%1$@ %2$@ %1$@] file: [%3$@] message: [%4$@]",
               "%1$@ %2$@ %1$@ file: %3$@ message: %4$@"]
let active = false
for i in Array([["🎯","⚠️","ℹ️","❌","✅","💢","💬"],["🟪","🟨","🟦","🟥","🟩","🟧","⬜"],["🐛","⚠️","ℹ️","🔥","📖","⚡","🗣️"],["🟣","🟡","🔵","🔴","🟢","🟠","⚪"]]){
    for v in formats{
        for ic in Array([[i[0],"DEBUG",path],[i[2],"INFO",path],[i[1],"WARN",path],[i[3],"ERROR",path],[i[4],"SUCCESS",path],[i[5],"CRITICAL",path],[i[6],"CHAT",path]]){
            
            if(active){
                print(" is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum")
            }
            let p = String(format: v, ic[0],ic[1],ic[2],"View Controller is with \(ic[1].lowercased())")
            os_log("%@",log: Log.logger,type: .default,p)
            if(active){
                print("On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish.")
            }
        }
    }
}
