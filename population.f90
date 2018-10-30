program population
  implicit none
  integer(4):: i, k, n
  real(8):: x, r, rdn, x0
  real(8), parameter:: one = 1.0d0, half = 0.5d0, two= 2.0d0
  real(8), parameter:: step = 1.5d0/1000.0d0

  call init_random_seed() ! set new seed

  r = one
  do k = 1, 1001
     do i = 1, 10
        call random_number(rdn)
        x0 = rdn
        r = one + (k-1)*step
        do n = 1, 29989
           x = r*x*(x - one)
        end do
        do n = 29990, 30000
           x = r*x*(x - one)
           write(6,*) r, x
        end do
     end do
  end do

contains

  subroutine init_random_seed()
    implicit none
    integer ir, nr, clock
    integer, dimension(:), allocatable :: seed
    call random_seed(size = nr) ! find size of seed
    allocate(seed(nr))
    call system_clock(count=clock) ! get time of processor clock
    seed = clock + 37 * (/ (ir-1, ir=1, nr) /) ! make seed
    call random_seed(put=seed) ! set seed
    deallocate(seed)
  end subroutine init_random_seed

end program population
