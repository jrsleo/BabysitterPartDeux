import Foundation

public class BabySitter {
    public func calculatePay (startTime: Int, jobDuration: Int) -> Int {
        let bedTime = 9 // bedtime is assumed to always be 9 PM
        var pay = 0
        
        if (startTime + jobDuration) <= bedTime {
            pay = calculateDayTimeRate(jobDuration)
        }
        else if (startTime + jobDuration) <= 12 {
            pay = calculateNightTimeRate(jobDuration)
        }
        else {
            pay = calculateEarlyMorningTimeRate(jobDuration)
        }
        
        return pay
    }
    
    private func calculateDayTimeRate (jobDuration: Int) -> Int{
        return jobDuration * 12
    }
    
    private func calculateNightTimeRate (jobDuration: Int) -> Int {
        return jobDuration * 8
    }
    
    private func calculateEarlyMorningTimeRate (jobDuration: Int) -> Int {
        return jobDuration * 16
    }
}
