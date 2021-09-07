call plug#begin(BlvimBundleDir(''))

"if !exists('g:BlvimBundleGroups')
"		let g:BlvimBundleGroups=['appearance']
"endif
let BlvimBundleGroups=['appearance']

for $bundleGroup in g:BlvimBundleGroups
	source $blvimRoot/plugins/$bundleGroup/$bundleGroup.bundles
endfor

call plug#end()
