//
//  ChatViewController.swift
//  Messenger
//
//  Created by 박균호 on 2020/11/17.
//

import UIKit
import MessageKit

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    var kind: MessageKind
}

struct Sender: SenderType {
    var photoURL: String
    var senderId: String
    var displayName: String
}

class ChatViewController: MessagesViewController {
    
    private var messages = [Message]()
    private let selfSender = Sender(photoURL: "", senderId: "1", displayName: "KyoonHo Park")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        messages.append(Message(sender: selfSender, messageId: "1", sentDate: Date(), kind: .text("Hello World message")))
        messages.append(Message(sender: selfSender, messageId: "1", sentDate: Date(), kind: .text("Hello World message. Hello World message.")))
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
    }
}

extension ChatViewController: MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    func currentSender() -> SenderType {
        return selfSender
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        return messages.count
    }
}
