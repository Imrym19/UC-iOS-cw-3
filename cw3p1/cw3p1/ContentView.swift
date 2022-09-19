//
//  ContentView.swift
//  cw3p1
//
//  Created by AIR on 17/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State var grade = ""
    @State var result = ""
    var body: some View {
       
        ZStack{
            Color.cyan
                .ignoresSafeArea()
            
            VStack{
                Text("حاسبة الدرجات")
                    .font(.title)
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                
                Image("cal")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
            
                TextField("أدخل درجتك", text: $grade)
                    .frame(width: 350, height: 50)
                background(Color.white)
                    .padding()
                
                Text ("احسب درجتي")
                background(Color.yellow)
                    .clipShape(Capsule())
                    .padding()
                    .onTapGesture { if Int (grade) ?? 0 >= 90
                        { result = "امتياز"}
                        else if Int (grade) ?? 0 >= 80   {result = "جيد جدا"}
                        else if Int (grade) ?? 0 >= 70   {result = "جيد"}
                        else if Int (grade) ?? 0 >= 60   {result =  "مقبول"}
                        else {result = "راسب"}
                    }
              
                Text ("لقد حصلت على درجة")
                
                Text (result)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
