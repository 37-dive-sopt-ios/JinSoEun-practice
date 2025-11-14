//
//  FeedModel.swift
//  week01
//
//  Created by 진소은 on 11/1/25.
//


import UIKit

public struct FeedModel {
    public let itemImg: UIImage
    public let name: String
    public let price: String
    public var isScrap: Bool
    
    public init(itemImg: UIImage, name: String, price: String, isScrap: Bool) {
        self.itemImg = itemImg
        self.name = name
        self.price = price
        self.isScrap = isScrap
    }
    
    public static let mockData: [FeedModel] = [
        FeedModel(itemImg: UIImage(named: "feed1") ?? UIImage(), name: "아이폰17PRO MAX", price: "1,990,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed2") ?? UIImage(), name: "airPod PRO 3", price: "330,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed3") ?? UIImage(), name: "커피머신", price: "100,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed4") ?? UIImage(), name: "샌드위치", price: "8,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed5") ?? UIImage(), name: "명품 핸수", price: "250,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed1") ?? UIImage(), name: "아이폰 16프로맥스", price: "1,000,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed2") ?? UIImage(), name: "에어팟 프로", price: "300,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed3") ?? UIImage(), name: "커피머신", price: "100,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed4") ?? UIImage(), name: "샌드위치", price: "8,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed5") ?? UIImage(), name: "명품 핸수", price: "250,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed1") ?? UIImage(), name: "아이패드 PRO", price: "1,400,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed2") ?? UIImage(), name: "airPod PRO 2", price: "330,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed3") ?? UIImage(), name: "마우스", price: "100,000원", isScrap: false),
        FeedModel(itemImg: UIImage(named: "feed4") ?? UIImage(), name: "아 배고파", price: "8,000원", isScrap: false)
    ]
}
