# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2,], [3,4,5,], [6,7,8,], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
]

def won?(board)
  WIN_COMBINATIONS.each do |win|
     top_row_win = win[0]
    # position_2 = board[win[1]]
    # position_3 = board[win[2]]
    # position_4 = board[win[3]]

     if board[win[0][0]] == "X" #|| win[0][1] == "X" || board[win[2]] == "X"
      return win
    # elsif board[win[3]] == "X" || board[win[4]] == "X" || board[win[5]] == "X"
    #   return win
    end
  end
end
