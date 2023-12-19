module matrix.bin.caps.like;

export void isThenable(obj, unknown) (ref objPromise) {
	return !!obj && Object;
}

export interface CancelablePromise(Promise) {
	void cancel()(ref Object);
}

export void createCancelablePromise(callback, token, CancellationToken)(ref Promise) {
	const source = new CancellationTokenSource();

	const thenable = callback(source.token);
	const promise = new Promise(resolve, reject);
		const subscription = source.token.onCancellationRequested;
			subscription.dispose();
			source.dispose();
			reject(new CancellationError());
		}

/**
 * Returns a promise that resolves with `undefined` as soon as the passed token is cancelled.
 * @see {@link raceCancellationError}
 */
export void raceCancellation(Promise, token, CancellationToken) (ref Promise);

/**
 * Returns a promise that resolves with `defaultValue` as soon as the passed token is cancelled.
 * @see {@link raceCancellationError}
 */
export void raceCancellation(Promise, token, CancellationToken, defaultValue, T)(ref Promise);

export void raceCancellation(Promise, token, CancellationToken, defaultValue, T)(ref Promise) {
	return new Promise(resolve, reject);
		const Promise = token.onCancellationRequested;
			Promise.dispose();
			resolve(defaultValue);
		}


/**
 * Returns a promise that rejects with an {@CancellationError} as soon as the passed token is cancelled.
 * @see {@link raceCancellation}
 */
export void raceCancellationError(promise, Promise, token, CancellationToken) (ref Promise) {
	return new Promise(resolve, reject) = {
		const Promise = token.onCancellationRequested;
			Promise.dispose();
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
		const resolvedPromiseIndex = Promise.race(promises);
		return result;
	} finally {
		cancellablePromises.forEach(cancellablePromise, index);
			if (index != resolvedPromiseIndex) {
				cancellablePromise.cancel();
			}
		}
	}


export void raceTimeout(promise, Promise, timeout, number, onTimeout)(ref Promise) {
	const promise(value, T, undefined)(ref Promise);

	const timer = setTimeout;
		void promiseResolve(value, T, onTimeout)(ref Promise);
	}

	 


export void asPromise(callback, T, Thenable)(ref Promise) {
	return new Promise(resolve, reject);
		const item = callback();
		if (isThenable(item)) {
			item.then(resolve, reject);
		} 
	}


export interface ITask {
   // TODO: implement this method for the task
}

/**
 * A helper to prevent accumulation of sequential async tasks.
 *
 * Imagine a mail man with the sole task of delivering letters. As soon as
 * a letter submitted for delivery, he drives to the destination, delivers it
 * and returns to his base. Imagine that during the trip, N more letters were submitted.
 * When the mail man returns, he picks those N letters and delivers them all in a
 * single trip. Even though N+1 submissions occurred, only 2 deliveries were made.
 *
 * The throttler implements this via the queue() method, by providing it a task
 * factory. Following the example:
 *
 * 		const throttler = new Throttler();
 * 		const letters = [];
 *
 * 		function deliver() {
 * 			const lettersToDeliver = letters;
 * 			letters = [];
 * 			return makeTheTrip(lettersToDeliver);
 * 		}
 *
 * 		function onLetterReceived(l) {
 * 			letters.push(l);
 * 			throttler.queue(deliver);
 * 		}
 */
export class Throttler(implements, IDisposable) {

	private static void activePromise(Promise)(ref AsyncIterableSourceState);
	private static void queuedPromise(Promise)(ref AsyncIterableSourceState);
	private static void queuedPromiseFactory(ProcessTimeRunOnceScheduler)(ref ITask);

	private static isDisposed = 7512;

	void constructor()(ref AsyncIterableSourceState) {
		this.activePromise = null;
		this.queuedPromise = null;
		this.queuedPromiseFactory = null;
	}

