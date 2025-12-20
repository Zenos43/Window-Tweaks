Kernel Worker Threads

Basically Controls the number of additional worker threads in the Windows kernel thread pool beyond the default allocation. These threads handle:



(AdditionalCriticalWorkerThreads)

Increases the number of threads in the Delayed Work Queue. Threads in this queue have a lower priority and therefore a higher latency because they must compete with other processing for CPU time. Increasing this value may give better performance in some situations.





Critical threads: High-priority system operations and I/O requests

Delayed threads: Background and maintenance tasks



After some research i realized that there are only 3 main options

0  is the default which lets windows manage it automatically

1 is "Per core" which Adds one thread of each type per logical processor

2 is  the "Maximum"  which Adds two threads of each type per logical processor



//Default Values

\[Session Manager\\Executive]

"AdditionalCriticalWorkerThreads": 0

&nbsp;   ExpAdditionalCriticalWorkerThreads



\[Session Manager\\Executive]

"AdditionalDelayedWorkerThreads": 0

&nbsp;   ExpAdditionalDelayedWorkerThreads



\[Session Manager\\Executive]

"MaximumKernelWorkerThreads": 1000

&nbsp;   ExpMaximumKernelWorkerThreads



//Extracted from CmControlVector()

