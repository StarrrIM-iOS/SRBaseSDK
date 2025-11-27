//
//  SRLogKit.swift
//  SRLogKit
//
//  Created by Apple on 2025/11/18.
//

import Foundation
import SwiftyBeaver


public class SRLogKit {
    public static let log = SwiftyBeaver.self
    
    // 初始化输出目标
    public static func setup() {
        let console = ConsoleDestination()
        console.format = "$DHH:mm:ss$d $C$L$c $N.$F:$l - $M"
        log.addDestination(console)
    }
    
    /// 获取调用方 Module 名
    private static func moduleName(file: String = #file) -> String {
        // file example: /Users/.../MyFeatureModule/File.swift
        return URL(fileURLWithPath: file)
            .deletingLastPathComponent()
            .lastPathComponent
    }
    
    /// 包装 info
    public static func info(_ message: Any,
                            file: String = #file,
                            function: String = #function,
                            line: Int = #line) {
        let msg = "\(message)"
        log.info(msg, file: file, function: function, line: line)
        
    }
    
    /// 包装 debug
    public static func debug(_ message: Any,
                             file: String = #file,
                             function: String = #function,
                             line: Int = #line) {
        log.debug("\(message)", file: file, function: function, line: line)
    }
    
    /// 包装 error
    public static func warning(_ message: Any,
                             file: String = #file,
                             function: String = #function,
                             line: Int = #line) {
        log.warning("\(message)", file: file, function: function, line: line)
    }
    
    /// 包装 error
    public static func error(_ message: Any,
                             file: String = #file,
                             function: String = #function,
                             line: Int = #line) {
        log.error("\(message)", file: file, function: function, line: line)
    }
}
