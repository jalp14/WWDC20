import SwiftUI

struct AboutMeView: View {
    @State var nextView = CGSize(width: 0, height: 800)
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading) {
                    
                Text("My name is Jalp Desai and I am 21 years old. I am currently in my final year at City, University of London studying Computer Science. \nI love to program in different languages and use new technologies to better lives and make it a bit more easier. \n \nI have been programming for 5 years now. The first language I learnt was Pascal and it helped me understand the basics of procedural programming. \nSince then I have learned many different lanaguages which taught me object oriented programming, data types, API integration and many more. \n \nCurrently I am developing in Swift and using the SwiftUI framework, which is what this playground is written in, to develop various apps. In fact I really love to use SwiftUI so much that I used it for the UI of my app I built for my final year project.")
                    .font(.system(size: 16))
                    .padding(.leading, 10)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 15)
                    
                    
                    HStack {
                        Text("Reference")
                        .font(.system(size: 23, weight: .bold))
                        Spacer()
                    }
                    
                    Text("All the animations and images used for animation are created by me. The images used in the History view are copyright-free images obtained from public domain.\nAll the code is written by me some of which is reused from my previous personal projects.")
                    .font(.system(size: 16))
                    .padding(.leading, 10)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 15)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                    Text("Thank You")
                        .font(.system(size: 23, weight: .bold))
                        Spacer()
                    }
                    
                }.padding(.leading, 15)
                .font(.body)
                Spacer()
            }.navigationBarTitle(Text("About Me"))
        }
    }
}



