#include <assert.h>
#include <CoreServices/CoreServices.h>
#include <mach/mach.h>
#include <mach/mach_time.h>
#include <unistd.h>
#include <inttypes.h>

int main(void)
{
    uint64_t        time;
    uint64_t        timeNano;
    static mach_timebase_info_data_t    sTimebaseInfo;

    // Get the machine absolute time

    time = mach_absolute_time();

    // Convert to nanoseconds.
    
    // If it's is the first time running, get the timebase.
    // We can use denom == 0 to indicate that sTimebaseInfo is 
    // uninitialised because it makes no sense to have a zero 
    // denominator in a fraction.

    if ( sTimebaseInfo.denom == 0 ) {
        (void) mach_timebase_info(&sTimebaseInfo);
    }

    timeNano = time * sTimebaseInfo.numer / sTimebaseInfo.denom;
	printf("%" PRIu64 "\n", timeNano);
    return 0;
}
//main

// sept 2016 - written by Giulia Frazzetta