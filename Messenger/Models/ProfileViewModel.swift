//
//  ProfileViewModel.swift
//  Messenger
//
//  Created by 박균호 on 2020/11/26.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
