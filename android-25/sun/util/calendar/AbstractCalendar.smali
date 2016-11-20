.class public abstract Lsun/util/calendar/AbstractCalendar;
.super Lsun/util/calendar/CalendarSystem;
.source "AbstractCalendar.java"


# static fields
.field static final DAY_IN_MILLIS:I = 0x5265c00

.field static final EPOCH_OFFSET:I = 0xaf93b

.field static final HOUR_IN_MILLIS:I = 0x36ee80

.field static final MINUTE_IN_MILLIS:I = 0xea60

.field static final SECOND_IN_MILLIS:I = 0x3e8


# instance fields
.field private eras:[Lsun/util/calendar/Era;


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Lsun/util/calendar/CalendarSystem;-><init>()V

    #@3
    return-void
.end method

.method static getDayOfWeekDateAfter(JI)J
    .locals 2
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    #@0
    .prologue
    .line 295
    const-wide/16 v0, 0x7

    #@2
    add-long/2addr v0, p0

    #@3
    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@6
    move-result-wide v0

    #@7
    return-wide v0
.end method

.method static getDayOfWeekDateBefore(JI)J
    .locals 2
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    #@0
    .prologue
    .line 283
    const-wide/16 v0, 0x1

    #@2
    sub-long v0, p0, v0

    #@4
    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@7
    move-result-wide v0

    #@8
    return-wide v0
.end method

.method public static getDayOfWeekDateOnOrBefore(JI)J
    .locals 6
    .param p0, "fixedDate"    # J
    .param p2, "dayOfWeek"    # I

    #@0
    .prologue
    const-wide/16 v4, 0x7

    #@2
    .line 308
    add-int/lit8 v2, p2, -0x1

    #@4
    int-to-long v2, v2

    #@5
    sub-long v0, p0, v2

    #@7
    .line 309
    .local v0, "fd":J
    const-wide/16 v2, 0x0

    #@9
    cmp-long v2, v0, v2

    #@b
    if-ltz v2, :cond_0

    #@d
    .line 310
    rem-long v2, v0, v4

    #@f
    sub-long v2, p0, v2

    #@11
    return-wide v2

    #@12
    .line 312
    :cond_0
    invoke-static {v0, v1, v4, v5}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    #@15
    move-result-wide v2

    #@16
    sub-long v2, p0, v2

    #@18
    return-wide v2
.end method


# virtual methods
.method public getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 3

    #@0
    .prologue
    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 108
    invoke-virtual {p0}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate()Lsun/util/calendar/CalendarDate;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 3
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 112
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@3
    move-result-object v0

    #@4
    .line 113
    .local v0, "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 11
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 117
    const/4 v2, 0x0

    #@1
    .line 118
    .local v2, "ms":I
    const/4 v6, 0x0

    #@2
    .line 119
    .local v6, "zoneOffset":I
    const/4 v4, 0x0

    #@3
    .line 120
    .local v4, "saving":I
    const-wide/16 v0, 0x0

    #@5
    .line 123
    .local v0, "days":J
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    #@8
    move-result-object v5

    #@9
    .line 124
    .local v5, "zi":Ljava/util/TimeZone;
    if-eqz v5, :cond_0

    #@b
    .line 125
    const/4 v7, 0x2

    #@c
    new-array v3, v7, [I

    #@e
    .line 126
    .local v3, "offsets":[I
    invoke-virtual {v5, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    #@11
    move-result v6

    #@12
    .line 127
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    #@15
    move-result v7

    #@16
    const/4 v8, 0x0

    #@17
    aput v7, v3, v8

    #@19
    .line 128
    const/4 v7, 0x0

    #@1a
    aget v7, v3, v7

    #@1c
    sub-int v7, v6, v7

    #@1e
    const/4 v8, 0x1

    #@1f
    aput v7, v3, v8

    #@21
    .line 136
    const v7, 0x5265c00

    #@24
    div-int v7, v6, v7

    #@26
    int-to-long v0, v7

    #@27
    .line 137
    const v7, 0x5265c00

    #@2a
    rem-int v2, v6, v7

    #@2c
    .line 138
    const/4 v7, 0x1

    #@2d
    aget v4, v3, v7

    #@2f
    .line 140
    .end local v3    # "offsets":[I
    :cond_0
    invoke-virtual {p3, v6}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    #@32
    .line 141
    invoke-virtual {p3, v4}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    #@35
    .line 143
    const-wide/32 v8, 0x5265c00

    #@38
    div-long v8, p1, v8

    #@3a
    add-long/2addr v0, v8

    #@3b
    .line 144
    const-wide/32 v8, 0x5265c00

    #@3e
    rem-long v8, p1, v8

    #@40
    long-to-int v7, v8

    #@41
    add-int/2addr v2, v7

    #@42
    .line 145
    const v7, 0x5265c00

    #@45
    if-lt v2, v7, :cond_2

    #@47
    .line 147
    const v7, 0x5265c00

    #@4a
    sub-int/2addr v2, v7

    #@4b
    .line 148
    const-wide/16 v8, 0x1

    #@4d
    add-long/2addr v0, v8

    #@4e
    .line 159
    :cond_1
    const-wide/32 v8, 0xaf93b

    #@51
    add-long/2addr v0, v8

    #@52
    .line 162
    invoke-virtual {p0, p3, v0, v1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@55
    .line 165
    invoke-virtual {p0, p3, v2}, Lsun/util/calendar/AbstractCalendar;->setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;

    #@58
    .line 166
    invoke-virtual {p0, p3}, Lsun/util/calendar/AbstractCalendar;->isLeapYear(Lsun/util/calendar/CalendarDate;)Z

    #@5b
    move-result v7

    #@5c
    invoke-virtual {p3, v7}, Lsun/util/calendar/CalendarDate;->setLeapYear(Z)V

    #@5f
    .line 167
    const/4 v7, 0x1

    #@60
    invoke-virtual {p3, v7}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    #@63
    .line 168
    return-object p3

    #@64
    .line 152
    :cond_2
    :goto_0
    if-gez v2, :cond_1

    #@66
    .line 153
    const v7, 0x5265c00

    #@69
    add-int/2addr v2, v7

    #@6a
    .line 154
    const-wide/16 v8, 0x1

    #@6c
    sub-long/2addr v0, v8

    #@6d
    goto :goto_0
.end method

.method protected abstract getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
.end method

.method public getEra(Ljava/lang/String;)Lsun/util/calendar/Era;
    .locals 3
    .param p1, "eraName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 66
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 67
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@8
    array-length v1, v1

    #@9
    if-ge v0, v1, :cond_1

    #@b
    .line 68
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@d
    aget-object v1, v1, v0

    #@f
    invoke-virtual {v1, p1}, Lsun/util/calendar/Era;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 69
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@17
    aget-object v1, v1, v0

    #@19
    return-object v1

    #@1a
    .line 67
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 73
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method public getEras()[Lsun/util/calendar/Era;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 77
    const/4 v0, 0x0

    #@2
    .line 78
    .local v0, "e":[Lsun/util/calendar/Era;
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 79
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@8
    array-length v1, v1

    #@9
    new-array v0, v1, [Lsun/util/calendar/Era;

    #@b
    .line 80
    .local v0, "e":[Lsun/util/calendar/Era;
    iget-object v1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@d
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@f
    array-length v2, v2

    #@10
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@13
    .line 82
    .end local v0    # "e":[Lsun/util/calendar/Era;
    :cond_0
    return-object v0
.end method

.method protected abstract getFixedDate(Lsun/util/calendar/CalendarDate;)J
.end method

.method public getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 10
    .param p1, "nth"    # I
    .param p2, "dayOfWeek"    # I
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 261
    invoke-virtual {p3}, Lsun/util/calendar/CalendarDate;->clone()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Lsun/util/calendar/CalendarDate;

    #@6
    .line 262
    .local v2, "ndate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, v2}, Lsun/util/calendar/AbstractCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    #@9
    .line 263
    invoke-virtual {p0, v2}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    #@c
    move-result-wide v0

    #@d
    .line 265
    .local v0, "fd":J
    if-lez p1, :cond_0

    #@f
    .line 266
    mul-int/lit8 v3, p1, 0x7

    #@11
    int-to-long v6, v3

    #@12
    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateBefore(JI)J

    #@15
    move-result-wide v8

    #@16
    add-long v4, v6, v8

    #@18
    .line 270
    .local v4, "nfd":J
    :goto_0
    invoke-virtual {p0, v2, v4, v5}, Lsun/util/calendar/AbstractCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@1b
    .line 271
    return-object v2

    #@1c
    .line 268
    .end local v4    # "nfd":J
    :cond_0
    mul-int/lit8 v3, p1, 0x7

    #@1e
    int-to-long v6, v3

    #@1f
    invoke-static {v0, v1, p2}, Lsun/util/calendar/AbstractCalendar;->getDayOfWeekDateAfter(JI)J

    #@22
    move-result-wide v8

    #@23
    add-long v4, v6, v8

    #@25
    .restart local v4    # "nfd":J
    goto :goto_0
.end method

.method public getTime(Lsun/util/calendar/CalendarDate;)J
    .locals 12
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    #@3
    move-result-wide v0

    #@4
    .line 173
    .local v0, "gd":J
    const-wide/32 v8, 0xaf93b

    #@7
    sub-long v8, v0, v8

    #@9
    const-wide/32 v10, 0x5265c00

    #@c
    mul-long/2addr v8, v10

    #@d
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    #@10
    move-result-wide v10

    #@11
    add-long v2, v8, v10

    #@13
    .line 174
    .local v2, "ms":J
    const/4 v6, 0x0

    #@14
    .line 175
    .local v6, "zoneOffset":I
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    #@17
    move-result-object v5

    #@18
    .line 176
    .local v5, "zi":Ljava/util/TimeZone;
    if-eqz v5, :cond_1

    #@1a
    .line 177
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@1d
    move-result v7

    #@1e
    if-eqz v7, :cond_0

    #@20
    .line 178
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    #@23
    move-result v7

    #@24
    int-to-long v8, v7

    #@25
    sub-long v8, v2, v8

    #@27
    return-wide v8

    #@28
    .line 181
    :cond_0
    const/4 v7, 0x2

    #@29
    new-array v4, v7, [I

    #@2b
    .line 182
    .local v4, "offsets":[I
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isStandardTime()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_2

    #@31
    .line 188
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    #@34
    move-result v7

    #@35
    int-to-long v8, v7

    #@36
    sub-long v8, v2, v8

    #@38
    invoke-virtual {v5, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    #@3b
    move-result v6

    #@3c
    .line 198
    .end local v4    # "offsets":[I
    :cond_1
    :goto_0
    int-to-long v8, v6

    #@3d
    sub-long/2addr v2, v8

    #@3e
    .line 199
    invoke-virtual {p0, v2, v3, p1}, Lsun/util/calendar/AbstractCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@41
    .line 200
    return-wide v2

    #@42
    .line 195
    .restart local v4    # "offsets":[I
    :cond_2
    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    #@45
    move-result v7

    #@46
    int-to-long v8, v7

    #@47
    sub-long v8, v2, v8

    #@49
    invoke-virtual {v5, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    #@4c
    move-result v6

    #@4d
    goto :goto_0
.end method

.method protected getTimeOfDay(Lsun/util/calendar/CalendarDate;)J
    .locals 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 204
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    #@3
    move-result-wide v0

    #@4
    .line 205
    .local v0, "fraction":J
    const-wide/high16 v2, -0x8000000000000000L

    #@6
    cmp-long v2, v0, v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 206
    return-wide v0

    #@b
    .line 208
    :cond_0
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J

    #@e
    move-result-wide v0

    #@f
    .line 209
    invoke-virtual {p1, v0, v1}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    #@12
    .line 210
    return-wide v0
.end method

.method public getTimeOfDayValue(Lsun/util/calendar/CalendarDate;)J
    .locals 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    const-wide/16 v4, 0x3c

    #@2
    .line 214
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    #@5
    move-result v2

    #@6
    int-to-long v0, v2

    #@7
    .line 215
    .local v0, "fraction":J
    mul-long/2addr v0, v4

    #@8
    .line 216
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    add-long/2addr v0, v2

    #@e
    .line 217
    mul-long/2addr v0, v4

    #@f
    .line 218
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    #@12
    move-result v2

    #@13
    int-to-long v2, v2

    #@14
    add-long/2addr v0, v2

    #@15
    .line 219
    const-wide/16 v2, 0x3e8

    #@17
    mul-long/2addr v0, v2

    #@18
    .line 220
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    #@1b
    move-result v2

    #@1c
    int-to-long v2, v2

    #@1d
    add-long/2addr v0, v2

    #@1e
    .line 221
    return-wide v0
.end method

.method public getWeekLength()I
    .locals 1

    #@0
    .prologue
    .line 255
    const/4 v0, 0x7

    #@1
    return v0
.end method

.method protected abstract isLeapYear(Lsun/util/calendar/CalendarDate;)Z
.end method

.method normalizeTime(Lsun/util/calendar/CalendarDate;)I
    .locals 14
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    const-wide/16 v12, 0x3e8

    #@2
    const-wide/16 v10, 0x0

    #@4
    const-wide/16 v8, 0x3c

    #@6
    const-wide/32 v6, 0x5265c00

    #@9
    .line 363
    invoke-virtual {p0, p1}, Lsun/util/calendar/AbstractCalendar;->getTimeOfDay(Lsun/util/calendar/CalendarDate;)J

    #@c
    move-result-wide v2

    #@d
    .line 364
    .local v2, "fraction":J
    const-wide/16 v0, 0x0

    #@f
    .line 366
    .local v0, "days":J
    cmp-long v4, v2, v6

    #@11
    if-ltz v4, :cond_2

    #@13
    .line 367
    div-long v0, v2, v6

    #@15
    .line 368
    rem-long/2addr v2, v6

    #@16
    .line 375
    :cond_0
    :goto_0
    cmp-long v4, v0, v10

    #@18
    if-eqz v4, :cond_1

    #@1a
    .line 376
    invoke-virtual {p1, v2, v3}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    #@1d
    .line 378
    :cond_1
    rem-long v4, v2, v12

    #@1f
    long-to-int v4, v4

    #@20
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    #@23
    .line 379
    div-long/2addr v2, v12

    #@24
    .line 380
    rem-long v4, v2, v8

    #@26
    long-to-int v4, v4

    #@27
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    #@2a
    .line 381
    div-long/2addr v2, v8

    #@2b
    .line 382
    rem-long v4, v2, v8

    #@2d
    long-to-int v4, v4

    #@2e
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    #@31
    .line 383
    div-long v4, v2, v8

    #@33
    long-to-int v4, v4

    #@34
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    #@37
    .line 384
    long-to-int v4, v0

    #@38
    return v4

    #@39
    .line 369
    :cond_2
    cmp-long v4, v2, v10

    #@3b
    if-gez v4, :cond_0

    #@3d
    .line 370
    invoke-static {v2, v3, v6, v7}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@40
    move-result-wide v0

    #@41
    .line 371
    cmp-long v4, v0, v10

    #@43
    if-eqz v4, :cond_0

    #@45
    .line 372
    mul-long v4, v6, v0

    #@47
    sub-long/2addr v2, v4

    #@48
    goto :goto_0
.end method

.method public setEra(Lsun/util/calendar/CalendarDate;Ljava/lang/String;)V
    .locals 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "eraName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 86
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 87
    return-void

    #@5
    .line 89
    :cond_0
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@8
    array-length v2, v2

    #@9
    if-ge v1, v2, :cond_2

    #@b
    .line 90
    iget-object v2, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@d
    aget-object v0, v2, v1

    #@f
    .line 91
    .local v0, "e":Lsun/util/calendar/Era;
    if-eqz v0, :cond_1

    #@11
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_1

    #@1b
    .line 92
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    #@1e
    .line 93
    return-void

    #@1f
    .line 89
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 96
    .end local v0    # "e":Lsun/util/calendar/Era;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "unknown era name: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2
.end method

.method protected setEras([Lsun/util/calendar/Era;)V
    .locals 0
    .param p1, "eras"    # [Lsun/util/calendar/Era;

    #@0
    .prologue
    .line 100
    iput-object p1, p0, Lsun/util/calendar/AbstractCalendar;->eras:[Lsun/util/calendar/Era;

    #@2
    .line 99
    return-void
.end method

.method public setTimeOfDay(Lsun/util/calendar/CalendarDate;I)Lsun/util/calendar/CalendarDate;
    .locals 8
    .param p1, "cdate"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fraction"    # I

    #@0
    .prologue
    const v6, 0x36ee80

    #@3
    const v5, 0xea60

    #@6
    .line 225
    if-gez p2, :cond_0

    #@8
    .line 226
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@a
    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@d
    throw v5

    #@e
    .line 228
    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@11
    move-result v2

    #@12
    .line 229
    .local v2, "normalizedState":Z
    move v4, p2

    #@13
    .line 230
    .local v4, "time":I
    div-int v0, p2, v6

    #@15
    .line 231
    .local v0, "hours":I
    rem-int v4, p2, v6

    #@17
    .line 232
    div-int v1, v4, v5

    #@19
    .line 233
    .local v1, "minutes":I
    rem-int/2addr v4, v5

    #@1a
    .line 234
    div-int/lit16 v3, v4, 0x3e8

    #@1c
    .line 235
    .local v3, "seconds":I
    rem-int/lit16 v4, v4, 0x3e8

    #@1e
    .line 236
    invoke-virtual {p1, v0}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    #@21
    .line 237
    invoke-virtual {p1, v1}, Lsun/util/calendar/CalendarDate;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    #@24
    .line 238
    invoke-virtual {p1, v3}, Lsun/util/calendar/CalendarDate;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    #@27
    .line 239
    invoke-virtual {p1, v4}, Lsun/util/calendar/CalendarDate;->setMillis(I)Lsun/util/calendar/CalendarDate;

    #@2a
    .line 240
    int-to-long v6, p2

    #@2b
    invoke-virtual {p1, v6, v7}, Lsun/util/calendar/CalendarDate;->setTimeOfDay(J)V

    #@2e
    .line 241
    const/16 v5, 0x18

    #@30
    if-ge v0, v5, :cond_1

    #@32
    if-eqz v2, :cond_1

    #@34
    .line 244
    invoke-virtual {p1, v2}, Lsun/util/calendar/CalendarDate;->setNormalized(Z)V

    #@37
    .line 246
    :cond_1
    return-object p1
.end method

.method public validateTime(Lsun/util/calendar/CalendarDate;)Z
    .locals 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    const/16 v3, 0x3c

    #@2
    const/4 v2, 0x0

    #@3
    .line 341
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getHours()I

    #@6
    move-result v0

    #@7
    .line 342
    .local v0, "t":I
    if-ltz v0, :cond_0

    #@9
    const/16 v1, 0x18

    #@b
    if-lt v0, v1, :cond_1

    #@d
    .line 343
    :cond_0
    return v2

    #@e
    .line 345
    :cond_1
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    #@11
    move-result v0

    #@12
    .line 346
    if-ltz v0, :cond_2

    #@14
    if-lt v0, v3, :cond_3

    #@16
    .line 347
    :cond_2
    return v2

    #@17
    .line 349
    :cond_3
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    #@1a
    move-result v0

    #@1b
    .line 351
    if-ltz v0, :cond_4

    #@1d
    if-lt v0, v3, :cond_5

    #@1f
    .line 352
    :cond_4
    return v2

    #@20
    .line 354
    :cond_5
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMillis()I

    #@23
    move-result v0

    #@24
    .line 355
    if-ltz v0, :cond_6

    #@26
    const/16 v1, 0x3e8

    #@28
    if-lt v0, v1, :cond_7

    #@2a
    .line 356
    :cond_6
    return v2

    #@2b
    .line 358
    :cond_7
    const/4 v1, 0x1

    #@2c
    return v1
.end method
