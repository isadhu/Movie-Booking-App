//
//  TicketData.swift
//  MovieBooking
//
//  Created by Willie Yam on 2022-08-16.
//

import Foundation

struct TicketModel: Identifiable {
    var id = UUID().uuidString
    var image: String
    var title: String
    var subtitle: String
    var top: String
    var bottom: String
}

 
