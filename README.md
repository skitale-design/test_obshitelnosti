**Программа "Тест общительности" Версия 1.3** 

Автор: Ильин Александр

Написана на Ruby (Версия 2.4.1)

*Ссылка на оригинал теста: https://profilib.com/chtenie/74839/nina-telenkova-testy-na-vse-sluchai-zhizni-3.php#t1*

При запуске из консоли `main.rb` программа выводит по очереди вопросы из файла `./data/questions.txt` и запрашивает у пользователя один из трех вариантов ответа ("да" - 2 балла, "нет" - 0 баллов, "иногда" - 1 балл). Ведется подсчет набранных баллов и в конце выводится соответствующий вариант ответа из файла `./data/answers.txt`

В качестве параметра при запуске принимается имя того, кто проходит тест. 

**Пример запуска:**

```
D:\ruby main.rb Alex
Добрый день, Alex! Ваш текущий балл: 30

(1 - "да", 2 - "нет", 3 - "иногда")

Вам проще изложить свое мнение на бумаге, чем рассказать о нем?
1

----------- ваш результат: 32

Что скрывать, вы некоммуникабельны, и страдаете от этого прежде всего сами. Но и
 окружающим очень трудно с вами, ведь там, где необходимы совместные усилия, вы
совершенно теряетесь. Почему вы так неохотно общаетесь? Неужели в вашем окружени
и совсем нет интересных людей? Попробуйте потренировать свою общительность - обр
ащайтесь к людям с различными вопросами, пусть даже для начала они будут касатьс
я только работы.
```
