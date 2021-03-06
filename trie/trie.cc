#include "trie.h"

#include <set>
#include <string>
#include <unordered_map>
#include <memory>

#include <iostream>


namespace me {
  namespace trie {
    Trie::~Trie() {
      delete base_;
    }

    Trie::Trie() {
      Trie({""});
    }
    
    Trie::Trie(std::vector<string> words) {
      base_ = new Node;      
      for(const auto& word : words) {
	AddWord(word);
      }
    }
    
    const bool Trie::AddWord(string word) {
      Node* curr_node = base_;
      auto insert_result = curr_node->values.insert(word);
      
      // If we did insert, new word!
      if(insert_result.second) {
	for(const auto& c : word) {
	  // We must see if there is
	  // a node for this char
	  auto find = curr_node->children.find(c);

	  // If there is, go to the node
	  if(find != curr_node->children.end()) {
	    curr_node = find->second;
	  }
	  // Else make a new node and go there
	  else {
	    Node* new_node = new Node;
	    curr_node->children.insert({c,new_node});
	    curr_node = new_node;
	  }

	  // Finally add the word to
	  // the new node
	  curr_node->values.insert(word);
	}
	return true;
      }
      else {
	return false;
      }
    }
    
    const std::set<string> Trie::WordsAt(string pref) {
      auto curr_node = base_;

      for (const auto& c : pref) {
	auto find = curr_node->children.find(c);
	
	// Can we go on?
	if(find != curr_node->children.end()) {
	  curr_node = find->second;
	}
	else {
	  return {};
	}  
      }
      return curr_node->values;
    }
    
  }
      
}
