#include "PriorityQueue.h"

template <typename T, typename Comparator>
PriorityQueue<T, Comparator>::PriorityQueue(size_t maxSize) : maxSize(maxSize) {}

template <typename T, typename Comparator>
void PriorityQueue<T, Comparator>::push(const T& item) {
    auto it = elements.begin();
    while (it != elements.end() && comparator(*it, item) <= 0) {
        ++it;
    }
    elements.insert(it, item);
    if (elements.size() > maxSize) {
        elements.pop_back();
    }
}

template <typename T, typename Comparator>
T PriorityQueue<T, Comparator>::poll() {
    if (elements.empty()) {
        throw std::out_of_range("PriorityQueue is empty");
    }
    T item = elements.front();
    elements.pop_front();
    return item;
}

template <typename T, typename Comparator>
bool PriorityQueue<T, Comparator>::isEmpty() const {
    return elements.empty();
}

template <typename T, typename Comparator>
size_t PriorityQueue<T, Comparator>::size() const {
    return elements.size();
}

// Explicit template instantiation
template class PriorityQueue<Move, MyComparator>;
