module matrix.bin.caps.dialog.fmi;

/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/

void fmi () (ref Interface) {

	interface IMonacoEnvironment {
		baseUrl string;
		void createTrustedTypesPolicy(
			policyName, string,
			policyOptions, Options
		) (ref undefined, PickTrustedTypePolicy,Options, Extract);
	
    }
}
	
	