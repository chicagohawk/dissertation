from numpy import *
from pdb import set_trace

# inner boundary
U = array( [ [ -2.429, -9.064, -7.749, -2.122],
             [ -1.010, -2.848, 1.820, 1.536 ] ] )
V = array( [ [ -2.412, -9.039, -7.702, -2.092],
             [ -0.995, -2.844, 1.812, 1.519 ] ] )
inner_err = sqrt(sum((U-V)**2,0)) / sum(U**2,0) * 100.

# outer boundary
U = array( [ [ 0.663, 6.045, 7.773, 1.837 ],
             [ 1.183, 0.603, -1.851, -3.081 ] ] )
V = array( [ [ 0.660, 6.000, 7.731, 1.832 ],
             [ 1.190, 0.596, -1.845, -3.076 ] ] )

outer_err = sqrt(sum((U-V)**2,0)) / sum(U**2,0) * 100.
