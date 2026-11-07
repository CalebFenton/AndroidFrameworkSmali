.class public Lsun/util/calendar/Gregorian;
.super Lsun/util/calendar/BaseCalendar;
.source "Gregorian.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/Gregorian$Date;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 57
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 58
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->getCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/Gregorian;->getCalendarDate(J)Lsun/util/calendar/Gregorian$Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCalendarDate()Lsun/util/calendar/Gregorian$Date;
    .registers 4

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->newCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(J)Lsun/util/calendar/Gregorian$Date;
    .registers 4
    .param p1, "millis"    # J

    .line 69
    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->newCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .line 77
    invoke-virtual {p0, p3}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/Gregorian;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/Gregorian$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .line 73
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/Gregorian$Date;

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 61
    const-string v0, "gregorian"

    return-object v0
.end method

.method public bridge synthetic blacklist newCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lsun/util/calendar/Gregorian;->newCalendarDate()Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 37
    invoke-virtual {p0, p1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newCalendarDate()Lsun/util/calendar/Gregorian$Date;
    .registers 2

    .line 81
    new-instance v0, Lsun/util/calendar/Gregorian$Date;

    invoke-direct {v0}, Lsun/util/calendar/Gregorian$Date;-><init>()V

    return-object v0
.end method

.method public blacklist newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 85
    new-instance v0, Lsun/util/calendar/Gregorian$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/Gregorian$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method
