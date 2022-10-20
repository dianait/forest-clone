import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Menu")
                Text("reloj - Fuego")
                Text("Monedas")
            }
            .padding()
            Text("Start planting today!")
                .foregroundColor(.white)
                .padding()
            Text("Reloooooj")
            Spacer()
            Tag()
            Timer()
            ButtonPlant()
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: 0x5CAF72))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

