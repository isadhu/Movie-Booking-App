//
//  Ticket.swift
//  MovieBooking
//
//  Created by Sadhu on 7/8/23.
//

import SwiftUI

struct Ticket: View {
    
    @State var title = "Thor"
    @State var subtitle = "Love And Thunder"
    @State var top = "thor-top"
    @State var bottom = "thor-bottom"
    @Binding var height: CGFloat
    
    
    var gradient = [Color("cyan"), Color("cyan").opacity(0), Color("cyan").opacity(0)]
    
    var body: some View {
        
        VStack(spacing: 0.0) {
            
            VStack(spacing: 4.0) {
                
                Text(title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text(subtitle)
                
            }
            .padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 30))
            .frame(width: 250, height: 325, alignment: .top)
            .foregroundColor(.white)
            .background(
                Image(top)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            )
            .mask(
                Image(top)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            )
            .overlay{
                RoundedRectangle(cornerRadius: 40)
                    .stroke(LinearGradient(colors: gradient, startPoint: .topLeading, endPoint: .bottomTrailing), style: StrokeStyle(lineWidth: 2))
            }
            .cornerRadius(40, corners: [.topLeft, .topRight])
            
            Spacer(minLength:  height)
            
            VStack(spacing: 10.0) {
                Line()
                    .stroke(style: StrokeStyle(lineWidth: 2, dash: [7]))
                    .frame(width: 200, height: 1)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                
                HStack(spacing: 20.0){
                    HStack(spacing: 4.0){
                        Text("Date:")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("July 8")
                            .foregroundColor(.black)
                    }
                    
                    HStack(spacing: 4.0){
                        Text("Time:")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("8 P.M. ")
                            .foregroundColor(.black)
                    }
                }
                
                HStack(spacing: 20.0){
                    HStack(spacing: 4.0){
                        Text("Row:")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("July 8")
                            .foregroundColor(.black)
                    }
                    
                    HStack(spacing: 4.0){
                        Text("Seats:")
                            .fontWeight(.medium)
                            .foregroundColor(Color("lightPurple"))
                        
                        Text("9, 10")
                            .foregroundColor(.black)
                    }
                }
                
                Image("code")
            }
            .frame(width: 250, height: 135, alignment: .top)
            .background(.ultraThinMaterial)
            .background(
                Image(bottom)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            )
            .mask(
                Image(bottom)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            )

            
        }
        .frame(height: 460)
        .font(.footnote)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Ticket(height: .constant(0))
}

//struct Ticket_Previews: PreviewProvider {
//    static var previews: some View{
//        Ticket(height: .constant(0))
//    }
//}
