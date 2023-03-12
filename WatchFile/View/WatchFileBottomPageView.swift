//
//  WatchFileBottomSheetView.swift
//  Budu
//
//  Created by Dima Stepanov on 2/21/23.
//

import SwiftUI

struct WatchFileBottomPageView: View {
    let fileDate: String
    let fileName: String
    let tagsViewModel: TagsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            documentDate
                .padding(.bottom, 4)
            documentName
                .padding(.bottom, 12)
            TagsView(viewModel: tagsViewModel)
        }
        .padding(16)
        .padding(.bottom, 42)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color.black.opacity(0.1), radius: 12, x: 0, y: 4)
    }
    
    private var documentDate: some View {
        Text(fileDate)
            .style(.subheadline, foregroundColor: Color(R.color.secondaryLabel.name))
    }
    
    private var documentName: some View {
        Text(fileName)
            .style(.body, foregroundColor: Color(R.color.primaryLabel.name))
    }
}

#if DEBUG

struct WatchFileBottomPageView_Previews: PreviewProvider {
    private static let mockModel = MockWatchFileViewModel()
    
    static var previews: some View {
        WatchFileBottomPageView(fileDate: mockModel.date,
                                fileName: mockModel.fileName,
                                tagsViewModel: mockModel.tagsViewModel)
    }
}

#endif
