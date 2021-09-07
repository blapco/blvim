for $bundleGroup in g:BlvimBundleGroups
	call SourceConfigs($blvimRoot . "/plugins/" . $bundleGroup)
endfor
