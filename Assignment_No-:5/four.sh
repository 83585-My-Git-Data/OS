#!/bin/bash


is_prime() {
    local num=$1
    if [ "$num" -le 1 ]; then
        echo "$num is not a prime number."
        return
    fi
    if [ "$num" -le 3 ]; then
        echo "$num is a prime number."
        return
    fi
    if [ $((num % 2)) -eq 0 ] || [ $((num % 3)) -eq 0 ]; then
        echo "$num is not a prime number."
        return
    fi

    local i=5
    while [ $((i * i)) -le "$num" ]; do
        if [ $((num % i)) -eq 0 ] || [ $((num % (i + 2))) -eq 0 ]; then
            echo "$num is not a prime number."
            return
        fi
        i=$((i + 6))
    done

    echo "$num is a prime number."
}

read -p "Enter a number: " number

is_prime "$number"


