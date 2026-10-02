#!/bin/bash


show_box() {
    local text="$1"
    local title="$2"
    local icon="$3"
    
    
    zenity --$icon --title="$title" --text="$text" --width=400 &
    sleep 2
}


show_box "Привет, Я Вирус." "Virus" "warning"
show_box "Но Я Ленивый Вирус" "Virus" "info"
show_box "Можешь Пожалуйста Удалить какой нибудь важный файл?" "Virus" "question"
show_box "Ну хотя бы в корзину положи пожалуйста" "Virus" "info"
show_box "Ладно так уж и быть выдам какую нибудь ошибку" "Virus" "info"


non_existent_command_12345 2>&1 | zenity --error --title="Системная ошибка" --text="Ошибка выполнения команды: Файл или каталог не найден."


sleep 2


zenity --info --title="Virus" --text="Пока!" --width=250