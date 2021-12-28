call plug#begin(BlvimBundleDir(''))

let BlvimBundleGroups=['appearance', 'func']

for $bundleGroup in g:BlvimBundleGroups
	source $blvimRoot/plugins/$bundleGroup/$bundleGroup.bundles
endfor

call plug#end()
