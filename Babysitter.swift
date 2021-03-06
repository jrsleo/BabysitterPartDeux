import Foundation

public class BabySitter {
    public func calculatePay (startTime: Int, jobDuration: Int) -> Int {
        let bedTime = 9 // bedtime is assumed to always be 9 PM
        let midnight = 12
        let lastHour = 16 // corresponds to 4 am
        var pay = 0
        
        if startTime < bedTime {
            if startTime + jobDuration <= bedTime {
                pay = calculateDayTimeRate(jobDuration)
            }
            else if startTime + jobDuration <= midnight {
                pay = calculateDayTimeRate(bedTime - startTime) + calculateNightTimeRate(jobDuration - (bedTime - startTime))
            }
            else {
                pay = calculateDayTimeRate(bedTime - startTime) + calculateNightTimeRate(midnight - bedTime) + calculateEarlyMorningTimeRate(jobDuration - (midnight - bedTime) - (bedTime - startTime))
            }
        }
        else if (bedTime <= startTime) && (startTime < midnight) {
            if startTime + jobDuration <= midnight {
                pay = calculateNightTimeRate(jobDuration)
            }
            else if (startTime + jobDuration <= lastHour) {
                pay = calculateNightTimeRate(midnight - startTime) + calculateEarlyMorningTimeRate(jobDuration - (midnight - startTime))
            }
        }
        else {
            pay = calculateEarlyMorningTimeRate(jobDuration)
        }
        
        return pay
    }
    
    private func calculateDayTimeRate (timePeriod: Int) -> Int{
        return timePeriod * 12
    }
    
    private func calculateNightTimeRate (timePeriod: Int) -> Int {
        return timePeriod * 8
    }
    
    private func calculateEarlyMorningTimeRate (timePeriod: Int) -> Int {
        return timePeriod * 16
    }
}
