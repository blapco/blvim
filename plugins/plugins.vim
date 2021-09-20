call plug#begin(BlvimBundleDir(''))

"if !exists('g:BlvimBundleGroups')
"		let g:BlvimBundleGroups=['appearance', 'func']
"endif
let BlvimBundleGroups=['appearance', 'func']

for $bundleGroup in g:BlvimBundleGroups
	source $blvimRoot/plugins/$bundleGroup/$bundleGroup.bundles
endfor

call plug#end()
