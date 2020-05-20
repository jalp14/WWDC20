import Foundation
import SwiftUI

struct HistoryDetailedView: View {
    @Binding var viewOffset: CGSize
    @State var proseTitle: String = ""
    @State var proseBody: String = ""
    @State var animationName: String = ""
    @State var headerImageName: String = ""
    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    ZStack {
                        Image(uiImage: UIImage(named: headerImageName)!)
                            .resizable()
                            .frame(width: 500, height: 315)
                            .clipShape(CustomRoundedRectangle(radius: 13, corners: [.bottomLeft, .bottomRight]))
                        
                        
                        VStack(alignment: .leading, spacing: 8) {
                            HStack {
                                Text(proseTitle)
                                    .font(.system(size: 33, weight: .bold))
                                    .lineLimit(3)
                                    .foregroundColor(.white)
                                    .shadow(color: .black, radius: 3, x: 3, y: 3)
                                    
                                
                                Button(action: {self.viewOffset = CGSize(width: 0, height: 780)}) {
                                    Image(systemName: "xmark.circle.fill")
                                        .resizable()
                                        .foregroundColor(.pink)
                                        .frame(width: 35, height: 35)
                                }
                            }
                        }
                    }
                    
                }
                Spacer()
                VStack(alignment: .leading) {
                    Text(proseBody)
                        .foregroundColor(.white)
                        .font(.system(size: 19))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding(.bottom, 15)
                    
                    AnimationView(sceneName: animationName)
                    .frame(height: 160)
                    
                    Spacer()
                }.padding()
                    .frame(width: 500, height: 800, alignment: .leading)
            }
        }.offset(viewOffset)
    }
}
