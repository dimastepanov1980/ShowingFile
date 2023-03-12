//
//  WatchFileViewModel.swift
//  Budu
//
//  Created by Dima Stepanov on 2/20/23.
//

import Foundation

final class WatchFileViewModel: WatchFileViewModelType, ObservableObject {
    var retryModel: RetryStubModel = RetryStubModel(title: R.string.localizable.filesWatchErrorTitle(),
                                               description: R.string.localizable.filesWatchErrorDescription())
    var percentLoaded: Double = 0.0
    var date: String = ""
    var fileName: String = ""
    var tagsViewModel = TagsViewModel()
    var state: WatchFileState = .loading
    
    func retry() {
        // TODO: сделать повторный вызов в случаи неудачной попытки загрузить файл
    }
}
