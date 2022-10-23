import SwiftUI

struct Header: View {
    var body: some View {
        VStack {
            HStack {
                MenuIcon()
                Spacer()
                Options()
                    .padding(.leading, 55)
                Spacer()
                Coins()
            }
            .padding(.leading, 10)
            .padding(.top, 8)
             TinyTan()
            Text("Start planting today!")
                .foregroundColor(.white)
                .padding(.top, -5)

        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header().background(Color(hex: 0x67CFAC))
    }
}
