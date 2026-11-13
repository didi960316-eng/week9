//
//  Song 2.swift
//  第9週
//
//  Created by 115-1Student14 on 2026/11/10.
//
import Foundation

struct Song: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let releaseDate: String
    let image: String
}
