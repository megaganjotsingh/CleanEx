// swiftlint:disable nesting
// swiftlint:disable line_length
// swiftlint:disable identifier_name

import Foundation
import UIKit

// MARK: ENVIROMENT CONSTANTS

#if DEV
let BASE_URL = "http://localhost:8000"
#elseif QA
let BASE_URL = "http://localhost:8000"
#else // PROD
let BASE_URL = "http://localhost:8000"
#endif

struct Constants {
    
    struct Colors {
        static let primaryLightColor: UIColor = #colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)
        static let primaryColor: UIColor = #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)
        static let primaryDarkColor: UIColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        
        static let primaryTextColor: UIColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        static let secondaryTextColor: UIColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    }
    
    struct Strings {
        
        struct General {
            static let acceptLabel = NSLocalizedString("Accept", comment: "General string for accept action")
            static let cancelLabel = NSLocalizedString("Cancel", comment: "General string for cancel action")
            static let deleteLabel = NSLocalizedString("Remove", comment: "General string for remove action")
            static let saveLabel = NSLocalizedString("Save", comment: "General string for save action")
            static let selectLabel = NSLocalizedString("Select", comment: "General string for select action")
            static let okDefaultAlertLabel = NSLocalizedString("OK", comment: "General string for ok action")
            static let configurationLabel = NSLocalizedString("Configurations", comment: "General string for configurations")
            static let loadingLabel = NSLocalizedString("Loading...", comment: "General string for loading label")
            static let confirmLabel = NSLocalizedString("Confirm", comment: "General string for confirm action")
            static let sendLabel = NSLocalizedString("Send", comment: "General label for send")
            static let createLabel = NSLocalizedString("Create", comment: "General label for create")
            static let editLabel = NSLocalizedString("Edit", comment: "General label for edit")
            
            struct Errors {
                static let noInternetErrorMessage = NSLocalizedString("No internet", comment: "No internet general error message")
            }
        }
        
        struct Authentication {
            static let loginLabel = NSLocalizedString("Login", comment: "Login button label")
            static let logoutLabel = NSLocalizedString("Logout", comment: "Logout button label")
            static let registerLabel = NSLocalizedString("Register", comment: "Register button label")
            static let emailLabel = NSLocalizedString("Email", comment: "General string for email")
            static let passwordLabel = NSLocalizedString("Password", comment: "General string for password")
            static let repeatPasswordLabel = NSLocalizedString("Repeat Password", comment: "General string for repeat password")
            static let recoverPasswordButtonLabel = NSLocalizedString("Recover Password?", comment: "Recover password button label")
            static let termsAndConditionsLabel = NSLocalizedString("By registering, you accept our conditions and confirm that you read our data policy..",
                                                                   comment: "Terms and Conditions label on register screen")
            static let conditionsLabel = NSLocalizedString("conditions", comment: "Conditions link on register screen")
            static let conditionsLink = "https://www.example.com/termsAndCond.html"
            static let politicsLabel = NSLocalizedString("politics", comment: "Politics link on register screen")
            static let politicsLink = "https://www.example.com/privacyPolicy.html"
            static let emailInputPlaceholder = NSLocalizedString("Email", comment: "Placeholder for email input")
            static let passwordInputPlaceholder = NSLocalizedString("Contraseña", comment: "Placeholder for password input")
            static let repeatPasswordInputPlaceholder = NSLocalizedString("Repeat Password", comment: "Placeholder for repeat password input")
            
            struct Errors {
                static let emailValidationErrorTitle = NSLocalizedString("Email Invalid", comment: "Error title for invalid email input")
                static let emailValidationErrorMessage = NSLocalizedString("Enter a valid password", comment: "Error message for invalid email input")
                static let passwordValidationErrorTitle = NSLocalizedString("Invalid Password", comment: "Error title for invalid password input")
                static let passwordValidationErrorMessage = NSLocalizedString("Enter a valid password", comment: "Error message for invalid password input")
                static let repeatPasswordValidationErrorTitle = NSLocalizedString("Repeat Password", comment: "Error title for invalid repeat password input")
                static let repeatPasswordValidationErrorMessage = NSLocalizedString("Repeat the password", comment: "Error message for invalid repeat password input")
                static let passwordEqualsValidationErrorTitle = NSLocalizedString("Invalid Password", comment: "Error title for passwords not equal validation")
                static let passwordEqualsValidationErrorMessage = NSLocalizedString("The passwords must match", comment: "Error message for passwords not equal validation")
                static let registerErrorTitle = NSLocalizedString("Error on registrar user", comment: "Generic alert title for register error")
                static let registerErrorMessage = NSLocalizedString("There was a problem registering the user.", comment: "Generic alert message for register error")
                static let loginErrorTitle = NSLocalizedString("Error logging in", comment: "Generic alert title for login error")
                static let loginErrorMessage = NSLocalizedString("There was a problem logging in.", comment: "Generic alert message for login error")
            }
        }
        
        struct Account {
            static let accountTitle = NSLocalizedString("My account", comment: "Account title")
            
            struct Profile {
                static let profileTitle = NSLocalizedString("My Profile", comment: "Profile title")
                static let firstNameLabel = NSLocalizedString("First name", comment: "First Name label")
                static let lastNameLabel = NSLocalizedString("Last Name", comment: "Last Name label")
            }
        }
    }
}
