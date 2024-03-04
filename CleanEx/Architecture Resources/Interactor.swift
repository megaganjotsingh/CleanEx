//
//  Interactor.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

/**
 A interactor is responsable for the app specific business rules, known also as interactions.
 A intaractor will execute some steps for achiving a goal.
 A interactor could depend on some data boundries, that would be implemented for some service.
*/

protocol Interactor {
  associatedtype RequestModelType
  func execute(requestModel: RequestModelType)
}
