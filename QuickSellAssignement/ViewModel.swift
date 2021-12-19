//
//  ViewModel.swift
//  QuickSellAssignement
//
//  Created by sabaz shereef on 17/12/21.
//

import Foundation

class ViewModel: ObservableObject {
    
    @Published var data = [dataModel]()
   
    init(){
        fetchData()
    }
    func fetchData() {
        
        data = [
            dataModel(name: "Tom Cafe", subname: "No one has opened you catalouge", viewed: false, numberOfView: 0, messageCount:  0),
            dataModel(name: "Z Cafe", subname: "No one has opened you catalouge", viewed: false, numberOfView: 0, messageCount:  0),
            dataModel(name: "K cafe", subname: "No one has opened you catalouge", viewed: false, numberOfView: 0, messageCount: 0),
            dataModel(name: "HollyWood Furniture", subname: "No one has opened you catalouge", viewed: false, numberOfView: 0, messageCount: 0),
            dataModel(name: "Best Furniture", subname: "No one has opened you catalouge", viewed: false, numberOfView: 0, messageCount: 0),
            dataModel(name: "Cee Cafe", subname: "No one has opened you catalouge", viewed: false, numberOfView: 0, messageCount: 0),
            dataModel(name: "AZX hotel", subname: "Last opened 3 days ago", viewed: true, numberOfView: 3, messageCount: 0),
            dataModel(name: "BBV", subname: "No one has opened you catalouge", viewed: false, numberOfView: 0, messageCount: 0)
        ]
       
    }
    
   
    
}


