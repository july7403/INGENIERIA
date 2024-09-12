def majority_vote(arr):
    def majority_vote_recursive(low, high):
        if low == high:
            return arr[low], 1

        mid = (low + high) // 2
        left_candidate, left_count = majority_vote_recursive(low, mid)
        right_candidate, right_count = majority_vote_recursive(mid + 1, high)

        if left_candidate == right_candidate:
            return left_candidate, left_count + right_count

        left_count = sum(1 for i in range(low, high + 1) if arr[i] == left_candidate)
        right_count = sum(1 for i in range(low, high + 1) if arr[i] == right_candidate)

        return (left_candidate, left_count) if left_count > right_count else (right_candidate, right_count)

    candidate, count = majority_vote_recursive(0, len(arr) - 1)
    return count > len(arr) / 2