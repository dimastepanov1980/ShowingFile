//
//  WatchFileViewModelType.swift
//  Budu
//
//  Created by Dima Stepanov on 2/20/23.
//

import SwiftUI

protocol WatchFileViewModelType: ObservableObject {
    var tagsViewModel: TagsViewModel { get }
    var date: String { get }
    var fileName: String { get }
    var percentLoaded: Double { get }
    var state: WatchFileState { get }
    var retryModel: RetryStubModel { get }
    
    func retry()
}
