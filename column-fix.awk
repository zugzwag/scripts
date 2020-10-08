#! /usr/bin/awk -f

# column-fix.awk
# Converts file from a series fields that should be in separate columns.
# This can happen when you cut and paste from a PDF and instead of a
# table of columns you get a single (or a few) column with all your data.
# April 23, 2018

# n is the number of columns to convert input file to
# This is the number of desired columns, whereas the input file has only one column
BEGIN {cols = 3}

{ array[++n] = $0}  # Variables initialize to 0, so pre-incrementing the counter lines it up with
                    # logical line numbers.
END {               # read out the array after processing input file
for (i = 1; i<=(n/cols); i++)
print array[i],array[i+(n/cols)],array[i+(2*n/cols)]
}
