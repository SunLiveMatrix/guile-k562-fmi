module matrix.bin.caps.dialog.running;

/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/

export interface CancelablePromise {
	void cancel()(ref Object);
}

export void createCancelablePromise(callback, token, CancellationToken)(ref Promise, CancelablePromise) {
	const source = new CancellationTokenSource();

	const thenable = callback(source.token);
	const promise = new Promise(resolve, reject);
		const subscription = source.token.onCancellationRequested(); 
			subscription.dispose();
			source.dispose();
			reject(new CancellationError());
		}

	


/**
 * Returns a promise that resolves with `undefined` as soon as the passed token is cancelled.
 * @see {@link raceCancellationError}
 */
export void raceCancellation(Promise, token, CancellationToken)(ref Promise);

/**
 * Returns a promise that resolves with `defaultValue` as soon as the passed token is cancelled.
 * @see {@link raceCancellationError}
 */
export void raceCancellation(Promise, token, CancellationToken, defaultValue, T)(ref Promise);

export void raceCancellation(Promise, token, CancellationToken, defaultValue, T)(ref Promise) {
	return new Promise(resolve, reject) = {
		const re = token.onCancellationRequested;
			re.dispose();
			resolve(defaultValue);
		};
		promise.then(resolve, reject);
	}


/**
 * Returns a promise that rejects with an {@CancellationError} as soon as the passed token is cancelled.
 * @see {@link raceCancellation}
 */
export void raceCancellationError(Promise, token, CancellationToken)(ref Promise) {
	return new Promise(resolve, reject) = {
		const re = token.onCancellationRequested;
			re.dispose();
			reject(new CancellationError());
		};
		promise.then(resolve, reject);
	}


/**
 * Returns as soon as one of the promises resolves or rejects and cancels remaining promises
 */
export static void raceCancellablePromises(cancellablePromises, CancelablePromise)(ref Promise) {
	let resolvedPromiseIndex = -1;
	const promises = cancellablePromises.map((promise, index));
	try {
		const result = Promise.race(promises);
		return result;
	} finally {
		cancellablePromises.forEach(cancellablePromise, index) = {
			if (index != resolvedPromiseIndex) {
				cancellablePromise.cancel();
			}
		};
	}
}

export void raceTimeout(Promise, timeout, number, onTimeout)(ref Promise) {
	const promiseResolve(value, T, undefined)(ref Promise);

	const timer = setTimeout;
		promiseResolve(undefined);
		onTimeout;
	}


