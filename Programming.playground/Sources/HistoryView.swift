import Foundation
import SwiftUI

struct HistoryView: View {
    @State var viewOffset1 = CGSize(width: 0, height: 800)
    @State var viewOffset2 = CGSize(width: 0, height: 800)
    @State var viewOffset3 = CGSize(width: 0, height: 800)
    @State var viewOffset4 = CGSize(width: 0, height: 800)
    let dataSource = DataSource.shared
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    VStack {
                        Text("Click on any of the generation below to learn more")
                        ForEach(self.dataSource.historyData, id: \.id) { history in
                            HistoryCellView(history: history)
                                .onTapGesture {
                                    if (history.id == 1) {
                                        self.viewOffset1 = CGSize(width: 0, height: 0.1)
                                    }
                                    if (history.id == 2) {
                                        self.viewOffset2 = CGSize(width: 0, height: 0.1)
                                    }
                                    if (history.id == 3) {
                                        self.viewOffset3 = CGSize(width: 0, height: 0.1)
                                    }
                            }
                        }
                        Button(action: {
                            self.viewOffset4 = CGSize(width: 0 , height: 0.1)
                        })
                        {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 45, height: 45, alignment: .center)
                                .foregroundColor(.green)
                        }
                        Spacer()
                    }
                }.navigationBarTitle(Text("History of Languages"))
            }
            
            
            
            HistoryDetailedView(viewOffset: self.$viewOffset1, proseTitle: "1st Gen Language", proseBody: "The very first language that was used on the first stored-program computer.\n This is the lowest level of programming language. The code is written in 1's and 0's, which correspond to electrical state in a CPU.\n Different computers had different languages, hence the code won't run on any other computer.", animationName: "GS1", headerImageName: "img1.jpg")
                .animation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0))
                .background(VisualBlur(style: .systemMaterialDark))
                .offset(viewOffset1)
            
            HistoryDetailedView(viewOffset: self.$viewOffset2, proseTitle: "2nd Gen Language", proseBody: "This language was developed in the mid-1950s. This generation of language was considered to be a huge leap forward since it used mnemonic codes instead of literal 1's and 0's.\nA command in assembly usually consists of label, opcode and 1 or more operands. Programs written in assembly require a assembler to translate the code into machine code (1's and 0's), because the computer only understands machine code. \nAssembly language is still used today in parts of certain applications like video games to more granualar control over the CPU.", animationName: "GS2", headerImageName: "img2.jpg")
                .animation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0))
                .background(VisualBlur(style: .systemMaterialDark))
                .offset(viewOffset2)
            
            HistoryDetailedView(viewOffset: self.$viewOffset3, proseTitle: "3rd Gen Language", proseBody: "This generation of languages are general purpose. These language are much more programmer-friendly, machine-independent and added support for a lot of features like data types. \nThe first wave of languages introduced in the late 1950s were Fortran, ALGOL and COBOL. These allowed programmers to write complex programs without interfacing with any machine or assembly code. Most popular langaues today consists of C++, Swift, Objective-C which are all general purpose languages. \nPrograms written in high-level langauge needs to be translated to machine code using a compiler or interpreter depending on the language.", animationName: "GS3", headerImageName: "img3.jpg")
                .animation(.spring(response: 0.5, dampingFraction: 0.8, blendDuration: 0))
                .background(VisualBlur(style: .systemMaterialDark))
                .offset(viewOffset3)
            
            AboutMeView()
                .animation(.spring())
                .background(VisualBlur(style: .systemMaterialDark))
                .offset(viewOffset4)
        }
    }
}
