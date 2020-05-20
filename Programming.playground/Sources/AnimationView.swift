import SpriteKit
import SwiftUI

struct AnimationView : UIViewRepresentable {
    let sceneName: String
    class Coordinator: NSObject {var scene: SKScene?
    }
    func makeCoordinator() -> Coordinator {
        // add bindings here
        return Coordinator()
    }
    func makeUIView(context: Context) -> SKView {
        let view = SKView(frame: .zero)
        view.preferredFramesPerSecond = 60
        view.showsFPS = false
        view.showsNodeCount = false

       //load SpriteKit Scene
       guard let aScene = SKScene(fileNamed: sceneName)
       else {
            view.backgroundColor = UIColor.red
            return view
       }
       aScene.scaleMode = .resizeFill
       context.coordinator.scene = aScene
       return view
    }
 
    func updateUIView(_ view: SKView, context: Context) {
       view.presentScene(context.coordinator.scene)
    }
}
