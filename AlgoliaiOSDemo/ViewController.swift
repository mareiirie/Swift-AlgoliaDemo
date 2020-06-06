//
//  ViewController.swift
//  AlgoliaiOSDemo
//
//  Created by 入江真礼 on 2020/06/05.
//  Copyright © 2020 入江真礼. All rights reserved.
//

import UIKit
import InstantSearchClient

class ViewController: UIViewController {

    let appId = "algoliaのアプリID"
    let apiKey = "algoliaのapiKey"

    override func viewDidLoad() {
        super.viewDidLoad()

        let client = Client(appID: appId, apiKey: apiKey)
        let index = client.index(withName: "sampleDemo")
        let query = Query(query: "semple")

        index.search(query, completionHandler: { (content, error) -> Void in
            if let error = error {
                print(error)
            } else {
                guard let content = content else {
                    fatalError("no content")
                }
                let data = try! JSONSerialization.data(withJSONObject: content, options: .prettyPrinted)
                let response = try! JSONDecoder().decode(Hits.self, from: data)
                print(response)
            }
        })
    }
}
