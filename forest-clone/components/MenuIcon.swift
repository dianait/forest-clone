import SwiftUI

struct MenuIcon: View {
    var body: some View {
        Image(systemName: "text.justify")
            .foregroundColor(.white)
            .font(.system(size: 25))
    }
}

struct MenuIcon_Previews: PreviewProvider {
    static var previews: some View {
        MenuIcon().previewLayout(.sizeThatFits)
            .padding(30)
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .background(Color(hex: 0x67CFAC))
    }
}
