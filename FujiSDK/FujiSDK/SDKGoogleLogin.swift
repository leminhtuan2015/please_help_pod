import Foundation
import GoogleSignIn

class SDKGoogleLogin: NSObject, GIDSignInUIDelegate, GIDSignInDelegate {
    
    private var vc: UIViewController = UIViewController()
    
    init(vc: UIViewController) {
        super.init()
        
        self.vc = vc
        GIDSignIn.sharedInstance().clientID = "908792584606-kdmed1ipald0020oihopue4q7rninp95.apps.googleusercontent.com"
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().delegate = self
    }
    
    func login() -> Void {
        if GIDSignIn.sharedInstance().currentUser == nil {
            GIDSignIn.sharedInstance().signIn()
        } else {
            print("Google Already logined")
        }
        
    }
    
    func logout() -> Void {
        GIDSignIn.sharedInstance().signOut()
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        // Signin Done
        print("GG DONE")
        
        if user != nil {
            print(user.profile.email)
        }
    }
    
    func sign(inWillDispatch signIn: GIDSignIn!, error: Error!) {
        print("GG inWillDispatch")
    }
    
    func sign(_ signIn: GIDSignIn!, dismiss viewController: UIViewController!) {
        print("GG dismiss")
        vc.dismiss(animated: true, completion: nil)
    }
    
    func sign(_ signIn: GIDSignIn!, present viewController: UIViewController!) {
        print("GG present")
        vc.present(viewController, animated: true, completion: nil)
    }

}
