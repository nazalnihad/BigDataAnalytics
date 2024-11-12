# empty adjacency list for the graph
create_graph <- function(num_vertices) {
  graph <- vector("list", length = num_vertices)
  names(graph) <- as.character(1:num_vertices)
  for (i in 1:num_vertices) {
    graph[[i]] <- c()
  }
  return(graph)
}

# add an undirected edge between two vertices
insert_edge <- function(graph, node1, node2) {
  graph[[as.character(node1)]] <- unique(c(graph[[as.character(node1)]], node2))
  graph[[as.character(node2)]] <- unique(c(graph[[as.character(node2)]], node1))
  return(graph)
}

# DFS from starting node
perform_dfs <- function(graph, start_node) {
  visited_nodes <- rep(FALSE, length(graph))
  names(visited_nodes) <- names(graph)
  
  # function for recursive DFS
  explore <- function(node) {
    visited_nodes[[as.character(node)]] <<- TRUE
    cat(node, " ")  # Display or save the node in traversal order
    
    for (adj_node in graph[[as.character(node)]]) {
      if (!visited_nodes[[as.character(adj_node)]]) {
        explore(adj_node)
      }
    }
  }
  
  explore(start_node)
}

graph <- create_graph(5)

graph <- insert_edge(graph, 1, 2)
graph <- insert_edge(graph, 1, 3)
graph <- insert_edge(graph, 2, 4)
graph <- insert_edge(graph, 3, 5)

cat("DFS Traversal from vertex 1:\n")
perform_dfs(graph, 1)
