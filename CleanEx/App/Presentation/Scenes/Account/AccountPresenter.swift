import Foundation

// MARK: VIEW

protocol AccountView: AnyObject {
  func showError(title: String, message: String)
}

class AccountPresenter {

  // MARK: INTERNAL ATTRIBUTES

  weak var logoutInput: LogoutInput!
  var logoutRequest = LogoutRequest()

  // MARK: PRIVATE ATTRIBUTES

  private weak var view: AccountView!
  private var navigator: AccountNavigator!

  // MARK: INITIALIZER

  init(view: AccountView, navigator: AccountNavigator) {
    self.view = view
    self.navigator = navigator
  }

  // MARK: VIEW EVENTS

  func didTapProfileOption() {
    self.navigator.pushProfile()
  }

  func didTapLogoutButton() {
    self.logoutInput.logout(requestModel: self.logoutRequest)
  }

}

extension AccountPresenter: LogoutOutput {
  func failure(error: LoadProfileError) {
    self.view.showError(title: NSLocalizedString("No se pudo cerrar sesión",
                                                 comment: "Logout error title"),
                        message: NSLocalizedString("Ocurrio un error al cerrar sesión",
                                                   comment: "Logout error message"))
  }

  func success(response: LogoutResponse) {
    self.navigator.showLanding()
  }
}
