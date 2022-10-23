import SwiftUI

struct Options: View {
    var body: some View {
        HStack {
            Image("clock").resizable()
            .frame(width: 16, height: 19)
            .padding(.leading, 1)
            Text("|").font(.system(size: 16))
                .padding(.top, -3)

           Image(systemName: "flame.fill")
                .font(.system(size: 17))
                .padding(.leading, 2
                )
        }.frame(width:80, height: 30)
            .background(Color(hex: 0x48987C))
            .cornerRadius(10, corners: .allCorners)
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


