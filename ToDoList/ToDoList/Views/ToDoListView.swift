//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Kevin Andrade on 6/7/24.
//

import FirebaseFirestoreSwift
import SwiftUI

struct ToDoListView: View {
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
        //users/<id>/todos/<entries>
        self._items = FirestoreQuery(
            collectionPath: "users/\(userId)/todos"
        )
    }
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button {
                                //delete
                            } label: {
                                Text("Delete")
                                    .foregroundColor(Color.red)
                            }
                        }
                }
                .listStyle(PlainListStyle())
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    //action
                    viewModel.showingNewItemView = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

struct ToDoListItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListView(userId: "k0e54lzhs1T2kzkVtwxPiqchaFC3")
    }
}
