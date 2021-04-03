//
//  NetworkHelperExt.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

extension NetworkHelper{
    
//    func receiveAndDecode(data:Data){
//        print("\n ----- DECODED ----- ")
//        let decoder:JSONDecoder = JSONDecoder()
//        let newObjectSuper:BaseNetworkData = try! decoder.decode(BaseNetworkData.self, from: data)
//        print("newObjectSuper.id: \(newObjectSuper.id)")
//        print("newObjectSuper.msgType: \(newObjectSuper.msgType)")
//        
//        if(newObjectSuper.msgType == .initLevelMsg){
//            let newObject:LoadLevelNetworkData = try! decoder.decode(LoadLevelNetworkData.self, from: data)
//            
//            print("newObject.environment.levelSize: \(newObject.levelConfig.levelEnv.levelSize.toString())")
//            print("newObject.environment.floorType: \(newObject.levelConfig.levelEnv.floorType.toString())")
//            print("newObject.environment.skyBoxType: \(newObject.levelConfig.levelEnv.skyBoxType.toString())")
//            print("newObject.environment.matchDuration: \(newObject.levelConfig.levelEnv.matchDuration.toString())")
//            
//        }else if(newObjectSuper.msgType == .turnMsg){
//            let newObject:TurnNetworkData = try! decoder.decode(TurnNetworkData.self, from: data)
//            print("newObject.turnDir: \(newObject.turnDir)")
//            print("newObject.position: \(newObject.position)")
//            
//        }else if(newObjectSuper.msgType == .initMsg){
//            let newObject:BaseNetworkData = try! decoder.decode(BaseNetworkData.self, from: data)
//            print("newObject.id: \(newObject.id)")
//            print("newObject.msgType: \(newObject.msgType)")
//        }
//    }
//    
    func encodeAndSend(netData:BaseNetworkData)->Data?{
        print(" ----- ENCODED ----- ")
        do{
            let encoder:JSONEncoder = JSONEncoder()
            if(self.dbgMode){
                encoder.outputFormatting = .prettyPrinted
            }
            let encData:Data = try encoder.encode(netData)
            print(String(data: encData, encoding: .utf8)!)
            return encData
        }catch{
            print("Could not encode netData!")
        }
        return nil
    }

}
