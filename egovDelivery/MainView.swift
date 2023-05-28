import SwiftUI

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct MainView: View {
    @State private var orderNumber = ""
    @State private var stateID = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    // Placeholder for your image
                    Image("egov")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                    
                    Text("Доставка документов")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                }
                .padding(.top, 100)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Номер заявки")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    
                    TextField("65536", text: $orderNumber)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(20.0)
                    
                    Text("ИИН")
                        .font(.headline)
                        .foregroundColor(Color.black)
                    
                    TextField("001206500456", text: $stateID)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(20.0)
                }
                .padding([.leading, .trailing], 27.5)
                
                Spacer()
                
                NavigationLink(destination: OrderStatusView()) {
                    Text("Проверить заявку")
                        .font(.title)
                    
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color(red: 5/255, green: 175/255, blue: 186/255))
                        .cornerRadius(15)
                    
                    
                }
                .padding(.bottom, 50)
            }
            //   rgb(140,233,228)
          //  .background(Color(red: 140/255, green: 233/255, blue: 228/255))
             .background(Color.white)
            .edgesIgnoringSafeArea(.all)
        }
        .navigationBarBackButtonHidden(true)
    }
}

