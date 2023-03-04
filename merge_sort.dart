class MergeSort {
  //to check runtime and dart compile time between the sorts
  List<int> mergeSort(List<int> arr) {
    if (arr.length <= 1) {
      return arr;
    }

    int mid = arr.length ~/ 2;
    List<int> left = arr.sublist(0, mid);
    List<int> right = arr.sublist(mid);

    left = mergeSort(left);
    right = mergeSort(right);

    return merge(left, right);
  }

  List<int> merge(List<int> left, List<int> right) {
    List<int> result = [];

    while (left.isNotEmpty && right.isNotEmpty) {
      if (left.first <= right.first) {
        result.add(left.first);
        left.removeAt(0);
      } else {
        result.add(right.first);
        right.removeAt(0);
      }
    }

    if (left.isNotEmpty) {
      result.addAll(left);
    }

    if (right.isNotEmpty) {
      result.addAll(right);
    }

    return result;
  }

  List<int> normalSort(List<int> arr) {
    arr.sort();
    return arr;
  }
}

extension SortExtention on List<int> {
  mSort() {
    MergeSort _mergeSortInstance = MergeSort();
    return _mergeSortInstance.mergeSort(this);
  }

  normalSort() {
    MergeSort _mergeSortInstance = MergeSort();
    return _mergeSortInstance.normalSort(this);
  }
}

void main() {
  DateTime startTime = DateTime.now();
  print([1, 3, 4, 1, 2, 4].normalSort());

  DateTime endTime = DateTime.now();

  Duration difference = endTime.difference(startTime);
  print('Time taken: ${difference.inMilliseconds} milliseconds');
}

// mSort
// dart run merge_sort.dart  0.44s user 0.11s system 32% cpu 1.704 total


//normal sort
// dart run merge_sort.dart  0.43s user 0.11s system 60% cpu 0.882 total