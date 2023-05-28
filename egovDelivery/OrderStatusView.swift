//
//  OrderStatusView.swift
//  egovDelivery
//
//  Created by Tore Amangeldy on 5/28/23.
//

import SwiftUI

struct OrderStatusView_Previews: PreviewProvider {
    static var previews: some View {
        OrderStatusView()
    }
}

struct OrderStatusView: View {
    @State private var orderStatus = 0
    let orderStages = ["Заявка принята", "Курьер назначен", "Курьер забрал посылку", "Доставлено"]
    let stageSymbols = ["envelope", "person", "shippingbox", "checkmark.circle"]
    
    var body: some View {
        NavigationView{
            VStack {
                Text("Cтатус")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 5/255, green: 175/255, blue: 186/255))
                
                    .padding(.top)
                
              //  rgb(138,234,229)
                
                    .foregroundColor(Color(red: 138/255, green: 234/255, blue: 229/255))
                Spacer()
                VStack{
                    ForEach(0..<4) { i in
                        HStack {
                            Image(systemName: stageSymbols[i])
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 70)
                                .foregroundColor(i <= orderStatus ? (Color(red: 5/255, green: 175/255, blue: 186/255)) : Color.gray)
                            
                            VStack(alignment: .leading) {
                                Text(orderStages[i])
                                    .font(.system(size: 24, design: .rounded))
                                    .foregroundColor(Color.black)
                            }
                        }
                        .padding(.horizontal)
                        .frame(maxWidth: 360, alignment: .leading)
                        .background(i <= orderStatus ? Color.blue.opacity(0.15) : Color.gray.opacity(0.2))
                        .cornerRadius(20)
                        .padding(.vertical, 10)
                    }
                }
                
                Spacer()
                
                NavigationLink(destination: MainView()) {
                    Text("Назад")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color(red: 5/255, green: 175/255, blue: 186/255))
                        .cornerRadius(15.0)
                }
                .padding()
                
                
            }
            
            
            
            .background(Color.white.edgesIgnoringSafeArea(.all))
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    orderStatus = 2
                }
            }
            .navigationBarHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}
