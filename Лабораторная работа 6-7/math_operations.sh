add() {
    echo "Summary $(($1 + $2))"
}
subtract() {
    echo "Subtraction $(($1 - $2))"
}
multiply() {
    echo "Product $(($1 * $2))"
}
divide() {
    echo "Division $(($1 / $2))"
}
echo "Input a first number"
read num1
echo "Input a second number"
read num2
echo "Choose an operation from add, subtract, multiply, divide"
read operation
case "$operation" in
    add)
        add "$num1" "$num2"
        ;;
    subtract)
        subtract "$num1" "$num2"
        ;;
    multiply)
        multiply "$num1" "$num2"
        ;;
    divide)
        divide "$num1" "$num2"
        ;;
    *)
esac