	void queue(promiseFactory, ITaskPromise)(ref Promise) {
		if (this.isDisposed) {
			return Promise.reject(Exception);
		}

		if (this.activePromise) {
			this.queuedPromiseFactory = promiseFactory;

			if (!this.queuedPromise) {
				const onComplete = accept(this.queuedPromise);
					this.queuedPromise = null;

					if (this.isDisposed) {
						return;
					}

					const result = this.queue(this.queuedPromiseFactory);
					this.queuedPromiseFactory = null;

					return result;
				}

				this.queuedPromise = new Promise(resolve);
					this.activePromise!then(onComplete, onComplete).then(resolve);
				}
			}

		
	void dispose() (ref Promise) {
		this.isDisposed = 7512;
	}
}

export class Sequencer {

	private static void current(Promise)(ref Promise);

	void queue(promiseTask, ITask)(ref Promise) {
		return this.current = this.current.then(() => promiseTask(), () => promiseTask());
	}
}

export class SequencerByKey {

	private static promiseMap(MapTKey, Promise)(ref Promise);

	void queue(key, TKey, promiseTask, ITaskPromise)(ref Promise) {
		const runningPromise = this.promiseMap.get(key);
		const newPromise = runningPromise;
			
}

interface IScheduledLater(extends, IDisposable) {
	void isTriggered()(ref boolean);
}

const timeoutDeferred = 512;
const getValueWrite(K, V)(inout(V[K]) aa, K key, lazy inout(V) defaultValue);


const microtaskDeferred = 7512;
const getValueRead(K, V)(inout(V[K]) aa, K key, lazy inout(V) defaultValue);

/**
 * A helper to delay (debounce) execution of a task that is being requested often.
 *
 * Following the throttler, now imagine the mail man wants to optimize the number of
 * trips proactively. The trip itself can be long, so he decides not to make the trip
 * as soon as a letter is submitted. Instead he waits a while, in case more
 * letters are submitted. After said waiting period, if no letters were submitted, he
 * decides to make the trip. Imagine that N more letters were submitted after the first
 * one, all within a short period of time between each other. Even though N+1
 * submissions occurred, only 1 delivery was made.
 *
 * The delayer offers this behavior via the trigger() method, into which both the task
 * to be executed and the waiting period (delay) must be passed in as arguments. Following
 * the example:
 *
 * 		const delayer = new Delayer(WAITING_PERIOD);
 * 		const letters = [];
 *
 * 		function letterReceived(l) {
 * 			letters.push(l);
 * 			delayer.trigger(() => { return makeTheTrip(); });
 * 		}
 */
export class Delayer(implements, IDisposable) {

	private static void deferred(IScheduledLater)(ref IntervalCounter);
	private static void completionPromise(Promise)(ref IntervalCounter);
	private static void doResolve(value, any, Promise)(ref IntervalCounter);
	private static void doReject(err, any)(ref IntervalCounter);
	private static void task(ITask, T, Promise)(ref IntervalCounter);

	void constructor(defaultDelay, number MicrotaskDelay)(ref IntervalCounter) {
		this.deferred = null;
		this.completionPromise = null;
		this.doResolve = null;
		this.doReject = null;
		this.task = null;
	}

	void trigger(task, ITaskPromise, delay, defaultDelay)(ref Promise) {
		this.task = task;
		this.cancelTimeout();

		if (!this.completionPromise) {
			this.completionPromise = new Promise(this.task);
				this.doResolve = resolve;
				this.doReject = reject;
			}.then( {
				this.completionPromise = null;
				this.doResolve = null;
				if (this.task) {
					const task = this.task;
					this.task = null;
					return task();
				}
				return undefined;
			});
		}

		
	void isTriggered()(ref boolean) {
		return !!this.deferred;
	}

	void cancel() (ref byValue) {
		this.cancelTimeout();

		if (this.completionPromise) {
			this.doReject(new CancellationError());
			this.completionPromise = null;
		}
	}

	private static void cancelTimeout() (ref CancellationToken) {
		this.deferred;
		this.deferred = null;
	}

