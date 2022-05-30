//
//  Progress.swift
//  AnimationOnSwift
//
//  Created by Tristan Aly on 25/04/2022.
//

import SwiftUI


struct Progress: View {
   
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    @State var progress: CGFloat = 0
    @State var count = 15.00
    @State var zAxisRotation = false
    var width = UIScreen.main.bounds.width

    
    var body: some View {
            VStack{
                Spacer()
                ZStack{
                    Circle()
                        .strokeBorder(Color.black,lineWidth: 5.2)
                        .background(Circle().fill(Color.white))
                        .frame(width: 270, height: 270)
                    Circle()
                        .strokeBorder(style: StrokeStyle(lineWidth: 15, dash: [0.0,8.1]))
                        .frame(width: 260, height: 260)
        
                    Rectangle()
                        .fill(.blue)
                        .frame(width: 5, height: width / 5)
                        .offset(y: -110)
                        .rotationEffect(.degrees(zAxisRotation ? 360  : 0 ))
                        .animation(.easeInOut(duration: 15.5))
                Circle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 150, height: 150)
                    .shadow(color: .black.opacity(0.2), radius: 5, x: 5, y: 15)
                Circle()
                    .trim(from: 0, to: 1)
                    .stroke(Color.white, style: StrokeStyle(lineWidth: 20, lineCap: .round))
                    .frame(width: 280, height: 280)
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 2, y: 1)
                
                Circle()
                        .trim(from: 0, to: progress)
                    .stroke(Color.blue, style:
                    StrokeStyle(lineWidth: 25, lineCap: .square))
                    .background(Circle().strokeBorder(lineWidth: 0.3).frame(width: 300, height: 300))
                    .frame(width: 280, height: 280)
                    .rotationEffect((Angle(degrees: 270)))
                    .animation(.easeInOut(duration: 15.7), value: progress)
                    Text("\(Int(count)):OO")
                        .font(.title)
                        .fontWeight(.bold)
                }
                    Spacer()
            HStack{
                Button{
                    zAxisRotation.toggle()
                    self.progress += 1

                }label: {
                    Image(systemName: self.zAxisRotation == true ? "pause.fill" : "play.fill")
                    .font(.largeTitle)
                    .foregroundColor(.black)
                    .padding()
                    .background(Circle().fill(.white))
                    .shadow(color: .black.opacity(0.5), radius: 5, x: 5, y: 5)
                }
                
            }.onReceive(self.timer) { (_)in
                if self.zAxisRotation{
                    
                    if self.count != 0{
                        
                        self.count -= 1
                    } 
                }
            }
        }
    }
}



struct Progress_Previews: PreviewProvider {
    static var previews: some View {
        Progress()
    }
}

