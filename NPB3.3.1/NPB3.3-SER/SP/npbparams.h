c CLASS = C
c  
c  
c  This file is generated automatically by the setparams utility.
c  It sets the number of processors and the class of the NPB
c  in this directory. Do not modify it by hand.
c  
        integer problem_size, niter_default
        parameter (problem_size=162, niter_default=400)
        double precision dt_default
        parameter (dt_default = 0.00067d0)
        logical  convertdouble
        parameter (convertdouble = .false.)
        character compiletime*11
        parameter (compiletime='19 Sep 2024')
        character npbversion*5
        parameter (npbversion='3.3.1')
        character cs1*8
        parameter (cs1='gfortran')
        character cs2*6
        parameter (cs2='$(F77)')
        character cs3*6
        parameter (cs3='(none)')
        character cs4*6
        parameter (cs4='(none)')
        character cs5*39
        parameter (cs5='-O3 -mcmodel=medium -fallow-invalid-boz')
        character cs6*19
        parameter (cs6='-O3 -mcmodel=medium')
        character cs7*6
        parameter (cs7='randdp')
