//
//  ToDoListItemViewViewModel.swift
//  ToDo
//
//  Created by Alberto Oliveira Jr on 02/09/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

/// This is viewModel for single todolist item
/// each row in items list
class ToDoListItemViewViewModel: ObservableObject {
    
    init(){}
    
    func toggleIsDone(item: ToDoListItem){
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uId)
            .collection("todos")
            .document(newItem.id)
            .setData(newItem.asDictionary())
        
    }
}
