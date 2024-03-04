import Foundation

// MARK: API MODELS

struct APIRegisterRequest: Codable {
    let email: String
    let password1: String
    let password2: String
}

// MARK: SERVICE

class APIRegisterService: RegisterService {
    
    func register(username: String,
                  password: String,
                  repeatedPassword: String,
                  successHandler: @escaping (Session) -> Void,
                  errorHandler: @escaping (RegisterError) -> Void) {
        
        let body = APIRegisterRequest(email: username, password1: password, password2: repeatedPassword)
        
        // network call
    }
}
