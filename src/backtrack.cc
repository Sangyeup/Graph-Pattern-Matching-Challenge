/**
 * @file backtrack.cc
 *
 */

#include "backtrack.h"

Backtrack::Backtrack() {}
Backtrack::~Backtrack() {}

namespace {
  const int MAX_OUTPUTS = 100000;
  const Vertex NOT_MATCHED = -1;

  /**
 * @brief Prints out a match.
 */
  inline void print_match(const int* matched_to, const int num_query) {
    std::string out = "a ";
    for(int i = 0; i < num_query; i++) {
      out = out + std::to_string(matched_to[i]) + " ";
    }
    out += "\n";
    // wr.write(out.c_str(), out.size());
    std::cout << out;
  }

  /**
 * @brief Checker function used for debugging purposes.
 */
  /*
  void check_match(const int* matched_to, const int num_query, const Graph &data, const Graph &query) {
    bool edge_success = true;
    bool vertex_success = true;
    for(Vertex v1 = 0; v1 < num_query; v1++) {
      for(Vertex v2 = v1 + 1; v2 < num_query; v2++) {
        if(matched_to[v1] == matched_to[v2]) {
          std::cout << matched_to[v1] << " has been matched to both " << v1 << " and " << v2 << std::endl;
          vertex_success = false;
        }
      }
    }
    for(Vertex v = 0; v < num_query; v++) {
      for(size_t j = query.GetNeighborStartOffset(v); j < query.GetNeighborEndOffset(v); j++) {
        Vertex temp = query.GetNeighbor(j);
        if(!data.IsNeighbor(matched_to[v], matched_to[temp])) {
          std::cout << v << " and  " << temp << " are neighbors in q, but " << matched_to[v] << " and " << matched_to[temp] << " are not neighbors in d" << std::endl;
          edge_success = false;
        }
      }
    }
    if(edge_success && vertex_success) std::cout << "correct" << std::endl;
    else std::cout << "failed" << std::endl;
  }
  */

  /**
 * @brief Deletes collisions created by matching a vertex. 
 */
  inline void delete_collisions(Vertex qv, int* matched_to, const Graph &data, const Graph &query, CandidateSet &cs, std::stack<std::vector<std::pair<Vertex, Vertex>>> &rd) {
    std::vector<std::pair<Vertex, Vertex>> del_temp; // Vector which stores the deleted locations and values in this iteration of delete_collisions
    for(size_t j = query.GetNeighborStartOffset(qv); j < query.GetNeighborEndOffset(qv); j++) {
      Vertex temp = query.GetNeighbor(j);
      if(matched_to[temp] == NOT_MATCHED){
        for(size_t k = 0; k < cs.GetCandidateSize(temp); k++) {
          // Find candidates of neighbors of a matched vertex qv
          // then detect cases where the found candidate is not a neighbor of match(qv), which is a collision.
          // Delete the collision.
          Vertex cand_temp = cs.GetCandidate(temp, k);
          if(!data.IsNeighbor(matched_to[qv], cand_temp)) { 
            del_temp.push_back(std::make_pair(temp, cand_temp));
            cs.DeleteCandidate(temp, k); 
            k--; // If deletion has been performed, shift iterator so that it points to the correct value.
          }
        }
      }
    }
    cs.DeleteCandidate(matched_to, qv, del_temp); // Also, delete all candidates with the same value as match(i) (since it cannot be reused)
    rd.push(del_temp); // Push vector of deleted <location, value> pairs to stack of recent deletions
  }

  

  /**
 * @brief Calculates score metric used to determine backtracking order. Not used in current implementation.
 *
 * @return float
 */
/*
  inline float calc_score(Vertex v, int* matched_to, const Graph &query, CandidateSet &cs) {
    int selector = 1; // Selector value which determines which score metric we use to create a backtracking order.
    float nun = 0; // Number of unmatched neighbors

    for(size_t i = query.GetNeighborStartOffset(v); i < query.GetNeighborEndOffset(v); i++) {
      if(matched_to[query.GetNeighbor(i)] == NOT_MATCHED) nun += 1;
    }

    size_t size = cs.GetCandidateSize(v);

    if(selector == 0) { // IF selector is 0, score = size of candidate set divided by number of unmatched neighbors.
      if(size == 0) return 0; // Needs to return 0 if there are no candidate sets - used to quickly terminate branch.
      if(size == 1) return std::numeric_limits<float>::min();
      else if (nun == 0) return std::numeric_limits<float>::max();
      else return size / nun;
    } else if(selector == 1) { // IF selector is 1, score = size of candidate set.
      return size;
    } else { // IF selector is not 0 or 1, score = random float between 0 and 1 (inclusive).
      return size == 0 ? 0 : static_cast <float> (rand()) / static_cast <float> (RAND_MAX); // Returns 0 if size == 0 for the same reason as above.
    }
  }
*/
  /**
 * @brief Returns the next item in our backtracking order.
 *
 * @return std::pair<Vertex, float>
 */
  inline std::pair<Vertex, float> get_next(int* matched_to, const Graph &query, CandidateSet &cs, int num_query) {
    std::pair<Vertex, float> next_target(num_query, std::numeric_limits<float>::max());
    for(Vertex v = 0; v < num_query; v++) {    
      if(matched_to[v] == NOT_MATCHED) {
        float score_v = cs.GetCandidateSize(v);
        if(score_v <= next_target.second) {
          next_target.first = v;
          next_target.second = score_v;
        }
      }
    }
    return next_target;
  }
}

