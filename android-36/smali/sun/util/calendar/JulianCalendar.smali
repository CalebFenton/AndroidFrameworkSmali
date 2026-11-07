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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist BCE:I = 0x0

.field private static final blacklist CE:I = 0x1

.field private static final blacklist JULIAN_EPOCH:I = -0x1

.field private static final blacklist eras:[Lsun/util/calendar/Era;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgeteras()[Lsun/util/calendar/Era;
    .registers 1

    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 9

    .line 36
    nop

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [Lsun/util/calendar/Era;

    new-instance v1, Lsun/util/calendar/Era;

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    const-string v2, "BeforeCommonEra"

    const-string v3, "B.C.E."

    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v3, Lsun/util/calendar/Era;

    const-wide v6, -0x388318df9000L

    const/4 v8, 0x1

    const-string v4, "CommonEra"

    const-string v5, "C.E."

    invoke-direct/range {v3 .. v8}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    const/4 v1, 0x1

    aput-object v3, v0, v1

    sput-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 2

    .line 113
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 114
    sget-object v0, Lsun/util/calendar/JulianCalendar;->eras:[Lsun/util/calendar/Era;

    invoke-virtual {p0, v0}, Lsun/util/calendar/JulianCalendar;->setEras([Lsun/util/calendar/Era;)V

    .line 115
    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist getCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

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

    .line 36
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;

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

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

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

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist getCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .registers 4

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(J)Lsun/util/calendar/JulianCalendar$Date;
    .registers 4
    .param p1, "millis"    # J

    .line 126
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .line 134
    invoke-virtual {p0, p3}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/JulianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/JulianCalendar$Date;
    .registers 5
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .line 130
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/JulianCalendar$Date;

    return-object v0
.end method

.method public blacklist getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .registers 14
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .line 186
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/JulianCalendar$Date;

    .line 187
    .local v0, "jdate":Lsun/util/calendar/JulianCalendar$Date;
    const-wide/16 v1, -0x1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x4

    mul-long/2addr v1, v3

    const-wide/16 v3, 0x5b8

    add-long/2addr v1, v3

    .line 189
    .local v1, "fd":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x5b5

    if-ltz v3, :cond_19

    .line 190
    div-long v3, v1, v4

    long-to-int v3, v3

    .local v3, "year":I
    goto :goto_1e

    .line 192
    .end local v3    # "year":I
    :cond_19
    invoke-static {v1, v2, v4, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 194
    .restart local v3    # "year":I
    :goto_1e
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4, v4, v0}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v5

    sub-long v5, p2, v5

    long-to-int v5, v5

    .line 195
    .local v5, "priorDays":I
    invoke-static {v3}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v6

    .line 196
    .local v6, "isLeap":Z
    const/4 v7, 0x3

    invoke-virtual {p0, v3, v7, v4, v0}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v7

    cmp-long v7, p2, v7

    if-ltz v7, :cond_39

    .line 197
    if-eqz v6, :cond_37

    move v7, v4

    goto :goto_38

    :cond_37
    const/4 v7, 0x2

    :goto_38
    add-int/2addr v5, v7

    .line 199
    :cond_39
    mul-int/lit8 v7, v5, 0xc

    add-int/lit16 v7, v7, 0x175

    .line 200
    .local v7, "month":I
    const/16 v8, 0x16f

    if-lez v7, :cond_43

    .line 201
    div-int/2addr v7, v8

    goto :goto_47

    .line 203
    :cond_43
    invoke-static {v7, v8}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v7

    .line 205
    :goto_47
    invoke-virtual {p0, v3, v7, v4, v0}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v8

    sub-long v8, p2, v8

    long-to-int v8, v8

    add-int/2addr v8, v4

    .line 206
    .local v8, "dayOfMonth":I
    invoke-static {p2, p3}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v9

    .line 207
    .local v9, "dayOfWeek":I
    nop

    .line 208
    invoke-virtual {v0, v3}, Lsun/util/calendar/JulianCalendar$Date;->setNormalizedYear(I)V

    .line 209
    invoke-virtual {v0, v7}, Lsun/util/calendar/JulianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 210
    invoke-virtual {v0, v8}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 211
    invoke-virtual {v0, v9}, Lsun/util/calendar/JulianCalendar$Date;->setDayOfWeek(I)V

    .line 212
    invoke-virtual {v0, v6}, Lsun/util/calendar/JulianCalendar$Date;->setLeapYear(Z)V

    .line 213
    invoke-virtual {v0, v4}, Lsun/util/calendar/JulianCalendar$Date;->setNormalized(Z)V

    .line 214
    return-void
.end method

.method public blacklist getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .registers 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 227
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 228
    .local v0, "fixedDate":J
    invoke-static {v0, v1}, Lsun/util/calendar/JulianCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v2

    return v2
.end method

.method public blacklist getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .registers 22
    .param p1, "jyear"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "cache"    # Lsun/util/calendar/BaseCalendar$Date;

    .line 149
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_e

    if-ne v2, v4, :cond_e

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    .line 152
    .local v4, "isJan1":Z
    :goto_f
    const-wide/16 v5, 0x1

    if-eqz v3, :cond_2b

    invoke-virtual {v3, v0}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 153
    if-eqz v4, :cond_20

    .line 154
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v5

    return-wide v5

    .line 156
    :cond_20
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/JulianCalendar;->getDayOfYear(III)J

    move-result-wide v9

    add-long/2addr v7, v9

    sub-long/2addr v7, v5

    return-wide v7

    .line 159
    :cond_2b
    int-to-long v7, v0

    .line 160
    .local v7, "y":J
    const-wide/16 v9, 0x16d

    sub-long v11, v7, v5

    mul-long/2addr v11, v9

    const-wide/16 v9, -0x2

    add-long/2addr v11, v9

    int-to-long v9, v2

    add-long/2addr v11, v9

    .line 161
    .local v11, "days":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    const-wide/16 v13, 0x4

    if-lez v9, :cond_43

    .line 163
    sub-long v9, v7, v5

    div-long/2addr v9, v13

    add-long/2addr v11, v9

    goto :goto_4a

    .line 166
    :cond_43
    sub-long v9, v7, v5

    invoke-static {v9, v10, v13, v14}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v9

    add-long/2addr v11, v9

    .line 168
    :goto_4a
    const-wide/16 v9, 0xc

    const-wide/16 v13, 0x16a

    const-wide/16 v15, 0x16f

    if-lez v1, :cond_58

    .line 169
    int-to-long v5, v1

    mul-long/2addr v5, v15

    sub-long/2addr v5, v13

    div-long/2addr v5, v9

    add-long/2addr v11, v5

    goto :goto_60

    .line 171
    :cond_58
    int-to-long v5, v1

    mul-long/2addr v5, v15

    sub-long/2addr v5, v13

    invoke-static {v5, v6, v9, v10}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v5

    add-long/2addr v11, v5

    .line 173
    :goto_60
    const/4 v5, 0x2

    if-le v1, v5, :cond_6f

    .line 174
    invoke-static {v0}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    const-wide/16 v5, 0x1

    goto :goto_6e

    :cond_6c
    const-wide/16 v5, 0x2

    :goto_6e
    sub-long/2addr v11, v5

    .line 178
    :cond_6f
    if-eqz v3, :cond_81

    if-eqz v4, :cond_81

    .line 179
    invoke-static {v0}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_7c

    const/16 v5, 0x16e

    goto :goto_7e

    :cond_7c
    const/16 v5, 0x16d

    :goto_7e
    invoke-virtual {v3, v0, v11, v12, v5}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    .line 182
    :cond_81
    return-wide v11
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 118
    const-string v0, "julian"

    return-object v0
.end method

.method public blacklist getYearFromFixedDate(J)I
    .registers 7
    .param p1, "fixedDate"    # J

    .line 220
    const-wide/16 v0, -0x1

    sub-long v0, p1, v0

    const-wide/16 v2, 0x4

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x5b8

    add-long/2addr v0, v2

    const-wide/16 v2, 0x5b5

    invoke-static {v0, v1, v2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 221
    .local v0, "year":I
    return v0
.end method

.method blacklist isLeapYear(I)Z
    .registers 3
    .param p1, "jyear"    # I

    .line 232
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist newCalendarDate()Lsun/util/calendar/CalendarDate;
    .registers 2

    .line 36
    invoke-virtual {p0}, Lsun/util/calendar/JulianCalendar;->newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;

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

    .line 36
    invoke-virtual {p0, p1}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newCalendarDate()Lsun/util/calendar/JulianCalendar$Date;
    .registers 2

    .line 138
    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/JulianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public blacklist newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 142
    new-instance v0, Lsun/util/calendar/JulianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/JulianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method
