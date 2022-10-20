import SwiftUI

struct Timer: View {
    var body: some View {
            Text("25:00")
                .font(.custom("", size: 90))
                .foregroundColor(.white)
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        Timer()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(hex: 0x5CAF72))
    }
}
