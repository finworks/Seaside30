rendering
renderConfigurationOn: html
	| selectedLib |
	selectedLib := WAValueHolder new.
	html form: [
		html table: [
		 html tableRow: [
			html tableData: [
					html select
						list: self libraries;
						callback: [:value | selectedLib contents: value ];
						size: 10 ].
			html tableData: [
				html anchor
						title: 'Configure selected file library';
						class: 'large';
						onClick: 'return submitForm(this)';
						callback: [ selectedLib contents isNil ifFalse: [self configureLibrary: selectedLib contents default ] ];	
						with: 'Configure'] ] ] ]