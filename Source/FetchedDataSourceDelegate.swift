//
//  FetchedDataSource.swift
//  FetchedDataSource
//
//  Created by David Jennes on 27/12/16.
//  Copyright © 2016. All rights reserved.
//

import CoreData
import UIKit

public protocol FetchedDataSourceDelegate: class {
	associatedtype DataType: NSFetchRequestResult
	associatedtype ViewType: UIView
	associatedtype CellType: UIView

	func cell(for indexPath: IndexPath, data: DataType, view: ViewType) -> CellType

	// collection delegates

	func view(of kind: String, at indexPath: IndexPath, view: ViewType) -> UICollectionReusableView?
}

public extension FetchedDataSourceDelegate {
	func view(of kind: String, at indexPath: IndexPath, view: ViewType) -> UICollectionReusableView? {
		return nil
	}
}
