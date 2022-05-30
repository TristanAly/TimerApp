//
//  RotateTimer.swift
//  AnimationOnSwift
//
//  Created by Tristan Aly on 25/04/2022.
//

import SwiftUI

struct RotateTimer: View {
    
    @State var selectedPickersIndex = 14
    @State var selectedPickersIndex2 = 59
    let selectedHour = Array(0...23)
    let selectedMinute = Array(0...59)
   

    var body: some View {
        VStack{
            HStack{
                Spacer()
            HStack{
                
            Picker("", selection: $selectedPickersIndex) { ForEach(0 ..< selectedHour.count) { num in
                Text("\(self.selectedHour[num])")
                    .tag("\(num)")
            }
            
            }.frame(width: 30, height: 100, alignment: .center)
                .padding()
                .background(.white)
                .compositingGroup()
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .pickerStyle(.inline)
                .shadow(color: .black.opacity(0.3), radius: 4, x: 4, y: 5)
                
            }
                
                
                HStack{
            Picker("", selection: $selectedPickersIndex2) { ForEach(0 ..< selectedMinute.count) { num1 in
                Text("\(self.selectedMinute[num1])")
                    .tag("\(num1)")
            }
            
            }.frame(width: 30, height: 100, alignment: .center)
                .padding()
                .background(.white)
                .compositingGroup()
                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .pickerStyle(.inline)
                .shadow(color: .black.opacity(0.3), radius: 4, x: 4, y: 5)
            }
                Spacer()
            }
        }
    }
}

struct RotateTimer_Previews: PreviewProvider {
    static var previews: some View {
        RotateTimer()
    }
}
