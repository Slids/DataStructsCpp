#include <iostream>
#include "trie.h"
#include <vector>
#include <string>

int main(int argc, char* argv[])
{
  //std::cout << "really before anything" << "\n";

  //std::vector<std::string> words = {"a"};
  std::vector<std::string> words = {"a","b","c","ab","ca","hij"};
  
  me::trie::Trie myTrie = me::trie::Trie(words);

  std::cout << "Done creation\n";
  
  auto sub_words = myTrie.WordsAt("h");
				         
  for(const auto& my_word : sub_words) {
    std::cout << "Next word: " << my_word << "\n";
  }
  
  return 0;
}
