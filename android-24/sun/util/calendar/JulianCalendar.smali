.class public Lsun/util/calendar/JulianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "JulianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/JulianCalendar$Date;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BCE:I = 0x0

.field private static final CE:I = 0x1

.field private static final JULIAN_EPOCH:I = -0x1

.field private static final eras:[Lsun/util/calendar/Era;


# direct methods
.method static synthetic -get0()[Lsun/util/calendar/Era;
    .locals 1

    #@0
    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const-class v0, Lsun/util/calendar/JulianCalendar;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    move v0, v6

    #@b
    :goto_0
    sput-boolean v0, Lsun/util/calendar/JulianCalendar;->-assertionsDisabled:Z

    #@d
    .line 41
    const/4 v0, 0x2

    #@e
    new-array v0, v0, [Lsun/util/calendar/Era;

    #@10
    .line 42
    new-instance v1, Lsun/util/calendar/Era;

    #@12
    const-string/jumbo v2, "BeforeCommonEra"

    #@15
    const-string/jumbo v3, "B.C.E."

    #@18
    const-wide/high16 v4, -0x8000000000000000L

    #@1a
    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    #@1d
    aput-object v1, v0, v6

    #@1f
    .line 43
    new-instance v1, Lsun/util/calendar/Era;

    #@21
    const-string/jumbo v2, "CommonEra"

    #@24
    const-string/jumbo v3, "C.E."

    #@27
    const-wide v4, -0x388318df9000L

    #@2c
    move v6, v7

    #@2d
    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    #@30
    aput-object v1, v0, v7

    #@32
    .line 41
    sput-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    #@34
    .line 36
    return-void

    #@35
    :cond_0
    move v0, v7

    #@36
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    #@3
    .line 114
    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    #@5
    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar;->setEras([Lsun/util/calendar/Era;)V

    #@8
    .line 113
    return-void
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 125
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 129
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .locals 3

    #@0
    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 126
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 134
    invoke-virtual {p0, p3}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Lsun/util/calendar/JulianCalendar$Date;

    #@6
    return-object v0
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 14
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    #@0
    .prologue
    move-object v5, p1

    #@1
    .line 186
    check-cast v5, Lsun/util/calendar/JulianCalendar$Date;

    #@3
    .line 187
    .local v5, "jdate":Lsun/util/calendar/JulianCalendar$Date;
    const-wide/16 v10, -0x1

    #@5
    sub-long v10, p2, v10

    #@7
    const-wide/16 v12, 0x4

    #@9
    mul-long/2addr v10, v12

    #@a
    const-wide/16 v12, 0x5b8

    #@c
    add-long v2, v10, v12

    #@e
    .line 189
    .local v2, "fd":J
    const-wide/16 v10, 0x0

    #@10
    cmp-long v9, v2, v10

    #@12
    if-ltz v9, :cond_1

    #@14
    .line 190
    const-wide/16 v10, 0x5b5

    #@16
    div-long v10, v2, v10

    #@18
    long-to-int v8, v10

    #@19
    .line 194
    .local v8, "year":I
    :goto_0
    const/4 v9, 0x1

    #@1a
    const/4 v10, 0x1

    #@1b
    invoke-virtual {p0, v8, v9, v10, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@1e
    move-result-wide v10

    #@1f
    sub-long v10, p2, v10

    #@21
    long-to-int v7, v10

    #@22
    .line 195
    .local v7, "priorDays":I
    invoke-static {v8}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    #@25
    move-result v4

    #@26
    .line 196
    .local v4, "isLeap":Z
    const/4 v9, 0x3

    #@27
    const/4 v10, 0x1

    #@28
    invoke-virtual {p0, v8, v9, v10, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@2b
    move-result-wide v10

    #@2c
    cmp-long v9, p2, v10

    #@2e
    if-ltz v9, :cond_0

    #@30
    .line 197
    if-eqz v4, :cond_2

    #@32
    const/4 v9, 0x1

    #@33
    :goto_1
    add-int/2addr v7, v9

    #@34
    .line 199
    :cond_0
    mul-int/lit8 v9, v7, 0xc

    #@36
    add-int/lit16 v6, v9, 0x175

    #@38
    .line 200
    .local v6, "month":I
    if-lez v6, :cond_3

    #@3a
    .line 201
    div-int/lit16 v6, v6, 0x16f

    #@3c
    .line 205
    :goto_2
    const/4 v9, 0x1

    #@3d
    invoke-virtual {p0, v8, v6, v9, v5}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@40
    move-result-wide v10

    #@41
    sub-long v10, p2, v10

    #@43
    long-to-int v9, v10

    #@44
    add-int/lit8 v0, v9, 0x1

    #@46
    .line 206
    .local v0, "dayOfMonth":I
    invoke-static/range {p2 .. p3}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    #@49
    move-result v1

    #@4a
    .line 207
    .local v1, "dayOfWeek":I
    sget-boolean v9, Lsun/util/calendar/JulianCalendar;->-assertionsDisabled:Z

    #@4c
    if-nez v9, :cond_5

    #@4e
    if-lez v1, :cond_4

    #@50
    const/4 v9, 0x1

    #@51
    :goto_3
    if-nez v9, :cond_5

    #@53
    new-instance v9, Ljava/lang/AssertionError;

    #@55
    new-instance v10, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    const-string/jumbo v11, "negative day of week "

    #@5d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v10

    #@61
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v10

    #@65
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v10

    #@69
    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@6c
    throw v9

    #@6d
    .line 192
    .end local v0    # "dayOfMonth":I
    .end local v1    # "dayOfWeek":I
    .end local v4    # "isLeap":Z
    .end local v6    # "month":I
    .end local v7    # "priorDays":I
    .end local v8    # "year":I
    :cond_1
    const-wide/16 v10, 0x5b5

    #@6f
    invoke-static {v2, v3, v10, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@72
    move-result-wide v10

    #@73
    long-to-int v8, v10

    #@74
    .restart local v8    # "year":I
    goto :goto_0

    #@75
    .line 197
    .restart local v4    # "isLeap":Z
    .restart local v7    # "priorDays":I
    :cond_2
    const/4 v9, 0x2

    #@76
    goto :goto_1

    #@77
    .line 203
    .restart local v6    # "month":I
    :cond_3
    const/16 v9, 0x16f

    #@79
    invoke-static {v6, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@7c
    move-result v6

    #@7d
    goto :goto_2

    #@7e
    .line 207
    .restart local v0    # "dayOfMonth":I
    .restart local v1    # "dayOfWeek":I
    :cond_4
    const/4 v9, 0x0

    #@7f
    goto :goto_3

    #@80
    .line 208
    :cond_5
    invoke-virtual {v5, v8}, Lsun/util/calendar/JulianCalendar$Date;->setNormalizedYear(I)V

    #@83
    .line 209
    invoke-virtual {v5, v6}, Lsun/util/calendar/JulianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@86
    .line 210
    invoke-virtual {v5, v0}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@89
    .line 211
    invoke-virtual {v5, v1}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfWeek(I)V

    #@8c
    .line 212
    invoke-virtual {v5, v4}, Lsun/util/calendar/JulianCalendar$Date;->setLeapYear(Z)V

    #@8f
    .line 213
    const/4 v9, 0x1

    #@90
    invoke-virtual {v5, v9}, Lsun/util/calendar/JulianCalendar$Date;->setNormalized(Z)V

    #@93
    .line 185
    return-void
.end method

.method public getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    #@3
    move-result-wide v0

    #@4
    .line 228
    .local v0, "fixedDate":J
    invoke-static {v0, v1}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    #@7
    move-result v2

    #@8
    return v2
.end method

.method public getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .locals 10
    .param p1, "jyear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "cache"    # Lsun/util/calendar/BaseCalendar$Date;

    #@0
    .prologue
    .line 149
    const/4 v3, 0x1

    #@1
    if-ne p2, v3, :cond_0

    #@3
    const/4 v3, 0x1

    #@4
    if-ne p3, v3, :cond_0

    #@6
    const/4 v2, 0x1

    #@7
    .line 152
    .local v2, "isJan1":Z
    :goto_0
    if-eqz p4, :cond_2

    #@9
    invoke-virtual {p4, p1}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_2

    #@f
    .line 153
    if-eqz v2, :cond_1

    #@11
    .line 154
    invoke-virtual {p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    #@14
    move-result-wide v6

    #@15
    return-wide v6

    #@16
    .line 149
    .end local v2    # "isJan1":Z
    :cond_0
    const/4 v2, 0x0

    #@17
    .restart local v2    # "isJan1":Z
    goto :goto_0

    #@18
    .line 156
    :cond_1
    invoke-virtual {p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    #@1b
    move-result-wide v6

    #@1c
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getDayOfYear(III)J

    #@1f
    move-result-wide v8

    #@20
    add-long/2addr v6, v8

    #@21
    const-wide/16 v8, 0x1

    #@23
    sub-long/2addr v6, v8

    #@24
    return-wide v6

    #@25
    .line 159
    :cond_2
    int-to-long v4, p1

    #@26
    .line 160
    .local v4, "y":J
    const-wide/16 v6, 0x1

    #@28
    sub-long v6, v4, v6

    #@2a
    const-wide/16 v8, 0x16d

    #@2c
    mul-long/2addr v6, v8

    #@2d
    const-wide/16 v8, -0x2

    #@2f
    add-long/2addr v6, v8

    #@30
    int-to-long v8, p3

    #@31
    add-long v0, v6, v8

    #@33
    .line 161
    .local v0, "days":J
    const-wide/16 v6, 0x0

    #@35
    cmp-long v3, v4, v6

    #@37
    if-lez v3, :cond_5

    #@39
    .line 163
    const-wide/16 v6, 0x1

    #@3b
    sub-long v6, v4, v6

    #@3d
    const-wide/16 v8, 0x4

    #@3f
    div-long/2addr v6, v8

    #@40
    add-long/2addr v0, v6

    #@41
    .line 168
    :goto_1
    if-lez p2, :cond_6

    #@43
    .line 169
    int-to-long v6, p2

    #@44
    const-wide/16 v8, 0x16f

    #@46
    mul-long/2addr v6, v8

    #@47
    const-wide/16 v8, 0x16a

    #@49
    sub-long/2addr v6, v8

    #@4a
    const-wide/16 v8, 0xc

    #@4c
    div-long/2addr v6, v8

    #@4d
    add-long/2addr v0, v6

    #@4e
    .line 173
    :goto_2
    const/4 v3, 0x2

    #@4f
    if-le p2, v3, :cond_3

    #@51
    .line 174
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    #@54
    move-result v3

    #@55
    if-eqz v3, :cond_7

    #@57
    const/4 v3, 0x1

    #@58
    :goto_3
    int-to-long v6, v3

    #@59
    sub-long/2addr v0, v6

    #@5a
    .line 178
    :cond_3
    if-eqz p4, :cond_4

    #@5c
    if-eqz v2, :cond_4

    #@5e
    .line 179
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    #@61
    move-result v3

    #@62
    if-eqz v3, :cond_8

    #@64
    const/16 v3, 0x16e

    #@66
    :goto_4
    invoke-virtual {p4, p1, v0, v1, v3}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    #@69
    .line 182
    :cond_4
    return-wide v0

    #@6a
    .line 166
    :cond_5
    const-wide/16 v6, 0x1

    #@6c
    sub-long v6, v4, v6

    #@6e
    const-wide/16 v8, 0x4

    #@70
    invoke-static {v6, v7, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@73
    move-result-wide v6

    #@74
    add-long/2addr v0, v6

    #@75
    goto :goto_1

    #@76
    .line 171
    :cond_6
    int-to-long v6, p2

    #@77
    const-wide/16 v8, 0x16f

    #@79
    mul-long/2addr v6, v8

    #@7a
    const-wide/16 v8, 0x16a

    #@7c
    sub-long/2addr v6, v8

    #@7d
    const-wide/16 v8, 0xc

    #@7f
    invoke-static {v6, v7, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@82
    move-result-wide v6

    #@83
    add-long/2addr v0, v6

    #@84
    goto :goto_2

    #@85
    .line 174
    :cond_7
    const/4 v3, 0x2

    #@86
    goto :goto_3

    #@87
    .line 179
    :cond_8
    const/16 v3, 0x16d

    #@89
    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 118
    const-string/jumbo v0, "julian"

    #@3
    return-object v0
.end method

.method public getYearFromFixedDate(J)I
    .locals 7
    .param p1, "fixedDate"    # J

    #@0
    .prologue
    .line 220
    const-wide/16 v2, -0x1

    #@2
    sub-long v2, p1, v2

    #@4
    const-wide/16 v4, 0x4

    #@6
    mul-long/2addr v2, v4

    #@7
    const-wide/16 v4, 0x5b8

    #@9
    add-long/2addr v2, v4

    #@a
    const-wide/16 v4, 0x5b5

    #@c
    invoke-static {v2, v3, v4, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@f
    move-result-wide v2

    #@10
    long-to-int v0, v2

    #@11
    .line 221
    .local v0, "year":I
    return v0
.end method

.method isLeapYear(I)Z
    .locals 1
    .param p1, "jyear"    # I

    #@0
    .prologue
    .line 232
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .locals 1

    #@0
    .prologue
    .line 138
    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    #@2
    invoke-direct {v0}, Lsun/util/calendar/JulianCalendar$Date;-><init>()V

    #@5
    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 142
    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    #@2
    invoke-direct {v0, p1}, Lsun/util/calendar/JulianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    #@5
    return-object v0
.end method
