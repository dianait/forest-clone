import SwiftUI

struct TinyTan: View {
    var body: some View {
        HStack {
            Spacer()
            Image("tinytan").resizable()
            .frame(width: 51, height: 53)
            .padding(.trailing, 19)
            .padding(.top, 9)
        }
    }
}

struct TinyTan_Previews: PreviewProvider {
    static var previews: some View {
        TinyTan().previewLayout(.sizeThatFits)
            .padding(30)
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .background(Color(hex: 0x67CFAC))
    }
}
