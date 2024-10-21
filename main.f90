program mueller_matrix
    ! Start
    implicit none
    real :: theta_HO, theta_VO, theta_PO, theta_MO, theta_LO, theta_RO
    real :: theta_OH, theta_OV, theta_HH, theta_VV, theta_PH, theta_MV
    real :: HO, VO, PO, MO, LO, RO, OH, OV, HH, VV, PH, MV
    real :: HV, VH, PV, MH, LH_RV, LV_RH
    real :: M(4,4)
    
    ! Prompt to user for eneter angles
    print *, 'Enter angle for HO (in degrees):'
    read *, theta_HO
    print *, 'Enter angle for VO (in degrees):'
    read *, theta_VO
    print *, 'Enter angle for PO (in degrees):'
    read *, theta_PO
    print *, 'Enter angle for MO (in degrees):'
    read *, theta_MO
    print *, 'Enter angle for LO (in degrees):'
    read *, theta_LO
    print *, 'Enter angle for RO (in degrees):'
    read *, theta_RO
    print *, 'Enter angle for OH (in degrees):'
    read *, theta_OH
    print *, 'Enter angle for OV (in degrees):'
    read *, theta_OV
    print *, 'Enter angle for HH (in degrees):'
    read *, theta_HH
    print *, 'Enter angle for VV (in degrees):'
    read *, theta_VV
    print *, 'Enter angle for PH (in degrees):'
    read *, theta_PH
    print *, 'Enter angle for MV (in degrees):'
    read *, theta_MV
    
    
    
    ! Convert angle from degere to radians
    HO = cos(theta_HO * 3.14159 / 180.0)
    VO = cos(theta_VO * 3.14159 / 180.0)
    PO = cos(theta_PO * 3.14159 / 180.0)
    MO = cos(theta_MO * 3.14159 / 180.0)
    LO = cos(theta_LO * 3.14159 / 180.0)
    RO = cos(theta_RO * 3.14159 / 180.0)
    OH = cos(theta_OH * 3.14159 / 180.0)
    OV = cos(theta_OV * 3.14159 / 180.0)
    HH = cos(theta_HH * 3.14159 / 180.0)
    VV = cos(theta_VV * 3.14159 / 180.0)
    PH = cos(theta_PH * 3.14159 / 180.0)
    MV = cos(theta_MV * 3.14159 / 180.0)
    
    ! inputs to HV, VH, PV, MH, LH_RV, LV_RH
    pprint *, 'Enter value for HV:'
    read *, HV
    print *, 'Enter value for VH:'
    read *, VH
    print *, 'Enter value for PV:'
    read *, PV
    print *, 'Enter value for MH:'
    read *, MH
    print *, 'Enter value for LH_RV:'
    read *, LH_RV
    print *, 'Enter value for LV_RH:'
    read *, LV_RH
    
    
    
    ! Fill Mueller matrix using the angle inputeess
    M(1,1) = 1.0   ! OO element
    M(1,2) = (HO - VO) / 2.0
    M(1,3) = (PO - MO) / 2.0
    M(1,4) = (LO - RO) / 2.0
    M(2,1) = (OH - OV) / 2.0
    M(2,2) = (HH + VV)/4.0 - (HV + VH)/4.0
    M(2,3) = (PH + MV)/4.0 - (PV + MH)/4.0
    M(2,4) = (LH_RV)/4.0 - (LV_RH)/4.0
    M(3,1) = (HO + VO) / 2.0
    M(3,2) = (HH - VV) / 2.0
    M(3,3) = (PH - MV) / 2.0
    M(3,4) = (LH_RV + LV_RH) / 2.0
    M(4,1) = (OH + OV) / 2.0
    M(4,2) = (HH + VV) / 4.0
    M(4,3) = (PH + MV) / 4.0
    M(4,4) = (LH_RV - LV_RH) / 4.0
    
    ! Call subroutine to display the matrixs
    call display_matrix(M)
    
contains
    subroutine display_matrix(M)
        real, dimension(4,4) :: M
        integer :: i, j
        print *, "Mueller Matrix:"
        do i = 1, 4
            write(*, "(4F10.4)") (M(i,j), j = 1, 4)
        end do
    end subroutine display_matrix

end program mueller_matrix
