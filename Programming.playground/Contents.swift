import PlaygroundSupport
import UIKit
import SwiftUI


let myCustView = UIHostingController(rootView: IntroView())
myCustView.preferredContentSize = CGSize(width: 500, height: 800)

PlaygroundPage.current.liveView = myCustView
