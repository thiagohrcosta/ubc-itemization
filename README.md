## HOW TO CODE: SIMPLE DATA: UNIVERSITY OF BRITISH COLUMBIA (UBCx - Edx)

How To Code: Simple Data, is the first 7 week module from the  [**MICROMASTER - Software Developer** from **University of British Columbia**](https://www.edx.org/course/how-code-simple-data-ubcx-htc1x).

## About this course 

**Course Description**

This course takes a unique approach, focusing on a systematic programming method rather than restricting learners to any one specific programming language. This practical approach will allow you to apply your skills and creativity more widely and to program well in any language.

The course is part of the [**Software Development MicroMasters Program**](https://www.edx.org/micromasters/software-development) and presents a core design method with a focus on numbers, strings, images and lists.

You will learn techniques to:

1. Develop program requirements
2. Produce programs with consistent structure that are easy to modify later
3. Make your programs more reliable by building tests as an integral part of the programming process.
4. This course concludes with the design of a simple interactive game.
5. Learners who enroll in the Verified track will receive staff grading for the course project and increased interaction with the instructor and staff.

What you'll learn:
1. How to represent information as data
2. How to focus each part of your program on a single task
3. How to use examples and tests to clarify what your program should do
4. How to simplify the structure of your program using common patterns
5. Recognize and represent more complicated information

## MODULE 2: How To Design Data (HTDD)

In this **module 2: How to Design Data - Itemization**, we learn how to Design Data (HtDD recipe) using itemization.

### WHAT IS ITEMIZATION?

An itemization describes data comprised of 2 or more subclasses, at least one of which is not a distinct item. (C.f. enumerations, where the subclasses are all distinct items.) In an itemization the template is similar to that for enumerations: a cond with one clause per subclass. In cases where the subclass of data has its own data definition the answer part of the cond clause includes a call to a helper template, in other cases it just includes the parameter.

## HOW TO CODE?

We can follow the recipe bellow to create codes that use itemization.

> ;; Bird is one of:<br>
> ;;  - false<br>
> ;;  - Number<br>
> ;; interp. false means no bird, number is x position of bird<br>
><br>
> (define B1 false)<br>
> (define B2 3) <br>
>
> #;<br>
> (define (fn-for-bird b)<br>
>  (cond [(false? b) (...)]<br>
>        [(number? b) (... b)]))<br>
> ;; Template rules used:<br>
> ;;  - one of: 2 cases<br>
> ;;  - atomic distinct: false<br>
> ;;  - atomic non-distinct: Number<br>
> <br>

## HOW TO FORM ITEMIZATION

> (define (fn-for-bird b)<br>
>  (cond [(false? b) (...)]<br>
>        [(number? b) (... b)]))<br>

## PROBLEM

Consider designing the system for controlling a New Year´s Eve display. Design a data definition to represent the current state of the countdown, which falls into one of three categories:

- not yet started<br>
- from 10 to 1 seconds before midnight<br>
- complete (Happy New Year!)<br>

### The answer is:


> ;; CountDown is one of:<br>
> ;; - false<br>
> ;; - Natural[1, 10]<br>
> ;; - "complete"<br>
> ;; interp.<br>
> ;;    false          means countdown has not yet started<br>
> ;;    Natural[1, 10] means countdown is running and how many seconds left<br>
> ;;    "complete"     means countdown is over<br>
><br>
> (define CD1 false)<br>
> (define CD2 10)    ; just started running<br>
> (define CD3  1)    ; almost over<br>
> (define CD4 "complete")<br>
> #;(define (fn-for-countdown c)<br>
>  (cond [(false? c) (...)]<br>
>        [(and (number?c) (...c))] ;The simplification of<br>
>                                 ;[(and (number? c) (<= 1 c)<br>
>                                 ;(<= 10)) (... c)]<br>
>        [else (...)]))<br>
><br>
> ;; Template rule used:<br>
> ;; - one of: 3 cases<br>
> ;; - atomic distinct: false<br>
> ;; - atomic non-distinct: Natural[1, 10]<br>
: ;; - atomic distinct: "complete"<br>
<br>
