//
//  Graph.swift
//  
//
//  Created by Mingming Wang on 03/07/2016.
//
//

import Foundation
/*
 Graph Terminology
 Graph: set of vertices connected pairwise by edges
 Path: sequence of vertices connected by edges
 Cycle: path whose first and last vertices are the same
 Connected: two vertices are connected if there is a path between them
 --------------------------
 Graph Problems
 Path: Is there a path between s and t ?
 Shortest path: What is the shortest path between s and t ?
 Cycle: Is there a cycle in the graph?
 Euler tour: Is there a cycle that uses each edge exactly once? 
 Hamilton tour: Is there a cycle that uses each vertex exactly once.
 Connectivity: Is there a way to connect all of the vertices?
 MST: What is the best way to connect all of the vertices? 
 Biconnectivity: Is there a vertex whose removal disconnects the graph?
 Planarity: Can you draw the graph in the plane with no crossing edges 
 Graph isomorphism: Do two adjacency lists represent the same graph?
 --------------------------
 Anomalies
 Self-loop
 Parallel Edges
 */
protocol Graph {
  init(V: Int)                      // create an empty graph with V vertices
  init(input: String)               // create a graph from a string
  func addEdge(v: Int, w: Int)      // add an edge v-w
  func adjacentTo(v: Int) -> [Int] // vertices adjacent to v
  func V() -> Int                   // number of vertices
  func E() -> Int                   // number of edges
  func toString() -> String         // string representation of Graph
}

extension Graph {
  func degree(v: Int) -> Int {
    var degree = 0;
    for _ in self.adjacentTo(v) {
      degree = degree + 1
    }
    return degree
  }

  func maxDegree() -> Int {
    var max = 0
    for v in 0..<self.V() {
      let currentDegree = self.degree(v)
      max = currentDegree > max ? currentDegree : max
    }
    return max
  }

  func averageDegree() -> Double {
    return 2.0 * self.E() / self.V()
  }

  func numberOfSelfLoops() -> Int {
    <#function body#>
  }
}