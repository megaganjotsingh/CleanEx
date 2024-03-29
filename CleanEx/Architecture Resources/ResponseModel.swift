//
//  ResponseModel.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

/**
 A response model is responsable for transfer plain data to any plugin the use case have trough the output boundary
 */

protocol ResponseModel {

}

enum ResponseStatus {
  case success
  case failure
}
