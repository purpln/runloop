//import CMach
//
//class package {
//    var main: Void {
//        //let port = port
//        //print(port, type(port))
//        //print(allocate(port))
//        
//        print(CommandLine.arguments)
//    }
//    
//    var port: UInt32 {
//        var options: mach_port_options_t = .init()
//        var result: mach_port_t = 0
//        let context: mach_port_context_t = 0
//        
//        let ret = mach_port_construct(mach_task_self_, &options, context, &result)
//        if (KERN_SUCCESS != ret) { print("The system has no mach ports available.") }
//        return result
//    }
//    
//    func type(_ port: UInt32) -> UInt32 {
//        var type: mach_port_type_t = 0
//        let ret = mach_port_type(mach_task_self_, port, &type)
//        if (KERN_SUCCESS != ret) { print("Port type not available.") }
//        return type
//    }
//    
//    func allocate(_ port: UInt32) -> Int32 {
//        var result: mach_port_t = 0
//        let ret = mach_port_allocate(mach_task_self_, MACH_PORT_RIGHT_PORT_SET, &result)
//        return ret
//    }
//    
//    func destroy(_ port: UInt32) {
//        let context: mach_port_context_t = 0
//        let ret = mach_port_destruct(mach_task_self_, port, -1, context)
//        if (KERN_SUCCESS != ret) { print("Unable to destruct port.") }
//    }
//}
//package().main
