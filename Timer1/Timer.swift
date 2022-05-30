//
//  Timers.swift
//  AnimationOnSwift
//
//  Created by Tristan Aly on 24/04/2022.
//

import SwiftUI

struct Timers: View {

    var body: some View {
        ZStack{
            LinearGradient(colors: [.red.opacity(0.9),.green.opacity(0.3),.blue.opacity(0.9)], startPoint: .topTrailing, endPoint: .bottomLeading).edgesIgnoringSafeArea(.all)
            
            Progress()
            
            VStack{
                Spacer()
                
                RotateTimer()
                
                HStack(spacing: 80) {
                    Spacer()
                    Button{
                    } label: {
                        Image(systemName: "arrow.clockwise")
                            .font(.system(size: 19))
                            .foregroundColor(.black)
                            .padding()
                            .background()
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
                    }
                    Spacer()
                    Button{} label: {
                        Image(systemName: "bell")
                            .font(.system(size: 19))
                            .foregroundColor(.black)
                            .padding()
                            .background()
                            .clipShape(Circle())
                            .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
                    }
                    Spacer()
                }.padding()
                
            }
        }
        
    }
}

struct Timers_Previews: PreviewProvider {
    static var previews: some View {
        Timers()
    }
}
