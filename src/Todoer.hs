module Todoer(create, add, complete) where

import Data.List

type TodoList = [String]

create :: TodoList
create = []

add :: TodoList -> String -> TodoList
add list title = title : list

complete :: TodoList -> String -> TodoList
complete list item = delete item list
