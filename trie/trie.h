#include <set>
#include <string>
#include <unordered_map>
#include <memory>
#include <vector>


#include <iostream>

namespace me {
  namespace trie {
    using std::string;

    static void PrintStuff(std::set<std::string> words){
      std::cout << "I have: \n";
      for(const auto& word : words) {
	std::cout << word << "\n";
      }
    }
    
    class Trie {
    public:
      explicit Trie();
      Trie(const Trie&);
      Trie& operator=(const Trie&) = delete;
      Trie(std::vector<string> words);
      const bool AddWord(string word);
      const std::set<string> WordsAt(string pref);
      ~Trie();

    private:
      struct Node {
	std::set<string> values;
	std::unordered_map<char,Node*> children;
	~Node() {
	  values.clear();
	  for(const auto& child : children) {
	    delete child.second;
	  }
	  children.clear();
	}
      };
      
      Node* base_;
    };
  }
}
