import SwiftUI
import PlaygroundSupport

struct DetailedView: View {
    @State var nextView = CGSize(width: 0, height: 800)
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                        ZStack {
                            CustomRoundedRectangle(radius: 13, corners: [.bottomLeft, .bottomRight])
                            .foregroundColor(Color.orange)
                            .frame(width: 500, height: 130)
                            
                                Text("Programming Overview")
                                    .font(.system(size: 33, weight: .bold))
                                    .lineLimit(3)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x: 3, y: 3)
                        }
                        
                        Text("Programming is a way to give instructions to the machine to perform a task. These instructions (code) are written by programmers to perform a multitude of tasks. \nIn layman's terms programming is used to solve problems. Problems that are easy or complex. \nThere is no right or wrong way to solve a problem, in the same way that there is no right or wrong way to open an app in your phone; You can open it manually by tapping the icon or ask a voice assistant like Siri to open it for you.\n \nThere are multiple ways to approach and solve a problem and one way may seem better than another, but that doesn’t mean the other is wrong! With the right skills and experience, a programmer can craft software to solve an unlimited number of problems – from telling you when your next train will arrive to playing your favourite music. The possibilities are constrained only by your imagination. That’s why I love programming.")
                            .font(.system(size: 19))
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading) 

//                        .padding()
//                        .frame(width: 500, height: 800, alignment: .leading)
                    
                    Button(action: {
                        self.nextView = CGSize(width: 0, height: 0.1)
                    })
                    {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 45, height: 45, alignment: .center)
                            .foregroundColor(.red)
                    }
                    Spacer()
                }
            }
            WhyProgramView()
            .background(VisualBlur(style: .systemMaterialDark))
            .animation(.spring())
            .offset(nextView)
        }
    }
}
