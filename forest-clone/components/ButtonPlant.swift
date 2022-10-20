import SwiftUI

struct ButtonPlant: View {
    var body: some View {
        Button(action: {
            print("Plant")
        }, label: {
            Text("Plant")
        })
        .padding(10)
        .frame(width: 130)
        .foregroundColor(.white)
        .background(Color(hex: 0x52A386))
        .overlay(
        Rectangle().frame(height: 4)
        .foregroundColor(Color(hex: 0x358368)), alignment: .bottom)
        .cornerRadius(5.0)
    }
}

struct ButtonPlant_Previews: PreviewProvider {
    static var previews: some View {
        ButtonPlant()
    }
}
