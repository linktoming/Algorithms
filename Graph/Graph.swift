//
//  Graph.swift
//  
//
//  Created by Mingming Wang on 03/07/2016.
//
//

import Foundation

protocol Graph {
  init(V: Int)                          // create an empty graph with V vertices
  init(input: String)                   // create a graph from a string
  mutating func addEdge(v: Int, w: Int) // add an edge v-w
  func adjacentTo(v: Int) -> Set<Int>      // vertices adjacent to v
  func V() -> Int                       // number of vertices
  func E() -> Int                       // number of edges
  func toString() -> String             // string representation of Graph
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
    return 2.0 * Double(self.E()) / Double(self.V())
  }

  func numberOfSelfLoops() -> Int {
    var count = 0
    for v in 0..<self.V() {
      for w in self.adjacentTo(v) {
        if v == w {
          count = count + 1
        }
      }
    }

    return count/2
  }

  func printGraph() {
    print(toString())
  }
}

struct AdjacencyListGraph: Graph {
  private let vertexCount: Int
  private var edgeCount: Int
  var adjacencyList: [Set<Int>]
  init(V: Int) {
    vertexCount = V
    edgeCount = 0
    adjacencyList = [Set<Int>]()
    for _ in 0..<V {
      adjacencyList.append(Set<Int>())
    }
  }

  init(input: String) {
    self.init(V: 100)
  }

  mutating func addEdge(v: Int, w: Int) {
    adjacencyList[v].insert(w)
    adjacencyList[w].insert(v)
    edgeCount = edgeCount + 1
  }

  func adjacentTo(v: Int) -> Set<Int> {
    return adjacencyList[v]
  }

  func V() -> Int {
    return vertexCount
  }

  func E() -> Int {
    return edgeCount
  }

  func toString() -> String {
    var string = ""
    for i in 0..<vertexCount {
      for j in adjacencyList[i] {
        string += ("\(i) - \(j)\n")
      }
    }
    return string
  }

}
