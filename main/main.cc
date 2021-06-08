/**
 * @file main.cc
 *
 */

#include "backtrack.h"
#include "candidate_set.h"
#include "common.h"
#include "graph.h"
// #include <time.h>

int main(int argc, char* argv[]) {
  
  if (argc < 4) {
    std::cerr << "Usage: ./program <data graph file> <query graph file> "
                 "<candidate set file>\n";
    return EXIT_FAILURE;
  }
  

  std::string data_file_name = argv[1];
  std::string query_file_name = argv[2];
  std::string candidate_set_file_name = argv[3];

  /*
  std::string d = argv[1];
  std::string q = argv[2];
  std::string c = argv[3];

  std::string data_file_name = "../data/lcc_" + d + ".igraph";
  std::string query_file_name = "../query/lcc_" + d + "_" + q +".igraph";
  std::string candidate_set_file_name = "../candidate_set/lcc_" + d + "_" + q +".cs";

  clock_t startTime, endTime;
  startTime = clock();
  */

  Graph data(data_file_name);
  Graph query(query_file_name, true);
  CandidateSet candidate_set(candidate_set_file_name);

  Backtrack backtrack;

  backtrack.PrintAllMatches(data, query, candidate_set);

  /*
  endTime = clock();
  std::cout << "time : " << endTime - startTime << "ms";
  */

  return EXIT_SUCCESS;
}
