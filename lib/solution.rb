def clock_angle(time)
    time = time.split(":")
    # 60 minutes per hour
    minutes = time.first.to_f * 60 + time.last.to_f
    # 720 minutes per day, 360 degrees per rotation therefore conversion factor of 0.5
    angle = minutes/2
    # Handle the 12 to 1 case since clocks dont start at zero
    angle -= 360 if angle >= 360
    return angle
end