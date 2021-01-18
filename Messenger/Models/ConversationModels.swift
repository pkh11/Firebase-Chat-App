//
//  ConversationModels.swift
//  Messenger
//
//  Created by 박균호 on 2020/11/26.
//

import Foundation

struct Conversation {
    let id: String
    let name: String
    let otherUserEmail: String
    let latestMessage: LatestMessage
}

struct LatestMessage {
    let date: String
    let text: String
    let isRead: Bool
    let readUsers: [String:Bool]
}

