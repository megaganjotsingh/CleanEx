import UIKit

class LandingViewController: UIViewController {

  // MARK: OUTLETS

  @IBOutlet weak var logoImageView: UIImageView!
  @IBOutlet weak var loginButton: UIButton!
  @IBOutlet weak var registerButton: UIButton!

  // MARK: INTERNAL ATTRIBUTES

  var presenter: LandingPresenter!

  // MARK: VIEW LIFE CYCLE

  override func viewDidLoad() {
    super.viewDidLoad()
    customize()
    presenter.didLoadView()
  }

  // MARK: PRIVATE METHODS

  private func customize() {
    view.backgroundColor = Constants.Colors.primaryLightColor
    loginButton.setTitle(Constants.Strings.Authentication.loginLabel, for: .normal)
    loginButton.layer.cornerRadius = loginButton.frame.height / 2
    loginButton.backgroundColor = Constants.Colors.primaryColor
    loginButton.setTitleColor(Constants.Colors.primaryTextColor, for: .normal)
    registerButton.setTitle(Constants.Strings.Authentication.registerLabel, for: .normal)
    registerButton.layer.cornerRadius = registerButton.frame.height / 2
    registerButton.backgroundColor = Constants.Colors.primaryColor
    registerButton.setTitleColor(Constants.Colors.primaryTextColor, for: .normal)
  }

  // MARK: VIEW EVENTS
  
  @IBAction func didTapLoginButton(_ sender: Any) {
    presenter.didTapLoginButton()
  }

  @IBAction func didTapRegisterButton(_ sender: Any) {
    presenter.didTapRegisterButton()
  }
}

extension LandingViewController: LandingView {

  // MARK: LANDING VIEW

  func showButtos() {
    loginButton.isHidden = false
    registerButton.isHidden = false
  }

  func hideButtons() {
    loginButton.isHidden = true
    registerButton.isHidden = true
  }
}
