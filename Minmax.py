#13 Min Max Algorithm



import math



def minimax(curDepth, nodeIndex, maxTurn, scores, targetDepth):

    if curDepth == targetDepth:

        return scores[nodeIndex]



    if maxTurn:

        return max(

            minimax(curDepth + 1, nodeIndex * 2, False, scores, targetDepth),

            minimax(curDepth + 1, nodeIndex * 2 + 1, False, scores, targetDepth)

        )

    else:

        return min(

            minimax(curDepth + 1, nodeIndex * 2, True, scores, targetDepth),

            minimax(curDepth + 1, nodeIndex * 2 + 1, True, scores, targetDepth)

        )



# Get input from the user

scores = []

num_scores = int(input("Enter the number of scores: "))

for _ in range(num_scores):

    score = int(input("Enter a score: "))

    scores.append(score)



targetDepth = int(input("Enter the target depth: "))



treeDepth = math.log(len(scores), 2)

print("The optimal value is:", minimax(0, 0, True, scores, targetDepth))
