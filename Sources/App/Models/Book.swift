//
//  File.swift
//  
//
//  Created by 김인환 on 2022/01/01.
//

import Vapor

struct Book: Content {
    var title: String // 도서 제목
    var contents: String // 도서 소개
    var url: String // 도서 상세 URL
    var isbn: String // ISBN10 or ISBN13
    var datetime: Date // 출판일
    var authors: [String] // 저자 리스트
    var publisher: String // 출판사
    var translators: [String] // 역자 리스트
    var price: Int
    var sale_price: Int
    var thumbnail: String // 표지 미리보기 URL
    var status: String // 도서 판매 상태 정보
    
    init(title: String, contents: String, url: String, isbn: String, datetime: Date, authors: [String], publisher: String, translators: [String], price: Int, sale_price: Int, thumbnail: String, status: String) {
        self.title = title
        self.contents = contents
        self.url = url
        self.isbn = isbn
        self.datetime = datetime
        self.authors = authors
        self.publisher = publisher
        self.translators = translators
        self.price = price
        self.sale_price = sale_price
        self.thumbnail = thumbnail
        self.status = status
    }
}
