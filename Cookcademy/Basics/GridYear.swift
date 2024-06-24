//
//  GridCalendar.swift
//  Cookcademy
//
//  Created by Grahame Narborough on 5/6/2024.
//

import SwiftUI

struct GridYear: View {
let layout = [
    GridItem(.flexible(minimum: 40)),
    GridItem(.flexible(minimum: 40)),
    GridItem(.flexible(minimum: 40)),
    GridItem(.flexible(minimum: 40)),
    GridItem(.flexible(minimum: 40)),
    GridItem(.flexible(minimum: 40)),
    GridItem(.flexible(minimum: 40))
]
//==================Non Pinned=====================
//    var body: some View {
//        ScrollView {
//            LazyVGrid(columns: layout) {
//                ForEach(year, id: \.name){ month in
//                    Section(header: Text(verbatim: month.name).font(.headline)) {
//                        ForEach(month.days) { day in
//                            Capsule()
//                                .overlay(Text("\(day.value)").foregroundColor(.white))
//                                .foregroundColor(.blue)
//                                .frame(height: 40)
//                        }
//                    }
//                }
//            }
//        }
//    }
//==================Pinned=====================
    var body: some View {
        ScrollView {
    LazyVGrid(columns: layout, pinnedViews: [.sectionHeaders]) {
                ForEach(year, id: \.name){ month in
                    Section(header: Text(verbatim: month.name)
                        .font(.title))
                    {
                        ForEach(month.days) { day in
                            Capsule()
                                .overlay(Text("\(day.value)").foregroundColor(.white))
                                .foregroundColor(.blue)
                                .frame(height: 40)
                        }
                    }
                }
            }
        }
    }
//==================Horizontal===================
//    var body: some View {
//        //A.ScrollView to the horizontal option
//        ScrollView(.horizontal) {
//            //B.LazyVGrid to LazyHGrid
//            //C.columns: to rows:
//            LazyHGrid(rows: layout, pinnedViews: [.sectionHeaders]) {
//                ForEach(year, id: \.name){ month in
//                    Section(header: Text(verbatim: month.name).font(.headline)) {
//                        ForEach(month.days) { day in
//                            Capsule()
//                                .overlay(Text("\(day.value)").foregroundColor(.white))
//                                .foregroundColor(.blue)
//                            //D..frame of the Capsule to specify width instead of height
//                                .frame(width: 40)
//                        }
//                    }
//                }
//            }
//        }
//    }
}

#Preview {
    GridYear()
}
