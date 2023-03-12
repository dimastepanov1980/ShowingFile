//
//  WatchFileView.swift
//  Budu
//
//  Created by Dima Stepanov on 2/20/23.
//

import SwiftUI

struct WatchFileLoadingView: View {
    private let height: CGFloat = 4
    private var percent: Double
    private let cornerRadius: CGFloat
    
    init(percent: Double) {
        self.percent = percent
        self.cornerRadius = height
    }
    
    var body: some View {
        GeometryReader { gr in
        VStack(alignment: .center) {
                BuduLoader()
                    .frame(width: 51, height: 64)
                    .padding(.bottom, 24)
                Text("\(R.string.localizable.filesWatchLoadingTitle()) \(Int(percent))%")
                    .style(.footnote)
                    .foregroundColor(Color(R.color.secondaryLabel.name))
                    .padding(.bottom, 4)
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: height, style: .continuous)
                        .frame(width: gr.size.width * 0.4, height: height)
                        .foregroundColor(.black.opacity(0.1))
                    RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                        .frame(width: gr.size.width * 0.4 / 100.0 * percent, height: height)
                        .foregroundColor(Color(R.color.primary.name))
                }
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

#if DEBUG
struct WatchFileLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        WatchFileLoadingView(percent: 88)
    }
}
#endif
