//
//  FetchedDataSource.swift
//  FetchedDataSource
//
//  Created by David Jennes on 27/12/16.
//  Copyright © 2016. All rights reserved.
//

import CoreData
import UIKit

public class FetchedDataSource<FetchResult: NSFetchRequestResult, DelegateType: FetchedDataSourceDelegate>: NSObject, NSFetchedResultsControllerDelegate {

	let controller: NSFetchedResultsController<FetchResult>
	weak var delegate: DelegateType?
	weak var view: DelegateType.ViewType?
	lazy var changes = FetchedChanges()

	/**
	Dictionary to configurate the different animations to be applied by each change type.
	*/
	public var animations: [NSFetchedResultsChangeType: UITableViewRowAnimation]?

	internal init(view: DelegateType.ViewType, controller: NSFetchedResultsController<FetchResult>, delegate: DelegateType) {
		self.controller = controller
		self.view = view
		self.delegate = delegate

		defer {
			controller.delegate = self
		}

		super.init()
	}

	// MARK: - Empty NSFetchedResultsControllerDelegate methods

	public func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
	}

	public func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anObject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
	}

	public func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange sectionInfo: NSFetchedResultsSectionInfo, atSectionIndex sectionIndex: Int, for type: NSFetchedResultsChangeType) {
	}

	public func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
	}
}
