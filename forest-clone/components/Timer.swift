import SwiftUI

struct Timer: View {
    var body: some View {
        ZStack {
                    Rectangle()
                        .fill(Color(hex: 0x51A386))
                        .edgesIgnoringSafeArea(.all)
                    TemperatureControlView()
                }

    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
            Timer()
    }
}

struct TemperatureControlView: View {
    @State var temperatureValue: CGFloat = 0.0
    @State var angleValue: CGFloat = 0.0
    let config = Config(minimumValue: 0.0,
                        totalValue: 120.0,
                        knobRadius: 15.0,
                        radius: 120.0)
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Image("tree").resizable()
                    .frame(width: 230, height: 225)
                    .background(Color(hex: 0xEDEEA5))
                    .cornerRadius(80, corners: .allCorners)

                // FONDO RELLENO 🟡
                Circle()
                    .stroke(Color(hex: 0xD2CD63),
                            style: StrokeStyle(lineWidth: 14))
                    .frame(width: config.radius * 2, height: config.radius * 2)


                // RELLENO VERDE 🟢
                Circle()
                    .trim(from: 0.0, to: temperatureValue/config.totalValue)
                    .stroke(Color(hex: 0x8BC725), lineWidth: 14)
                    .frame(width: config.radius * 2, height: config.radius * 2)
                    .rotationEffect(.degrees(-90))

                // CIRCULO 🟢
                Circle()
                    .fill(Color(hex: 0x8BC725))
                    .frame(width: config.knobRadius * 2, height: config.knobRadius * 2)
                    .padding(10)
                    .offset(y: -config.radius)
                    .rotationEffect(Angle.degrees(Double(angleValue)))
                    .gesture(DragGesture(minimumDistance: 0.0)
                        .onChanged({ value in
                            change(location: value.location)
                        }))
            }
            Spacer()
            Tag()
             Text("\(String.init(format: "%.0f", temperatureValue + 10)):00")
            .font(.system(size: 60))
             .foregroundColor(.white)
        }
    }

    private func change(location: CGPoint) {
        // creating vector from location point
        let vector = CGVector(dx: location.x, dy: location.y)

        // geting angle in radian need to subtract the knob radius and padding from the dy and dx
        let angle = atan2(vector.dy - (config.knobRadius + 10), vector.dx - (config.knobRadius + 10)) + .pi/2.0

        // convert angle range from (-pi to pi) to (0 to 2pi)
        let fixedAngle = angle < 0.0 ? angle + 2.0 * .pi : angle
        // convert angle value to temperature value
        let value = fixedAngle / (2.0 * .pi) * config.totalValue

         if value >= config.minimumValue {
            temperatureValue = value
            angleValue = fixedAngle * 180 / .pi // converting to degree
        }
    }
}

struct Config {
    let minimumValue: CGFloat
    let totalValue: CGFloat
    let knobRadius: CGFloat
    let radius: CGFloat
}

// fondo arbol: #EDEEA5
// fondo tiempo: #D2CD63
// tiempo: #8BC725
