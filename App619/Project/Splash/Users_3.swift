//
//  Users_3.swift
//  App619
//
//  Created by Вячеслав on 6/12/24.
//

import SwiftUI

struct Users_3: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                Image("users_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                VStack(alignment: .center, spacing: 10, content: {
                    
                    Text("Don’t miss anything")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Don’t miss the most userful information")
                        .foregroundColor(.gray)
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding(.bottom, 45)
                
                HStack {
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("Skip")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.white))
                    })
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Text("Enable Notifications")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                    })
                }
                .padding()
            }
        }
    }
}

#Preview {
    Users_3()
}
