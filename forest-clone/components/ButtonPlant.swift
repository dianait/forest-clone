import SwiftUI

struct ButtonPlant: View {
    var body: some View {
        ZStack {
            Rectangle().frame(width: 130, height: 10)
            .foregroundColor(Color(hex: 0x268063))
            .cornerRadius(6, corners: [.bottomLeft, .bottomRight])
            .padding(.top, 35)

            Button(action: {
                print("Plant")
            }, label: {
                Text("Plant")
            })
            .padding(10)
            .frame(width: 130, height: 35)
            .foregroundColor(.white)
            .background(Color(hex: 0x67CFAC))
            .cornerRadius(5.0)
        }
    }
}

struct ButtonPlant_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPlant()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: 0x51A386))
    }
}

