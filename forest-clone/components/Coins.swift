import SwiftUI

struct Coins: View {
    var body: some View {
        ZStack {
            HStack {
                Text("610")
                    .font(.system(size: 13))
                    .foregroundColor(.white)
                    .padding(.trailing, -5)
                Image(systemName: "plus.circle.fill")
                .font(.system(size: 15))
                .foregroundColor(Color(hex: 0xA7DA45))
            } .frame(height: 25)
                .padding(.trailing, 5)
                .padding(.leading, 25)
                .background(Color(hex: 0x44806C))
                .cornerRadius(15, corners: [.topRight, .bottomRight])

            Image("coin").resizable()
                .frame(width: 35, height: 35)
                .padding(.trailing, 65)

        }
    }
}

struct Coins_Previews: PreviewProvider {
    static var previews: some View {
        Coins()
            .previewLayout(.sizeThatFits)
            .padding(10)
            .padding(.trailing, 30)
            .padding(.leading, 30)
            .background(Color(hex: 0x67CFAC))

    }
}


// fondo: #44806C
// icon plus: #A7DA45
