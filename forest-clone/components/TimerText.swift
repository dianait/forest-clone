import SwiftUI

struct TimerText: View {
    @Binding var temperatureValue: CGFloat
    var body: some View {
        Text("\(String.init(format: "%.0f", temperatureValue)):00")
           .foregroundColor(.white)
           .font(Font.custom("RobotoMono-Thin",size: 75))
    }
}


struct TimerText_Previews: PreviewProvider {
    static var previews: some View {
        TimerText(temperatureValue: .constant(CGFloat(10.0))).previewLayout(.sizeThatFits)
            .padding(30)
            .padding(.trailing, 20)
            .padding(.leading, 20)
            .background(Color(hex: 0x67CFAC))
    }
}
