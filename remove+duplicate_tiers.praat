## hxz, 220605
# when "character" tier needs to be modified
# modify the duplicated "validation" tier
# remove "character", "IPA" & "Pinyin" tiers
# then re-duplicate tiers from the checked "validation" tier

# input: 在tier 2 "validation"修改了invertal no.后的*.TextGrid
# output: textgrid w/ 3 duplicated sil tiers fr tier 2 "validation"

# input files:
dir$ = "/Users/mac/Downloads/"

# output files:
outdir$ = "/Users/mac/Desktop/input/"

Create Strings as file list: "files", dir$ + "*_sil.TextGrid"
nFiles = Get number of strings

for i from 1 to nFiles
	selectObject: "Strings files"
	filename$ = Get string: i
	basename$ = filename$ - ".wav"
	Read from file: dir$ + filename$

	View & Edit alone
	# remove tiers
	Remove tier: 1
	Remove tier: 2
	Remove tier: 2
	# duplicate tiers
	Duplicate tier: 2, 1, "silences"
	Duplicate tier: 2, 3, "IPA"
	Duplicate tier: 1, 4, "Pinyin"

	# save output files
	Save as text file: outdir$ + basename$

	# clean up
	# select all
	# minusObject: "Strings files"
	# Remove

endfor