void Backtrack::PrintAllMatches(const Graph &data, const Graph &query,
                                CandidateSet &cs) {
  int num_query = query.GetNumVertices();
  std::cout << "t " << num_query << "\n";

  // implement your code here.
  Vertex matched_to [num_query]; // Array of vertices that store where each query vertex has been matched to
  std::fill_n(matched_to, num_query, NOT_MATCHED);
  int unmatched = num_query; // Number of unmatched vertices
  int num_outputs = 0; // Number of results that have been output
  std::stack<std::vector<std::pair<Vertex, Vertex>>> recent_deletions; // Stack which contains recent deletions - used to reverse deletion when a branch is terminated.

  bool updated = true;
  while(updated){ // (3) Repeat process until there are no more vertices to match using criteria (1)
    updated = false;
    for(int i = 0; i < num_query; i++) {
      if(matched_to[i] == NOT_MATCHED && cs.GetCandidateSize(i) == 1) {        
        matched_to[i] = cs.GetCandidate(i, 0); // (1) First, match vertices that have only one candidate
        unmatched--;
        updated = true;
        delete_collisions(i, matched_to, data, query, cs, recent_deletions); // (2) Then find and delete collisions
      }
    }
  }

  int depth = 0; // Depth of call stack - becomes -1 when we have finished the entire state space tree.
  Vertex next[unmatched]; // next[depth] stores which vertex we are trying to match at "depth".
  size_t try_loc[unmatched]; // try_loc[depth] stores which candidate we have to test at "depth".
  std::fill_n(try_loc, unmatched, 0); // Initialized to zero so that searches begin at the front of the candidate set
  bool going_down = true; // Stores direction of most recent stack variation.
  next[0] = get_next(matched_to, query, cs, num_query).first; // Initialize to first item in backtracking order

  while(depth >= 0) {
    if(!going_down && try_loc[depth] == cs.GetCandidateSize(next[depth])) { // Popped one call stack to find that we have exhausted all possibilities in this depth.
      cs.ReverseDeletion(recent_deletions); // Reverse most recent deletions.
      try_loc[depth] = 0; // Initialize this depth's try to 0.
      matched_to[next[depth--]] = NOT_MATCHED; // Initialize this depth's match to NOT_MATCHED.
      going_down = false; // Set direction to call stack pop.
      continue; // Go up one call stack.
    }
    std::pair<Vertex, float> next_(0, -2);
    if(going_down) { // Get next item in backtracking order only when we are moving deeper into the call stack.
      next_ = get_next(matched_to, query, cs, num_query); // Get next item.
      next[depth] = next_.first; // Set the vertex we are trying to match at this depth.
    }
    if(next_.second == 0) { // Next item does not have any possibilities. The branch we've taken in our state space search tree is wrong.
      cs.ReverseDeletion(recent_deletions);
      try_loc[depth] = 0; 
      matched_to[next[depth--]] = NOT_MATCHED;
      going_down = false;
      continue;
    }
    Vertex cd = cs.GetCandidate(next[depth], try_loc[depth]); // Get the candidate we need to try next.
    matched_to[next[depth]] = cd; // Match vertex to candidate.
    delete_collisions(next[depth], matched_to, data, query, cs, recent_deletions); // Delete related collisions.
    going_down = true; // Set direction to next call.

    // Increment candidate search location so that when we come back to this depth, we try the next value.
    // Increment depth by 1.
    try_loc[depth++]++; 
    if(depth == unmatched) { // We have reached the end of our call stack. All vertices have been matched.
      print_match(matched_to, num_query); // Print out match.
      // check_match(matched_to, num_query, data, query);
      num_outputs++; // Increment num_output counter by 1.
      going_down = false;
      depth--; 
      cs.ReverseDeletion(recent_deletions);
    }
    if(num_outputs == MAX_OUTPUTS) break; // If we have reached 100,000 outputs, end loop and terminate program.
  }
  // std::cout << "output: " << num_outputs << std::endl;
}
