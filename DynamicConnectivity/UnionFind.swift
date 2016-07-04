//
//  UnionFind.swift
//  
//
//  Created by Mingming Wang on 04/07/2016.
//
//

import Foundation
protocol UnionFind {
  init(size: Int)                           // initialize union-find data structure with size
  func union(p: Int, q: Int)                // add connection between p and q
  func connected(p: Int, q: Int) -> Boolean // are p and q connected? in the same component
  func find(p: Int) -> Int                  // component identifier for p
  func count() -> Int                       // number of components
}

// TODO: define a client of this UnionFind based on 2 - 1 - Dynamic Connectivity (10-22)