//
//  GankServiceTests.swift
//  Gank
//
//  Created by 叶帆 on 2016/11/19.
//  Copyright © 2016年 Suzhou Coryphaei Information&Technology Co., Ltd. All rights reserved.
//

import XCTest
@testable import Gank

final class GankServiceTests: XCTestCase {
    func testAllGankHistoryDate() {
        let expectation = self.expectation(description: "get all history date")
        
        allGankHistoryDate(failureHandler: nil, completion: { dates in
            if !dates.isEmpty {
                expectation.fulfill()
            }
        })
        
        waitForExpectations(timeout: 15, handler: nil)
    }
}
