import SwiftUI

struct Tag: View {

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "circle.fill")
                    .font(.system(size: 9))

                    .foregroundColor(Color(hex: 0x81D2D8))
                    .overlay(
                        RoundedRectangle(cornerRadius: 5)
                        .stroke(Color(hex: 0x9BCEC2), lineWidth: 1))
                    .padding(.top, -1)
                Text("jinko").font(.system(size: 13.0))
                    .padding(.top, -3)

            }.foregroundColor(.white)
                .padding(7)
                .padding(.trailing, 5)
                .padding(.leading, 5)
            .background(Color(hex: 0x62AC92))
            .cornerRadius(30.0)
        }

    }

}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag()
            .previewLayout(.sizeThatFits)
            .padding(10)
            .padding(.trailing, 30)
            .padding(.leading, 30)
            .background(Color(hex: 0x67CFAC))

    }
}

