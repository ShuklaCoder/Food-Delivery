import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            //testing
            ZStack {
                Image("welcom_bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                VStack {
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    Image("app_logo")
                        .resizable()
                        .frame(width: 48, height: 56)
                    
                    Text("Welcome\nto our store")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                        .multilineTextAlignment(.center)
                    
                    Text("Get your groceries in as fast as one hour")
                        .foregroundStyle(Color.white)
                        .font(.system(size: 17, weight: .light))
                        .padding(.bottom, 55)
                    
                    NavigationLink(destination: SignInView()) {
                        Text("Start Shopping")
                            .font(.system(size: 19, weight: .semibold))
                            .foregroundColor(.white)
                            .frame(maxWidth: 350, minHeight: 60)
                            .background(Color.green)
                            .cornerRadius(19)
                    }
                    .padding(.bottom, 105)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.clear, Color.black]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .ignoresSafeArea()
            }
        }
    }
}

#Preview {
    ContentView()
}
