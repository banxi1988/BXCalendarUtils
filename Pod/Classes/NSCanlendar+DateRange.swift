
public extension NSCalendar{
  public func bx_startDateInMonth(date:NSDate) -> NSDate{
    let comps = components([.Year,.Month,.Day], fromDate: date)
    comps.day = 1
    comps.hour = 0
    return dateFromComponents(comps)!
  }
  
  public func bx_endDateInMonth(date:NSDate) -> NSDate{
    let comps = components([.Year,.Month,.Day], fromDate: date)
    let maxDay = rangeOfUnit(.Day, inUnit: .Month, forDate: date).length
    comps.day = maxDay
    comps.hour = 24
    return dateFromComponents(comps)!
  }
  
  public func bx_endDayOfDate(date:NSDate) -> NSDate{
    let comps = components([.Year,.Month,.Day], fromDate: date)
    comps.hour = 24
    return dateFromComponents(comps)!
  }
  
  public func bx_mondayInWeek(date:NSDate) -> NSDate{
    let comps = components([.Year,.WeekOfYear,.Weekday], fromDate: date)
    comps.weekday = 2 // monday
    return dateFromComponents(comps)!
  }
  
  public func bx_sundayInWeek(date:NSDate, mondayAsFirstDay : Bool = true) -> NSDate{
    let comps = components([.Year,.WeekOfYear,.Weekday], fromDate: date)
    comps.weekday = 1 // monday
    if mondayAsFirstDay{
      comps.weekOfYear = comps.weekOfYear + 1
    }
    comps.hour = 24
    return dateFromComponents(comps)!
  }
  
  public func bx_nextMonthDate(date:NSDate) -> NSDate{
    return dateByAddingUnit(.Month, value: 1, toDate: date, options: [])!
  }
  
  public func bx_prevMonthDate(date:NSDate) -> NSDate{
    return dateByAddingUnit(.Month, value: -1, toDate: date, options: [])!
  }
  
  
  
}