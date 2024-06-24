//
//  GridCalendar.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 5/6/2024.
//

import SwiftUI

struct GridMonth: View {
//=============Single Column Grid 40 Wide==========
//let layout = [GridItem(.fixed(40.0))]
//==========Four Column Grid 40 Wide each==========
//let layout = [
//    GridItem(.fixed(40)),
//    GridItem(.fixed(40)),
//    GridItem(.fixed(40)),
//    GridItem(.fixed(40))
//]
//========Fourth Flexible w. Grid 40 Wide==========
//let layout = [
//    GridItem(.fixed(40)),
//    GridItem(.fixed(40)),
//    GridItem(.fixed(40)),
//    GridItem(.flexible(minimum:40))
//]
//========Adaptive(as many as fits columns) w. Grid 40 Wide==========
//let layout = [
//    GridItem(.fixed(40)),
//    GridItem(.fixed(40)),
//    GridItem(.fixed(40)),
//    GridItem(.adaptive(minimum: 80))
//]
//===============A Month Layout==================
let layout = [
    GridItem(.fixed(40)),
    GridItem(.fixed(40)),
    GridItem(.fixed(40)),
    GridItem(.fixed(40)),
    GridItem(.fixed(40)),
    GridItem(.fixed(40)),
    GridItem(.fixed(40))
]
//====================No Scroll====================
//    var body: some View {
//        LazyVGrid(columns: layout) {
//            ForEach(year[0].days) { day in
//                Capsule()
//                    .overlay(Text("\(day.value)").foregroundColor(.white))
//                    .foregroundColor(.blue)
//                    .frame(height: 40)
//            }
//        }
//    }
//=================Rowed Month=======================
//    var body: some View {
    //A.ScrollView to the horizontal option
//    ScrollView(.horizontal) {
            //B.LazyVGrid to LazyHGrid
            //C.columns: to rows:
//            LazyHGrid(rows: layout) {
//                ForEach(year[0].days) { day in
//                    Capsule()
//                        .overlay(Text("\(day.value)").foregroundColor(.white))
//                        .foregroundColor(.blue)
//                        .frame(width: 40)
//                }
//            }
//        }
//    }
//==============Columned Month======================
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(year[0].days) { day in
                    Capsule()
                        .overlay(Text("\(day.value)").foregroundColor(.white))
                        .foregroundColor(.blue)
                        .frame(height: 40)
                }
            }
        }
    }
//==================================================
}

#Preview {
    GridMonth()
}
