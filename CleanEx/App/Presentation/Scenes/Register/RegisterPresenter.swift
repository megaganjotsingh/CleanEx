import Foundation

// MARK: VIEW

protocol RegisterView: AnyObject {
    func showLoader()
    func hideLoader()
    func showError(title: String, message: String)
}

class RegisterPresenter: RegisterController {
    
    // MARK: INTERNAL ATTRIBUTES
    
    var registerInput: RegisterInput!
    var registerRequest = RegisterRequest()
    
    // MARK: PRIVATE ATTRIBUTES
    
    private weak var view: RegisterView!
    private var navigator: RegisterNavigator!
    
    // MARK: INITIALIZER
    
    init(view: RegisterView, navigator: RegisterNavigator) {
        self.view = view
        self.navigator = navigator
    }
    
    // MARK: VIEW EVENTS
    
    func didTapSubmitButton(username: String?, password: String?, repeatedPasword: String?) {
        self.view.showLoader()
        self.registerRequest.username = username
        self.registerRequest.password = password
        self.registerRequest.repeatedPassword = repeatedPasword
        self.registerInput.register(requestModel: self.registerRequest)
    }
    
    func didTapCloseButton() {
        self.navigator.close(completion: nil)
    }
}

extension RegisterPresenter: RegisterOutput {
    
    // MARK: REGISTER OUTPUT
    
    func success(response: RegisterResponse) {
        self.view.hideLoader()
        self.navigator.openMainView()
    }
    
    func failure(error: RegisterError) {
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
        case .emptyRepeatedPassword:
            self.view.showError(title: NSLocalizedString("Invalid Repeated Password",
                                                         comment: "Invalid repeated pass error title"),
                                message: NSLocalizedString("Enter a repeated valid password",
                                                           comment: "Invalid repeated pass error message"))
        case .passwordsNotMatch:
            self.view.showError(title: NSLocalizedString("Password did not match",
                                                         comment: "Not match pass error title"),
                                message: NSLocalizedString("Make sure the passwords match",
                                                           comment: "Not match pass error message"))
        default:
            self.view.showError(title: NSLocalizedString("Error in registration",
                                                         comment: "Generic Register error title"),
                                message: NSLocalizedString("An error occurred while registering",
                                                           comment: "Generic Register error message"))
        }
    }
}
