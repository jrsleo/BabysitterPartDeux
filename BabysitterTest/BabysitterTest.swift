import XCTest

class BabysitterTest: XCTestCase {
    let babysitter = BabySitter();
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testWhenBabysitterStartsAtFivePMAndLeavesBeforeBedtimeThenTheyArePaidTwelvePerHour() {
        XCTAssertEqual(12, babysitter.calculatePay(5, jobDuration: 1))
        XCTAssertEqual(24, babysitter.calculatePay(5, jobDuration: 2))
    }
    
    func testWhenBabysitterStartsAtNinePMAndLeavesBeforeMidnightThenTheyArePaidTheNightTimeRate() {
        XCTAssertEqual(8, babysitter.calculatePay(9, jobDuration: 1))
        XCTAssertEqual(16, babysitter.calculatePay(9, jobDuration: 2))
    }
    
/*
Background
----------
This kata simulates a babysitter working and getting paid for one night.  The rules are pretty straight forward:

The babysitter
- starts no earlier than 5:00PM
- leaves no later than 4:00AM
- gets paid $12/hour from start-time to bedtime
- gets paid $8/hour from bedtime to midnight
- gets paid $16/hour from midnight to end of job
- gets paid for full hours (no fractional hours)


Feature:
As a babysitter
In order to get paid for 1 night of work
I want to calculate my nightly charge

Test against a single public function called calculatePay. Have the calculatePay function take two parameters: The start time, and the number of hours the job lasted (duration). Assume that bedtime is always 9pm.
*/
    
}
