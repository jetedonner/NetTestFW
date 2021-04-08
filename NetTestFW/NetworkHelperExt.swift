//
//  NetworkHelperExt.swift
//  SuakeNetTest
//
//  Created by Kim David Hauser on 01.04.21.
//

import Foundation

extension NetworkHelper{
    
    public func encodeAndSend(netData:BaseNetworkData)->Data?{
        print(" ----- ENCODED ----- ")
        do{
            let encData:Data = try encoder.encode(netData)
            if(self.dbgMode){
                encoder.outputFormatting = .prettyPrinted
                print(String(data: encData, encoding: .utf8)!)
            }
            return encData
        }catch{
            print("Could not encode netData!")
        }
        return nil
    }
    
    public static func encodeAndSend(netData:BaseNetworkData)->Data?{
        print(" ----- ENCODED ----- ")
        do{
            let encData:Data = try NetworkHelper.encoder.encode(netData)
            print(String(data: encData, encoding: .utf8)!)
            return encData
        }catch{
            print("Could not encode netData!")
        }
        return nil
    }
}
