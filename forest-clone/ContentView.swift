import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "text.justify")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Spacer()
                Options().padding(.leading, 50)
                Spacer()
                Coins()
            }
            .padding(.leading, 20)
            HStack {
                Spacer()
                Image("tinytan").resizable()
                .frame(width: 50, height: 50)
                .padding(.trailing, 15)
                .padding(.top, 10)
            }

            Text("Start planting today!")
                .foregroundColor(.white)
                .padding(.top, -5)
            Spacer()
            Timer()
            ButtonPlant()
            Spacer()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: 0x51A386))
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



