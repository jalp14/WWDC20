import SwiftUI

struct WhyProgramView: View {
    @State var nextView = CGSize(width: 0, height: 800)
    var body: some View {
        ZStack {
            ScrollView {
                VStack {
                    VStack {
                        ZStack {
                            CustomRoundedRectangle(radius: 13, corners: [.bottomLeft, .bottomRight])
                                .foregroundColor(Color.yellow)
                                .frame(width: 500, height: 130)
                            
                            VStack(alignment: .leading) {
                                Text("Why you should learn Programming")
                                    .font(.system(size: 28, weight: .bold))
                                    .lineLimit(3)
                                    .padding(.trailing, 16)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x: 3, y: 3)
                                
                            }
                        }
                        
                        Text("Steve Jobs once said that everybody \"should learn to code...because it makes you think\". \nI strongly agree with this because thinking about something allows you to take a deeper look at it from various persepctives. This is especially helpful when solving problems, which is what programming is about.\n \nProgramming allows you to solve a problem in creative ways. When you are building a program to solve a problem, you don't just start writing code. You breakdown the problem into smaller parts and work on each of those smaller part.\n \nWhile programming, you develop this habit of breaking down every problem to understand it better.\n This results in you thinking logically, which in turn allows you to come up with creative solutions")
                            .font(.system(size: 19))
                            .foregroundColor(Color.white)
                            .padding(.leading, 10)
                            .multilineTextAlignment(.leading)
                        Spacer()
                        
                        
                    }
                    Spacer()
                    Button(action: {
                        self.nextView = CGSize(width: 0, height: 0.1)
                    })
                    {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .frame(width: 45, height: 45, alignment: .center)
                            .foregroundColor(.yellow)
                    }
                    
                }
            }.frame(width: 500, height: 800, alignment: .leading)
            
            HistoryView()
                .animation(.spring())
                .background(VisualBlur(style: .systemMaterialDark))
                .offset(nextView)
            
        }
    }
}

