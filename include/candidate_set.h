/**
 * @file candidate_set.h
 *
 */

#ifndef CANDIDATE_SET_H_
#define CANDIDATE_SET_H_

#include "common.h"

class CandidateSet {
 public:
  explicit CandidateSet(const std::string& filename);
  ~CandidateSet();

  inline size_t GetCandidateSize(Vertex u) const;
  inline Vertex GetCandidate(Vertex u, size_t i) const;
  inline void DeleteCandidate(Vertex u, size_t i);
  inline void DeleteCandidate(int* matched_to, Vertex qv, std::vector<std::pair<Vertex, Vertex>> &dt);
  inline void ReverseDeletion(std::stack<std::vector<std::pair<Vertex, Vertex>>> &rd);
 private:
  std::vector<std::vector<Vertex>> cs_;
};

/**
 * @brief Returns the number of data vertices that may be mapped to query vertex
 * u.
 *
 * @param u query vertex id.
 * @return size_t
 */
inline size_t CandidateSet::GetCandidateSize(Vertex u) const {
  return cs_[u].size();
}
/**
 * @brief Returns the i-th candidate from query vertex u's candidate set.
 *
 * @param u query vertex id.
 * @param i index in half-open interval [0, GetCandidateSetSize(u)).
 * @return Vertex
 */
inline Vertex CandidateSet::GetCandidate(Vertex u, size_t i) const {
  return cs_[u][i];
}

/**
 * @brief Deletes the i-th candidate from query vertex u's candidate set.
 *
 * @param u query vertex id.
 * @param i index in half-open interval [0, GetCandidateSetSize(u)).
 */
inline void CandidateSet::DeleteCandidate(Vertex u, size_t i) {
  cs_[u].erase(cs_[u].begin() + i);
}

/**
 * @brief Deletes whatever value @param qv is mapped to from entire candidate set.
 *
 * @param matched_to used to skip checking already-mapped vertices.
 * @param qv most recently mapped vertex.
 * @param del_temp used to store deleted value to later restore using ReverseDeletion.
 */
inline void CandidateSet::DeleteCandidate(int* matched_to, Vertex qv, std::vector<std::pair<Vertex, Vertex>> &del_temp) {
  for (std::vector<std::vector<Vertex>>::iterator iter = cs_.begin(); iter != cs_.end(); iter++) {
    Vertex curr_v = iter - cs_.begin();
    if(matched_to[curr_v] == -1) {
      std::vector<Vertex>::iterator pos = std::find(iter->begin(), iter->end(), matched_to[qv]);
      if(pos != iter->end()) {
        del_temp.push_back(std::make_pair(curr_v, matched_to[qv]));
        iter->erase(pos);
      }
    }
  }
}

/**
 * @brief Reverses the set of deletions currently at the top of our recent_deletions
 * stack. Pops stack after reversal.
 *
 * @param rd Pointer to stack which holds the deleted values.
 */
inline void CandidateSet::ReverseDeletion(std::stack<std::vector<std::pair<Vertex, Vertex>>> &rd) {
  std::vector<std::pair<Vertex, Vertex>> deleted = rd.top();
  for(std::vector<std::pair<Vertex, Vertex>>::iterator iter = deleted.begin(); iter != deleted.end(); iter++) {
    cs_[iter->first].push_back(iter->second);
  }
  rd.pop();
}

#endif  // CANDIDATE_SET_H_
