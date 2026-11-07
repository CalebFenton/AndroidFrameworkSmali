.class public abstract Lsun/util/calendar/AbstractCalendar;
.super Lsun/util/calendar/CalendarSystem;
.source "AbstractCalendar.java"


# static fields
.field static final blacklist DAY_IN_MILLIS:I = 0x5265c00

.field static final blacklist EPOCH_OFFSET:I = 0xaf93b

.field static final blacklist HOUR_IN_MILLIS:I = 0x36ee80

.field static final blacklist MINUTE_IN_MILLIS:I = 0xea60

.field static final blacklist SECOND_IN_MILLIS:I = 0x3e8


# instance fields
.field private blacklist eras:[Lsun/util/calendar/Era;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Lsun/util/calendar/CalendarSystem;-><init>()V

    .line 63
    return-void
.end method

.method static blacklist getDayOfWeekDateAfter(JI)J
    .registers 5
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    .line 314
    const-wide/16 v0, 0x7

    add-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static blacklist getDayOfWeekDateBefore(JI)J
    .registers 5
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    .line 302
    const-wide/16 v0, 0x1

    sub-long v0, p0, v0

    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static greylist-max-r getDayOfWeekDateOnOrBefore(JI)J
    .registers 8
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    .line 327
    add-int/lit8 v0, p2, -0x1

    int-to-long v0, v0

    sub-long v0, p0, v0

    .line 328
    .local v0, "fd":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x7

    if-ltz v2, :cond_12

    .line 329
    rem-long v2, v0, v3

    sub-long v2, p0, v2

    return-wide v2

    .line 331
    :cond_12
    invoke-static {v0, v1, v3, v4}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v2

    sub-long v2, p0, v2

    return-wide v2
.end method


# virtual methods
.method public blacklist getCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 4

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .registers 4
    .param p1, "millis"    # J

    .line 108
    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .registers 6
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .line 112
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    .line 113
    .local v0, "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 16
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "ms":I
    const/4 v1, 0x0

    .line 119
    .local v1, "zoneOffset":I
    const/4 v2, 0x0

    .line 120
    .local v2, "saving":I
    const-wide/16 v3, 0x0

    .line 123
    .local v3, "days":J
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 124
    .local v5, "zi":Ljava/util/TimeZone;
    const/4 v6, 0x1

    const v7, 0x5265c00

    if-eqz v5, :cond_36

    .line 125
    const/4 v8, 0x2

    new-array v8, v8, [I

    .line 129
    .local v8, "offsets":[I
    instance-of v9, v5, Llibcore/util/ZoneInfo;

    if-eqz v9, :cond_1e

    .line 130
    move-object v9, v5

    check-cast v9, Llibcore/util/ZoneInfo;

    invoke-virtual {v9, p1, p2, v8}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    move-result v1

    goto :goto_2f

    .line 133
    :cond_1e
    invoke-virtual {v5, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 134
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v9

    const/4 v10, 0x0

    aput v9, v8, v10

    .line 135
    aget v9, v8, v10

    sub-int v9, v1, v9

    aput v9, v8, v6

    .line 144
    :goto_2f
    div-int v9, v1, v7

    int-to-long v3, v9

    .line 145
    rem-int v0, v1, v7

    .line 146
    aget v2, v8, v6

    .line 148
    .end local v8    # "offsets":[I
    :cond_36
    invoke-virtual {p3, v1}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    .line 149
    invoke-virtual {p3, v2}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    .line 151
    const-wide/32 v8, 0x5265c00

    div-long v10, p1, v8

    add-long/2addr v3, v10

    .line 152
    rem-long v8, p1, v8

    long-to-int v8, v8

    add-int/2addr v0, v8

    .line 153
    const-wide/16 v8, 0x1

    if-lt v0, v7, :cond_4d

    .line 155
    sub-int/2addr v0, v7

    .line 156
    add-long/2addr v3, v8

    goto :goto_52

    .line 160
    :cond_4d
    :goto_4d
    if-gez v0, :cond_52

    .line 161
    add-int/2addr v0, v7

    .line 162
    sub-long/2addr v3, v8

    goto :goto_4d

    .line 167
    :cond_52
    :goto_52
    const-wide/32 v7, 0xaf93b

    add-long/2addr v3, v7

    .line 170
    invoke-virtual {p0, p3, v3, v4}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 173
    invoke-virtual {p0, p3, v0}, Lsun/util/calendar/AbstractCalendar;->setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;

    .line 174
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->isLeapYear(Lsun/util/calendar/CalendarDate;)Z

    move-result v7

    invoke-virtual {p3, v7}, Lsun/util/calendar/CalendarDate;->setLeapYear(Z)V

    .line 175
    invoke-virtual {p3, v6}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    .line 176
    return-object p3
.end method

.method protected abstract blacklist getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
.end method

.method public blacklist getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
    .registers 7
    .param p1, "eraName"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-eqz v0, :cond_1a

    .line 67
    iget-object v0, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1a

    aget-object v3, v0, v2

    .line 68
    .local v3, "era":Lsun/util/calendar/Era;
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 69
    return-object v3

    .line 67
    .end local v3    # "era":Lsun/util/calendar/Era;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 73
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-r getEras()[Lsun/util/calendar/Era;
    .registers 5

    .line 77
    const/4 v0, 0x0

    .line 78
    .local v0, "e":[Lsun/util/calendar/Era;
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-eqz v1, :cond_13

    .line 79
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    new-array v0, v1, [Lsun/util/calendar/Era;

    .line 80
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :cond_13
    return-object v0
.end method

.method protected abstract blacklist getFixedDate(Lsun/util/calendar/CalendarDate;)J
.end method

.method public blacklist getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .registers 11
    .param p1, "nth"    # I
    .param p2, "dayOfWeek"    # I
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .line 280
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/CalendarDate;

    .line 281
    .local v0, "ndate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, v0}, Lsun/util/calendar/AbstractCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 282
    invoke-virtual {p0, v0}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v1

    .line 284
    .local v1, "fd":J
    if-lez p1, :cond_18

    .line 285
    mul-int/lit8 v3, p1, 0x7

    int-to-long v3, v3

    invoke-static {v1, v2, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateBefore(JI)J

    move-result-wide v5

    add-long/2addr v3, v5

    .local v3, "nfd":J
    goto :goto_20

    .line 287
    .end local v3    # "nfd":J
    :cond_18
    mul-int/lit8 v3, p1, 0x7

    int-to-long v3, v3

    invoke-static {v1, v2, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateAfter(JI)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 289
    .restart local v3    # "nfd":J
    :goto_20
    invoke-virtual {p0, v0, v3, v4}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 290
    return-object v0
.end method

.method public blacklist getTime(Lsun/util/calendar/CalendarDate;)J
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 180
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 181
    .local v0, "gd":J
    const-wide/32 v2, 0xaf93b

    sub-long v2, v0, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 182
    .local v2, "ms":J
    const/4 v4, 0x0

    .line 183
    .local v4, "zoneOffset":I
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    .line 184
    .local v5, "zi":Ljava/util/TimeZone;
    if-eqz v5, :cond_47

    .line 185
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v6

    if-eqz v6, :cond_27

    .line 186
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v6

    int-to-long v6, v6

    sub-long v6, v2, v6

    return-wide v6

    .line 189
    :cond_27
    const/4 v6, 0x2

    new-array v6, v6, [I

    .line 190
    .local v6, "offsets":[I
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 201
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v7, v7

    sub-long v7, v2, v7

    invoke-virtual {v5, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    goto :goto_47

    .line 213
    :cond_3c
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v7

    int-to-long v7, v7

    sub-long v7, v2, v7

    invoke-virtual {v5, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 217
    .end local v6    # "offsets":[I
    :cond_47
    :goto_47
    int-to-long v6, v4

    sub-long/2addr v2, v6

    .line 218
    invoke-virtual {p0, v2, v3, p1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 219
    return-wide v2
.end method

.method protected blacklist getTimeOfDay(Lsun/util/calendar/CalendarDate;)J
    .registers 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 223
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v0

    .line 224
    .local v0, "fraction":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, v0, v2

    if-eqz v2, :cond_b

    .line 225
    return-wide v0

    .line 227
    :cond_b
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 228
    invoke-virtual {p1, v0, v1}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    .line 229
    return-wide v0
.end method

.method public greylist-max-r getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 233
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v0

    int-to-long v0, v0

    .line 234
    .local v0, "fraction":J
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    .line 235
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 236
    mul-long/2addr v0, v2

    .line 237
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 238
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 239
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 240
    return-wide v0
.end method

.method public blacklist getWeekLength()I
    .registers 2

    .line 274
    const/4 v0, 0x7

    return v0
.end method

.method protected abstract blacklist isLeapYear(Lsun/util/calendar/CalendarDate;)Z
.end method

.method blacklist normalizeTime(Lsun/util/calendar/CalendarDate;)I
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 382
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 383
    .local v0, "fraction":J
    const-wide/16 v2, 0x0

    .line 385
    .local v2, "days":J
    const-wide/32 v4, 0x5265c00

    cmp-long v6, v0, v4

    const-wide/16 v7, 0x0

    if-ltz v6, :cond_13

    .line 386
    div-long v2, v0, v4

    .line 387
    rem-long/2addr v0, v4

    goto :goto_21

    .line 388
    :cond_13
    cmp-long v6, v0, v7

    if-gez v6, :cond_21

    .line 389
    invoke-static {v0, v1, v4, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v2

    .line 390
    cmp-long v6, v2, v7

    if-eqz v6, :cond_21

    .line 391
    mul-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 394
    :cond_21
    :goto_21
    cmp-long v4, v2, v7

    if-eqz v4, :cond_28

    .line 395
    invoke-virtual {p1, v0, v1}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    .line 397
    :cond_28
    const-wide/16 v4, 0x3e8

    rem-long v6, v0, v4

    long-to-int v6, v6

    invoke-virtual {p1, v6}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    .line 398
    div-long/2addr v0, v4

    .line 399
    const-wide/16 v4, 0x3c

    rem-long v6, v0, v4

    long-to-int v6, v6

    invoke-virtual {p1, v6}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 400
    div-long/2addr v0, v4

    .line 401
    rem-long v6, v0, v4

    long-to-int v6, v6

    invoke-virtual {p1, v6}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 402
    div-long v4, v0, v4

    long-to-int v4, v4

    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 403
    long-to-int v4, v2

    return v4
.end method

.method public blacklist setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
    .registers 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "eraName"    # Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    if-nez v0, :cond_5

    .line 87
    return-void

    .line 89
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 90
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    .line 91
    .local v1, "e":Lsun/util/calendar/Era;
    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 92
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 93
    return-void

    .line 89
    .end local v1    # "e":Lsun/util/calendar/Era;
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 96
    .end local v0    # "i":I
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown era name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist setEras([Lsun/util/calendar/Era;)V
    .registers 2
    .param p1, "eras"    # [Lsun/util/calendar/Era;

    .line 100
    iput-object p1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    .line 101
    return-void
.end method

.method public blacklist setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
    .registers 10
    .param p1, "cdate"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fraction"    # I

    .line 244
    if-ltz p2, :cond_31

    .line 247
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    .line 248
    .local v0, "normalizedState":Z
    move v1, p2

    .line 249
    .local v1, "time":I
    const v2, 0x36ee80

    div-int v3, v1, v2

    .line 250
    .local v3, "hours":I
    rem-int/2addr v1, v2

    .line 251
    const v2, 0xea60

    div-int v4, v1, v2

    .line 252
    .local v4, "minutes":I
    rem-int/2addr v1, v2

    .line 253
    div-int/lit16 v2, v1, 0x3e8

    .line 254
    .local v2, "seconds":I
    rem-int/lit16 v1, v1, 0x3e8

    .line 255
    invoke-virtual {p1, v3}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 256
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 257
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 258
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    .line 259
    int-to-long v5, p2

    invoke-virtual {p1, v5, v6}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    .line 260
    const/16 v5, 0x18

    if-ge v3, v5, :cond_30

    if-eqz v0, :cond_30

    .line 263
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    .line 265
    :cond_30
    return-object p1

    .line 245
    .end local v0    # "normalizedState":Z
    .end local v1    # "time":I
    .end local v2    # "seconds":I
    .end local v3    # "hours":I
    .end local v4    # "minutes":I
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public blacklist validateTime(Lsun/util/calendar/CalendarDate;)Z
    .registers 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 360
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v0

    .line 361
    .local v0, "t":I
    const/4 v1, 0x0

    if-ltz v0, :cond_30

    const/16 v2, 0x18

    if-lt v0, v2, :cond_c

    goto :goto_30

    .line 364
    :cond_c
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v0

    .line 365
    if-ltz v0, :cond_2f

    const/16 v2, 0x3c

    if-lt v0, v2, :cond_17

    goto :goto_2f

    .line 368
    :cond_17
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v0

    .line 370
    if-ltz v0, :cond_2e

    if-lt v0, v2, :cond_20

    goto :goto_2e

    .line 373
    :cond_20
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v0

    .line 374
    if-ltz v0, :cond_2d

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_2b

    goto :goto_2d

    .line 377
    :cond_2b
    const/4 v1, 0x1

    return v1

    .line 375
    :cond_2d
    :goto_2d
    return v1

    .line 371
    :cond_2e
    :goto_2e
    return v1

    .line 366
    :cond_2f
    :goto_2f
    return v1

    .line 362
    :cond_30
    :goto_30
    return v1
.end method
