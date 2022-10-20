import SwiftUI

struct Tag: View {
    var body: some View {
        HStack {
            Image(systemName: "circle.fill")
                .font(.system(size: 13.0))
                .foregroundColor(.purple)
            Text("work")
        } .font(.system(size: 20.0))
            .foregroundColor(.white)
            .padding(10)
            .frame(width: 130)
            .background(Color(hex: 0x62AC91))
            .cornerRadius(30.0)

    }
}

struct Tag_Previews: PreviewProvider {
    static var previews: some View {
        Tag()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: 0x5CAF72))
    }
}
