.class Lsun/util/calendar/ImmutableGregorianDate;
.super Lsun/util/calendar/BaseCalendar$Date;
.source "ImmutableGregorianDate.java"


# instance fields
.field private final blacklist date:Lsun/util/calendar/BaseCalendar$Date;


# direct methods
.method constructor blacklist <init>(Lsun/util/calendar/BaseCalendar$Date;)V
    .registers 3
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;

    .line 34
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar$Date;-><init>()V

    .line 35
    if-eqz p1, :cond_8

    .line 38
    iput-object p1, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    .line 39
    return-void

    .line 36
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private greylist-max-r unsupported()V
    .registers 2

    .line 256
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public blacklist addDate(III)Lsun/util/calendar/CalendarDate;
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 154
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "n"    # I

    .line 90
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addHours(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "n"    # I

    .line 106
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addMillis(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "n"    # I

    .line 142
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addMinutes(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "n"    # I

    .line 118
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "n"    # I

    .line 78
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addSeconds(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "n"    # I

    .line 130
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .registers 5
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .line 162
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist addYear(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "n"    # I

    .line 58
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 216
    invoke-super {p0}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 202
    if-ne p0, p1, :cond_4

    .line 203
    const/4 v0, 0x1

    return v0

    .line 205
    :cond_4
    instance-of v0, p1, Lsun/util/calendar/ImmutableGregorianDate;

    if-nez v0, :cond_a

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_a
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    move-object v1, p1

    check-cast v1, Lsun/util/calendar/ImmutableGregorianDate;

    iget-object v1, v1, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getDayOfMonth()I
    .registers 2

    .line 82
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public blacklist getDayOfWeek()I
    .registers 2

    .line 94
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v0

    return v0
.end method

.method public blacklist getDaylightSaving()I
    .registers 2

    .line 240
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDaylightSaving()I

    move-result v0

    return v0
.end method

.method public blacklist getEra()Lsun/util/calendar/Era;
    .registers 2

    .line 42
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHours()I
    .registers 2

    .line 98
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v0

    return v0
.end method

.method public blacklist getMillis()I
    .registers 2

    .line 134
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMillis()I

    move-result v0

    return v0
.end method

.method public blacklist getMinutes()I
    .registers 2

    .line 110
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v0

    return v0
.end method

.method public blacklist getMonth()I
    .registers 2

    .line 70
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v0

    return v0
.end method

.method public blacklist getNormalizedYear()I
    .registers 2

    .line 248
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    return v0
.end method

.method public blacklist getSeconds()I
    .registers 2

    .line 122
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v0

    return v0
.end method

.method public blacklist getTimeOfDay()J
    .registers 3

    .line 146
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getTimeOfDay()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getYear()I
    .registers 2

    .line 50
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v0

    return v0
.end method

.method public blacklist getZone()Ljava/util/TimeZone;
    .registers 2

    .line 190
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getZoneOffset()I
    .registers 2

    .line 232
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZoneOffset()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 212
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isDaylightTime()Z
    .registers 2

    .line 182
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isDaylightTime()Z

    move-result v0

    return v0
.end method

.method public blacklist isLeapYear()Z
    .registers 2

    .line 62
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v0

    return v0
.end method

.method public blacklist isNormalized()Z
    .registers 2

    .line 170
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    return v0
.end method

.method public blacklist isSameDate(Lsun/util/calendar/CalendarDate;)Z
    .registers 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 198
    invoke-virtual {p1, p1}, Lsun/util/calendar/CalendarDate;->isSameDate(Lsun/util/calendar/CalendarDate;)Z

    move-result v0

    return v0
.end method

.method public blacklist isStandardTime()Z
    .registers 2

    .line 174
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isStandardTime()Z

    move-result v0

    return v0
.end method

.method public blacklist setDate(III)Lsun/util/calendar/CalendarDate;
    .registers 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 150
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist setDayOfMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "date"    # I

    .line 86
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected blacklist setDayOfWeek(I)V
    .registers 2
    .param p1, "dayOfWeek"    # I

    .line 224
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 225
    return-void
.end method

.method protected blacklist setDaylightSaving(I)V
    .registers 2
    .param p1, "daylightSaving"    # I

    .line 244
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 245
    return-void
.end method

.method public blacklist setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "era"    # Lsun/util/calendar/Era;

    .line 46
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist setHours(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "hours"    # I

    .line 102
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method blacklist setLeapYear(Z)V
    .registers 2
    .param p1, "leapYear"    # Z

    .line 66
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 67
    return-void
.end method

.method protected blacklist setLocale(Ljava/util/Locale;)V
    .registers 2
    .param p1, "loc"    # Ljava/util/Locale;

    .line 186
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 187
    return-void
.end method

.method public blacklist setMillis(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "millis"    # I

    .line 138
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist setMinutes(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "minutes"    # I

    .line 114
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist setMonth(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "month"    # I

    .line 74
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected blacklist setNormalized(Z)V
    .registers 2
    .param p1, "normalized"    # Z

    .line 228
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 229
    return-void
.end method

.method public blacklist setNormalizedYear(I)V
    .registers 2
    .param p1, "normalizedYear"    # I

    .line 252
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 253
    return-void
.end method

.method public blacklist setSeconds(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "seconds"    # I

    .line 126
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist setStandardTime(Z)V
    .registers 2
    .param p1, "standardTime"    # Z

    .line 178
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 179
    return-void
.end method

.method public blacklist setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;
    .registers 5
    .param p1, "hours"    # I
    .param p2, "minutes"    # I
    .param p3, "seconds"    # I
    .param p4, "millis"    # I

    .line 158
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected blacklist setTimeOfDay(J)V
    .registers 3
    .param p1, "fraction"    # J

    .line 166
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 167
    return-void
.end method

.method public blacklist setYear(I)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "year"    # I

    .line 54
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method public blacklist setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 2
    .param p1, "zoneinfo"    # Ljava/util/TimeZone;

    .line 194
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    return-object p0
.end method

.method protected blacklist setZoneOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .line 236
    invoke-direct {p0}, Lsun/util/calendar/ImmutableGregorianDate;->unsupported()V

    .line 237
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Lsun/util/calendar/ImmutableGregorianDate;->date:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
