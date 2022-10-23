import SwiftUI

struct Options: View {
    var body: some View {
        HStack {
            Image("clock").resizable()
            .frame(width: 14, height: 19)
            Text("|").font(.system(size: 18))
                .padding(.top, -3)

           Image(systemName: "flame.fill")
                .font(.system(size: 15))
        }.frame(width: 80, height: 25)
            .padding(.trailing, -5)
            .background(Color(hex: 0x48987C))
            .cornerRadius(15, corners: .allCorners)
            .foregroundColor(.white)
    }
}

struct Options_Previews: PreviewProvider {
    static var previews: some View {
        Options().previewLayout(.sizeThatFits)
            .padding(30)
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .background(Color(hex: 0x67CFAC))
    }
}

// fondo: #48987C


