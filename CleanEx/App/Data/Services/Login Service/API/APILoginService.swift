//
//  APILoginService.swift
//  CleanEx
//
//  Created by Gaganjot Singh on 04/03/24.
//

import Foundation

// MARK: API MODELS

struct APILoginRequest: Codable {
  let username: String
  let password: String
}

struct APILoginResponse: Codable {
  let token: String
  let user: APIUser
}

struct LoginPaths {
    
    static var loginResource: LoginResource { .init() }
    
    struct LoginResource {
        let path: String = "/ios/login"
        
        func make(_ body: APILoginRequest) -> Request<APILoginResponse> {
            .init(path: BASE_URL + path, method: .POST, body: body)
        }
    }
}

// MARK: SERVICE

class APILoginService: LoginService {
    
    func login(username: String,
               password: String) async throws -> Session {
        let body = APILoginRequest(username: username, password: password)
        
        let response = try await NetworkManager().send(LoginPaths.loginResource.make(body))
        
        let user = User(identifier: response.value.user.id,
                        firstName: response.value.user.first_name,
                        lastName: response.value.user.last_name)
        let session = Session(token: response.value.token, user: user)
        
        return session
    }
}
