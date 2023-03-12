//
//  WatchFileView.swift
//  Budu
//
//  Created by Dima Stepanov on 2/21/23.
//

import SwiftUI

struct WatchFileView<ViewModel: WatchFileViewModelType>: View {
    @ObservedObject private var viewModel: ViewModel
    
    init(with viewModel: ViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        VStack {
            Spacer()
            internalBody
            Spacer()
            WatchFileBottomPageView(fileDate: viewModel.date,
                                    fileName: viewModel.fileName,
                                    tagsViewModel: viewModel.tagsViewModel)
        }.ignoresSafeArea()
    }
    
    @ViewBuilder var internalBody: some View {
        switch viewModel.state {
        case .loading:
            watchFileLoading
        case .error:
            watchFileError
        }
    }
    
    private var watchFileLoading: some View {
        WatchFileLoadingView(percent: viewModel.percentLoaded)
    }
    
    private var watchFileError: some View {
        VStack {
            Image(uiImage: R.image.patch())
                .resizable()
                .frame(width: 300, height: 300)
            
            RetryStubView(model: viewModel.retryModel, action: {
                viewModel.retry()
            })
            .multilineTextAlignment(.center)
        }
    }
}

#if DEBUG

struct WatchFileView_Previews: PreviewProvider {
    private static let mockModel = MockWatchFileViewModel()
    
    static var previews: some View {
        WatchFileView(with: mockModel)
    }
}

#endif
