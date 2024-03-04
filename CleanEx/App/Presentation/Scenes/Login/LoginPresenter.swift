import Foundation

// MARK: VIEW

protocol LoginView: AnyObject {
  func showLoader()
  func hideLoader()
  func showError(title: String, message: String)
}

class LoginPresenter {
    
    // MARK: INTERNAL ATTRIBUTES
    
    var loginInput: LoginInput!
    var loginRequest = LoginRequest()
    
    // MARK: PRIVATE ATTRIBUTES
    
    private weak var view: LoginView!
    private var navigator: LoginNavigator!
    
    // MARK: INITIALIZER
    
    init(view: LoginView, navigator: LoginNavigator) {
        self.view = view
        self.navigator = navigator
    }
    
    // MARK: VIEW EVENTS
    
    func didTapSubmitButton(username: String?, password: String?) {
        self.view.showLoader()
        self.loginRequest.username = username
        self.loginRequest.password = password
        self.loginInput.login(requestModel: self.loginRequest)
    }
    
    func didTapCloseButton() {
        self.navigator.close(completion: nil)
    }
}

extension LoginPresenter: LoginOutput {
    
    // MARK: LOGIN OUTPUT
    
    func success(response: LoginResponse) {
        self.view.hideLoader()
        self.navigator.openMainView()
    }
    
    func failure(error: LoginError) {
        self.view.hideLoader()
        
        switch error {
        case .emptyEmail:
            self.view.showError(title: NSLocalizedString("Email Invalid",
                                                         comment: "Invalid email error title"),
                                message: NSLocalizedString("Enter a valid email",
                                                           comment: "Invalid email error message"))
        case .emptyPassword:
            self.view.showError(title: NSLocalizedString("Password Invalid",
                                                         comment: "Invalid pass error title"),
                                message: NSLocalizedString("Enter a valid password",
                                                           comment: "Invalid pass error message"))
        default:
            self.view.showError(title: NSLocalizedString("Error starting session",
                                                         comment: "Generic login error title"),
                                message: NSLocalizedString("An error occurred while starting the session",
                                                           comment: "Generic login error message"))
        }
    }
}
