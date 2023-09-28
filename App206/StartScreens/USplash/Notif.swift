//
//  Notif.swift
//  App206
//
//  Created by IGOR on 19/09/2023.
//

import SwiftUI

struct Notif: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color("primary")
                .ignoresSafeArea()
            
            VStack {
                
                Image("Not")
                    .resizable()
                    .ignoresSafeArea()
            }
            
            VStack {
                
                Spacer()
                
                VStack {
                    
                    Text("Don’t miss important events")
                        .foregroundColor(.white)
                        .font(.system(size: 28, weight: .semibold))
                        .multilineTextAlignment(.center)
                        .padding()
                        .padding(.top)
                    
                    Text("Turn on notifications and always stay informed")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .regular))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label:  {
                        
                        Text("Next")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                            .padding()
                    })
                    .padding(.top, 60)
                    .padding(.bottom)
                }
                .frame(maxWidth: .infinity)
                .background(Color("bg2"))
            }
        }
    }
}

struct Notif_Previews: PreviewProvider {
    static var previews: some View {
        Notif()
    }
}
