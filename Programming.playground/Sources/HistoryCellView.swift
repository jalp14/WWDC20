import Foundation
import SwiftUI

struct HistoryCellView: View {
    @State var history: History = History(id: 0, title: "", color: .white, subtitle: "", subtitleImage: "", headerImage: "")
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 33)
                .foregroundColor(history.color)
                .frame(width: 460, height: 230, alignment: .center)
                .padding()
                .shadow(color: history.color, radius: 3, x: 0, y: 1)
            VStack(alignment: .leading) {
                HStack {
                    Text(history.title)
                    .foregroundColor(.white)
                    .font(.title)
                    .bold()
                    .padding(.leading, 55)
                    .shadow(color: .black, radius: 1, x: 0, y: 0.5)
                    Spacer()
                }
                    
                HStack {
                    Text(history.subtitle)
                    .foregroundColor(.white)
                    .font(.subheadline)
                    .padding(.leading, 55)
                    Spacer()
                }
                HStack {
                    Image(uiImage: UIImage(named: history.headerImage)!)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 420, height: 130)
                    .aspectRatio(contentMode: .fill)
                    .shadow(color: .black, radius: 1, x: 0, y: 1)
                    .padding(.leading, 40)
                    Spacer()
                }
            }
        }
    }
}