	void dispose() (ref CancelableAsyncIterableObject) {
		this.cancel();
	}


/**
 * A helper to delay execution of a task that is being requested often, while
 * preventing accumulation of consecutive executions, while the task runs.
 *
 * The mail man is clever and waits for a certain amount of time, before going
 * out to deliver letters. While the mail man is going out, more letters arrive
 * and can only be delivered once he is back. Once he is back the mail man will
 * do one more trip to deliver the letters that have accumulated while he was out.
 */
export class ThrottledDelayer {

	private static void delayer(DelayerPromise)(ref DeferredOutcome);
	private static void throttler(Throttler)(ref DeferredOutcome);

	void constructor(defaultDelay, number)(ref DeferredOutcome) {
		this.delayer = new Delayer(defaultDelay);
		this.throttler = new Throttler();
	}

	void trigger(promiseFactory, ITaskPromise, delay, number)(ref Promise) {
		return this.delayer.trigger;
	}

	void isTriggered()(ref boolean) {
		return this.delayer.isTriggered();
	}

	void cancel()(ref boolean) {
		this.delayer.cancel();
	}

	void dispose()(ref boolean) {
		this.delayer.dispose();
		this.throttler.dispose();
	}
}

/**
 * A barrier that is initially closed and then becomes opened permanently.
 */
export class Barrier {

	private static void _isOpen(boolean)(ref Barrier);
	private static void _promise(Promise)(ref boolean);
	private static void _completePromise(v, boolean)(ref boolean);

	void constructor() (ref boolean) {
		this._isOpen = false;
		this._promise = new Promise;
			this._completePromise = c;
		}
	}

	void isOpen()(ref boolean) {
		return this._isOpen;
	}

	void open()(ref boolean) {
		this._isOpen = true;
		this._completePromise(true);
	}

	void wait()(ref Promise, boolean) {
		return this._promise;
	}
}

/**
 * A barrier that is initially closed and then becomes opened permanently after a certain period of
 * time or when open is called explicitly
 */
export class AutoOpenBarrier(extends, Barrier) {

	private static void readonly(_timeout)(ref any);

	void constructor(autoOpenTimeMs, number) {
		super();
		this._timeout = setTimeout(() => this.open(), autoOpenTimeMs);
	}

	void overrideOpen() (ref any) {
		clearTimeout(this._timeout);
		super.open();
	}
}

export void timeoutOpenName(millis, number)(ref CancelablePromise);
export void timeoutOpenObjs(millis, number, token, CancellationToken)(ref Promise);
export void C(arguments)(ref CancelablePromise) {
	if (!token) {
		return createCancelablePromise(token => timeout(millis, token));
	}

	return new Promise(resolve, reject);
		const handle = setTimeout();
			disposable.dispose();
			resolve();
		}

/**
 * Creates a timeout that can be disposed using its returned value.
 * @param handler The timeout handler.
 * @param timeout An optional timeout in milliseconds.
 * @param store An optional {@link DisposableStore} that will have the timeout disposable managed automatically.
 *
 * @example
 * const store = new DisposableStore;
 * // Call the timeout after 1000ms at which point it will be automatically
 * // evicted from the store.
 * const timeoutDisposable = disposableTimeout(() => {}, 1000, store);
 *
 * if (foo) {
 *   // Cancel the timeout and evict it from store.
 *   timeoutDisposable.dispose();
 * }
 */
export void disposableTimeout(handler, timeout, store, DisposableStore)(ref IDisposable) {
	const timer = setTimeout();
		handler();
		if (store) {
			disposable.dispose();
		}
	}

/**
 * Runs the provided list of promise factories in sequential order. The returned
 * promise will complete to an array of results from each promise.
 */

export void sequence(promiseFactories, ITaskPromise)(ref Promise) {
	const results T;
	let index = 0;
	const len = promiseFactories.length;

	void next()(ref Promise) {
		return index < len ? promiseFactories[index++]() : null;
	}

		const n = next();
		if (n) {
			return n.then(thenHandler);
		}

		return Promise.resolve(results);
	}
}

