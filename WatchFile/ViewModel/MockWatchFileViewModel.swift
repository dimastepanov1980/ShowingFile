//
//  MockWatchFileViewModel.swift
//  Budu
//
//  Created by Dima Stepanov on 2/26/23.
//

import Foundation

final class MockWatchFileViewModel: WatchFileViewModelType {
    let retryModel: RetryStubModel = RetryStubModel(title: R.string.localizable.filesWatchErrorTitle(),
                                               description: R.string.localizable.filesWatchErrorDescription())
    let state: WatchFileState = .loading
    let percentLoaded: Double = 22
    let date: String = "31 октября 2022"
    let fileName: String = "Иванова_Александра_Ивановна_20221202_023000.pdf"
    let tagsViewModel = TagsViewModel(tagModels: [
        TagModel(name: "A", description: "Анализ"),
        TagModel(name: "B", description: "Больничный"),
        TagModel(name: "C", description: "Заключение"),
        TagModel(name: "D", description: "Справка"),
        TagModel(name: "E", description: "Рецепт"),
        TagModel(name: "F", description: "Другое")
    ])
    
    func retry() {}
}
