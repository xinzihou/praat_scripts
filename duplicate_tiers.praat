## hxz, 220604
# input: checked silent textgrid w/ 1 tier of characters (*_sil.TextGrid)
# output: textgrid w/ 3 duplicated sil tiers for validation, IPA & Pinyin 
# need to create an input folder & an output folder

# input files:
dir$ = "/Users/mac/Desktop/input/"

# output files:
outdir$ = "/Users/mac/Desktop/output/"

Create Strings as file list: "files", dir$ + "*_sil.TextGrid"
nFiles = Get number of strings

for i from 1 to nFiles
	selectObject: "Strings files"
	filename$ = Get string: i
	basename$ = filename$ - ".wav"
	Read from file: dir$ + filename$

	# duplicate tiers
	View & Edit alone
	Duplicate tier: 1, 2, "validation"
	Duplicate tier: 1, 3, "IPA"
	Duplicate tier: 1, 4, "Pinyin"

	# save output files
	Save as text file: outdir$ + basename$

	# clean up
	select all
	minusObject: "Strings files"
	Remove

endfor








