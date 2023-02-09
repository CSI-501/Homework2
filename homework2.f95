program homework2
    ! Nicholas Maynard
    ! CSI 501
    ! Assignment 2
    ! 02/09/23

    ! This program is meant to show off how computers perform calculations with regards
    ! to the memory used in the significant digits.

    ! Clean up memory
    implicit none
    
    ! Initialize values
    real*4 :: a = 1.0
    real*4 :: b = 2.0
    real*4 :: sum = 0.0
    real*4 :: counter = 1.0
    integer :: i
    
    ! Begin part 1

    ! iterate through 10 million times adding to our variables.
    do i = 1, 10000000, 1
        a = a + 1.e-7
        b = b + 1.e-7
    enddo
    ! print out the variables after.
    print*, 'Variable a is: ', a
    print*, 'Variable b is: ', b
    
    ! interestingly they both display as 2.0 probably having to do with the leading bit discussed in class.

    ! Begin part 2
    do while ((sum + 1/counter) /= sum)
        sum = sum + 1/counter
        counter = counter + 1
    enddo

    ! print out the values after.
    print*, 'number of times executed is: ', counter
    print*, 'sum value is: ', sum
    print*, 'last value added is: ', 1/counter


end program homework2