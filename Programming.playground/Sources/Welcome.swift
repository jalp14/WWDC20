import Foundation
import SwiftUI
import PlaygroundSupport


struct WelcomeView: View {
    @State var viewOffset = CGSize(width: 0, height: 800)
    @State var isShowingSecondView = false
    let colorPalatte : [Color] = [.white, .purple, .orange, .green, .pink, .red]
    @State var textTransistion : Int = 0
    @State var colorWheel: Color = .white
    let myTimer = Timer.publish(every: 2, on: .main, in: .common).autoconnect()
    @State var animation: Animation = Animation.easeIn
    @State var isShowingTestView: Bool = false
    var body: some View {
        ZStack {
            
            RoundedRectangle(cornerRadius: 1)
                .foregroundColor(colorWheel)
            VStack {
                HStack {
                    if (textTransistion == 0) {
                        Text("Have you ever wondered")
                            .font(.largeTitle)
                            .bold()
                            .transition(.opacity)
                            .padding()
                    }
                    if (textTransistion == 1) {
                        Text("How the amazing apps on you phone are made ?")
                            .font(.largeTitle)
                            .bold()
                            .transition(.opacity)
                            .padding()
                    }
                    if (textTransistion == 2) {
                        Text("Or Maybe")
                            .font(.largeTitle)
                            .bold()
                            .transition(.opacity)
                            .padding()
                    }
                    if (textTransistion == 3) {
                        Text("How the technology around you works with each other so seamlessly")
                            .font(.largeTitle)
                            .bold()
                            .transition(.opacity)
                            .padding()
                    }
                    if (textTransistion == 4) {
                        Text("The answer to those question is")
                            .font(.largeTitle)
                            .bold()
                            .transition(.opacity)
                            .padding()
                    }
                    if (textTransistion == 5) {
                        Text("Programming")
                            .font(.system(size: 60))
                            .bold()
                            .transition(.scale(scale: 3))
                            .padding()
                    }
                }.onReceive(myTimer, perform: {time in
                    withAnimation(Animation.easeOut(duration: 0.3)) {
                        self.textTransistion = self.textTransistion + 1
                        self.colorWheel = self.colorPalatte[self.textTransistion]
                    }
                    if (self.textTransistion == 5) {
                        self.myTimer.upstream.connect().cancel()
                    }
                })
                // Button
                if (textTransistion == 5) {
                    Button(action: {
                        self.isShowingSecondView.toggle()
                        self.viewOffset = CGSize(width: 0, height: 0.1)
                    })
                    {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 100, height: 100, alignment: .center)
                            .foregroundColor(.purple)
                    }
                }
            }
            DetailedView()
                .background(VisualBlur(style: .systemMaterialDark))
                .animation(.spring())
                .offset(viewOffset)
        }
    }
}



