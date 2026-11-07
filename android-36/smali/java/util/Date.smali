.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static greylist-max-o defaultCenturyStart:I = 0x0

.field private static final greylist-max-o gcal:Lsun/util/calendar/BaseCalendar;

.field private static greylist-max-o jcal:Lsun/util/calendar/BaseCalendar; = null

.field private static final whitelist serialVersionUID:J = 0x686a81014b597419L

.field private static final greylist-max-o ttb:[I

.field private static final greylist-max-o wtb:[Ljava/lang/String;


# instance fields
.field private transient greylist-max-o cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient greylist-max-o fastTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 134
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    .line 641
    const/16 v0, 0x20

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "am"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "pm"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "monday"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "tuesday"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "wednesday"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "thursday"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "friday"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "saturday"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "sunday"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "january"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "february"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "march"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "april"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "may"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "june"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "july"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "august"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "september"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "october"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "november"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "december"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "gmt"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ut"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "utc"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "est"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "edt"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "cst"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "cdt"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "mst"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "mdt"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "pst"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "pdt"

    aput-object v3, v1, v2

    sput-object v1, Ljava/util/Date;->wtb:[Ljava/lang/String;

    .line 650
    new-array v0, v0, [I

    fill-array-data v0, :array_cc

    sput-object v0, Ljava/util/Date;->ttb:[I

    return-void

    :array_cc
    .array-data 4
        0xe
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x2710
        0x2710
        0x2710
        0x283c
        0x2800
        0x2878
        0x283c
        0x28b4
        0x2878
        0x28f0
        0x28b4
    .end array-data
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 166
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 11
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 197
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "date":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "date":I
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 198
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIII)V
    .registers 13
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "date":I
    .end local p4    # "hrs":I
    .end local p5    # "min":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "date":I
    .local v4, "hrs":I
    .local v5, "min":I
    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 220
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 11
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hrs"    # I
    .param p5, "min"    # I
    .param p6, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    add-int/lit16 v0, p1, 0x76c

    .line 244
    .local v0, "y":I
    const/16 v1, 0xc

    if-lt p2, v1, :cond_f

    .line 245
    div-int/lit8 v1, p2, 0xc

    add-int/2addr v0, v1

    .line 246
    rem-int/lit8 p2, p2, 0xc

    goto :goto_1a

    .line 247
    :cond_f
    if-gez p2, :cond_1a

    .line 248
    invoke-static {p2, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 249
    invoke-static {p2, v1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p2

    .line 251
    :cond_1a
    :goto_1a
    invoke-static {v0}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 252
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 253
    iget-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    add-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v0, v3, p3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p4, p5, p6, v3}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 254
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    .line 255
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 256
    return-void
.end method

.method public constructor whitelist test-api <init>(J)V
    .registers 3
    .param p1, "date"    # J

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 179
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 275
    return-void
.end method

.method public static whitelist test-api UTC(IIIIII)J
    .registers 13
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I
    .param p3, "hrs"    # I
    .param p4, "min"    # I
    .param p5, "sec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    add-int/lit16 v0, p0, 0x76c

    .line 320
    .local v0, "y":I
    const/16 v1, 0xc

    if-lt p1, v1, :cond_c

    .line 321
    div-int/lit8 v1, p1, 0xc

    add-int/2addr v0, v1

    .line 322
    rem-int/lit8 p1, p1, 0xc

    goto :goto_17

    .line 323
    :cond_c
    if-gez p1, :cond_17

    .line 324
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 325
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    .line 327
    :cond_17
    :goto_17
    add-int/lit8 v1, p1, 0x1

    .line 328
    .local v1, "m":I
    invoke-static {v0}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 329
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 330
    .local v3, "udate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v0, v1, p2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p3, p4, p5, v5}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 334
    new-instance v4, Ljava/util/Date;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 335
    .local v4, "d":Ljava/util/Date;
    invoke-direct {v4, v3}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    .line 336
    iget-wide v5, v4, Ljava/util/Date;->fastTime:J

    return-wide v5
.end method

.method private static final greylist-max-o convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "name"    # Ljava/lang/String;

    .line 1082
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1083
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1084
    return-object p0
.end method

.method public static whitelist test-api from(Ljava/time/Instant;)Ljava/util/Date;
    .registers 4
    .param p0, "instant"    # Ljava/time/Instant;

    .line 1381
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
    :try_end_9
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 1382
    :catch_a
    move-exception v0

    .line 1383
    .local v0, "ex":Ljava/lang/ArithmeticException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final greylist-max-o getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 5

    .line 1205
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_18

    .line 1206
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v0, v1}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1207
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v1, p0, Ljava/util/Date;->fastTime:J

    .line 1208
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v3

    .line 1207
    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1210
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_18
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v0
.end method

.method private static final greylist-max-o getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;
    .registers 2
    .param p0, "year"    # I

    .line 1298
    const/16 v0, 0x62e

    if-lt p0, v0, :cond_7

    .line 1299
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1301
    :cond_7
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private static final greylist-max-o getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;
    .registers 6
    .param p0, "utc"    # J

    .line 1308
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_1f

    .line 1310
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, -0xb1d069b5400L

    sub-long/2addr v2, v0

    cmp-long v0, p0, v2

    if-ltz v0, :cond_1a

    goto :goto_1f

    .line 1313
    :cond_1a
    invoke-static {}, Ljava/util/Date;->getJulianCalendar()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0

    .line 1311
    :cond_1f
    :goto_1f
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0
.end method

.method private static final greylist-max-o getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;
    .registers 2
    .param p0, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;

    .line 1317
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    if-nez v0, :cond_7

    .line 1318
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1320
    :cond_7
    invoke-virtual {p0}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1321
    sget-object v0, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    return-object v0

    .line 1323
    :cond_10
    sget-object v0, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    return-object v0
.end method

.method private static final declared-synchronized greylist-max-o getJulianCalendar()Lsun/util/calendar/BaseCalendar;
    .registers 2

    const-class v0, Ljava/util/Date;

    monitor-enter v0

    .line 1327
    :try_start_3
    sget-object v1, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    if-nez v1, :cond_11

    .line 1328
    const-string v1, "julian"

    invoke-static {v1}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar;

    sput-object v1, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;

    .line 1330
    :cond_11
    sget-object v1, Ljava/util/Date;->jcal:Lsun/util/calendar/BaseCalendar;
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_15

    monitor-exit v0

    return-object v1

    .line 1326
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method static final greylist-max-o getMillisOf(Ljava/util/Date;)J
    .registers 4
    .param p0, "date"    # Ljava/util/Date;

    .line 979
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-eq v0, v1, :cond_d

    .line 980
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    .line 982
    :cond_d
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_29

    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_29

    .line 985
    :cond_1a
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 986
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v1, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v1

    return-wide v1

    .line 983
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_29
    :goto_29
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    return-wide v0
.end method

.method private final greylist-max-o getTimeImpl()J
    .registers 3

    .line 910
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_f

    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_f

    .line 911
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    .line 913
    :cond_f
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    return-wide v0
.end method

.method private final greylist-max-o normalize()Lsun/util/calendar/BaseCalendar$Date;
    .registers 6

    .line 1214
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_1b

    .line 1215
    iget-wide v0, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v0, v1}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 1216
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v1, p0, Ljava/util/Date;->fastTime:J

    .line 1217
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v3

    .line 1216
    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1218
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v1

    .line 1223
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_1b
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1224
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {p0, v0}, Ljava/util/Date;->normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1229
    :cond_2b
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    .line 1230
    .local v0, "tz":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    if-eq v0, v1, :cond_49

    .line 1231
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1232
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v1

    .line 1233
    .local v1, "cal":Lsun/util/calendar/CalendarSystem;
    iget-wide v2, p0, Ljava/util/Date;->fastTime:J

    iget-object v4, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v2, v3, v4}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 1235
    .end local v1    # "cal":Lsun/util/calendar/CalendarSystem;
    :cond_49
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    return-object v1
.end method

.method private final greylist-max-o normalize(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar$Date;
    .registers 14
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;

    .line 1240
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 1241
    .local v1, "y":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v7

    .line 1242
    .local v7, "m":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v3

    .line 1243
    .local v3, "d":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v4

    .line 1244
    .local v4, "hh":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v5

    .line 1245
    .local v5, "mm":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v6

    .line 1246
    .local v6, "ss":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMillis()I

    move-result v8

    .line 1247
    .local v8, "ms":I
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1257
    .local v0, "tz":Ljava/util/TimeZone;
    const/16 v2, 0x62e

    if-eq v1, v2, :cond_6a

    const v2, 0x10b07600

    if-gt v1, v2, :cond_6a

    const v2, -0x10b07600

    if-ge v1, v2, :cond_2f

    goto :goto_6a

    .line 1271
    :cond_2f
    invoke-static {v1}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 1272
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-static {p1}, Ljava/util/Date;->getCalendarSystem(Lsun/util/calendar/BaseCalendar$Date;)Lsun/util/calendar/BaseCalendar;

    move-result-object v9

    if-eq v2, v9, :cond_47

    .line 1273
    invoke-virtual {v2, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    move-object p1, v9

    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1274
    invoke-virtual {p1, v1, v7, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v9

    invoke-virtual {v9, v4, v5, v6, v8}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 1277
    :cond_47
    invoke-virtual {v2, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    iput-wide v9, p0, Ljava/util/Date;->fastTime:J

    .line 1281
    iget-wide v9, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v9, v10}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v9

    .line 1282
    .local v9, "ncal":Lsun/util/calendar/BaseCalendar;
    if-eq v9, v2, :cond_69

    .line 1283
    invoke-virtual {v9, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v10

    move-object p1, v10

    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1284
    invoke-virtual {p1, v1, v7, v3}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v10

    invoke-virtual {v10, v4, v5, v6, v8}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 1285
    invoke-virtual {v9, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    iput-wide v10, p0, Ljava/util/Date;->fastTime:J

    .line 1287
    :cond_69
    return-object p1

    .line 1258
    .end local v2    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v9    # "ncal":Lsun/util/calendar/BaseCalendar;
    :cond_6a
    :goto_6a
    if-nez v0, :cond_74

    .line 1259
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    move-object v9, v0

    goto :goto_75

    .line 1258
    :cond_74
    move-object v9, v0

    .line 1261
    .end local v0    # "tz":Ljava/util/TimeZone;
    .local v9, "tz":Ljava/util/TimeZone;
    :goto_75
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v9}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1262
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 1263
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1264
    add-int/lit8 v2, v7, -0x1

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 1265
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    iput-wide v10, p0, Ljava/util/Date;->fastTime:J

    .line 1266
    iget-wide v10, p0, Ljava/util/Date;->fastTime:J

    invoke-static {v10, v11}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 1267
    .restart local v2    # "cal":Lsun/util/calendar/BaseCalendar;
    iget-wide v10, p0, Ljava/util/Date;->fastTime:J

    invoke-virtual {v2, v10, v11, v9}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v10

    move-object p1, v10

    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    .line 1268
    return-object p1
.end method

.method public static whitelist test-api parse(Ljava/lang/String;)J
    .registers 24
    .param p0, "s"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 456
    move-object/from16 v3, p0

    const/high16 v0, -0x80000000

    .line 457
    .local v0, "year":I
    const/4 v1, -0x1

    .line 458
    .local v1, "mon":I
    const/4 v2, -0x1

    .line 459
    .local v2, "mday":I
    const/4 v4, -0x1

    .line 460
    .local v4, "hour":I
    const/4 v5, -0x1

    .line 461
    .local v5, "min":I
    const/4 v6, -0x1

    .line 462
    .local v6, "sec":I
    const/4 v7, -0x1

    .line 463
    .local v7, "millis":I
    const/4 v8, -0x1

    .line 464
    .local v8, "c":I
    const/4 v9, 0x0

    .line 465
    .local v9, "i":I
    const/4 v10, -0x1

    .line 466
    .local v10, "n":I
    const/4 v11, -0x1

    .line 467
    .local v11, "wst":I
    const/4 v12, -0x1

    .line 468
    .local v12, "tzoffset":I
    const/4 v13, 0x0

    .line 471
    .local v13, "prevc":I
    if-eqz v3, :cond_2ff

    .line 473
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    move v15, v8

    move v8, v1

    move v1, v15

    move v15, v9

    move v9, v2

    move v2, v15

    move v15, v10

    move v10, v4

    move v4, v12

    move v12, v5

    move v5, v13

    move v13, v6

    move v6, v0

    .line 474
    .end local v0    # "year":I
    .local v1, "c":I
    .local v2, "i":I
    .local v4, "tzoffset":I
    .local v5, "prevc":I
    .local v6, "year":I
    .local v8, "mon":I
    .local v9, "mday":I
    .local v10, "hour":I
    .local v12, "min":I
    .local v13, "sec":I
    .local v14, "limit":I
    .local v15, "n":I
    :cond_23
    :goto_23
    if-ge v2, v14, :cond_270

    .line 475
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 476
    add-int/lit8 v2, v2, 0x1

    .line 477
    const/16 v0, 0x20

    if-le v1, v0, :cond_25e

    const/16 v0, 0x2c

    if-ne v1, v0, :cond_3c

    .line 478
    move/from16 v19, v5

    move/from16 v21, v7

    move/from16 v16, v8

    move v7, v4

    goto/16 :goto_265

    .line 479
    :cond_3c
    const/16 v0, 0x28

    if-ne v1, v0, :cond_5e

    .line 480
    const/16 v16, 0x1

    .line 481
    .local v16, "depth":I
    :goto_42
    if-ge v2, v14, :cond_23

    .line 482
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 483
    add-int/lit8 v2, v2, 0x1

    .line 484
    if-ne v1, v0, :cond_4f

    add-int/lit8 v16, v16, 0x1

    goto :goto_42

    .line 485
    :cond_4f
    const/16 v0, 0x29

    if-ne v1, v0, :cond_5b

    .line 486
    add-int/lit8 v16, v16, -0x1

    if-gtz v16, :cond_58

    .line 487
    goto :goto_23

    .line 486
    :cond_58
    const/16 v0, 0x28

    goto :goto_42

    .line 485
    :cond_5b
    const/16 v0, 0x28

    goto :goto_42

    .line 491
    .end local v16    # "depth":I
    :cond_5e
    const/16 v0, 0x30

    if-gt v0, v1, :cond_16b

    const/16 v0, 0x39

    if-gt v1, v0, :cond_16b

    .line 492
    add-int/lit8 v15, v1, -0x30

    .line 493
    :goto_68
    if-ge v2, v14, :cond_85

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    move/from16 v21, v7

    const/16 v7, 0x30

    .end local v7    # "millis":I
    .local v21, "millis":I
    if-gt v7, v0, :cond_87

    const/16 v0, 0x39

    if-gt v1, v0, :cond_87

    .line 494
    mul-int/lit8 v0, v15, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v15, v0, -0x30

    .line 495
    add-int/lit8 v2, v2, 0x1

    move/from16 v7, v21

    const/16 v0, 0x39

    goto :goto_68

    .line 493
    .end local v21    # "millis":I
    .restart local v7    # "millis":I
    :cond_85
    move/from16 v21, v7

    .line 497
    .end local v7    # "millis":I
    .restart local v21    # "millis":I
    :cond_87
    const/16 v0, 0x2b

    if-eq v5, v0, :cond_105

    const/16 v0, 0x2d

    if-ne v5, v0, :cond_95

    const/high16 v0, -0x80000000

    if-eq v6, v0, :cond_97

    goto/16 :goto_105

    :cond_95
    const/high16 v0, -0x80000000

    .line 529
    :cond_97
    const/16 v7, 0x46

    if-lt v15, v7, :cond_b1

    .line 530
    if-ne v6, v0, :cond_af

    .line 532
    const/16 v0, 0x20

    if-le v1, v0, :cond_ab

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_ab

    const/16 v0, 0x2f

    if-eq v1, v0, :cond_ab

    if-lt v2, v14, :cond_10c

    .line 534
    :cond_ab
    move v0, v15

    move v6, v0

    .end local v6    # "year":I
    .restart local v0    # "year":I
    goto/16 :goto_166

    .line 531
    .end local v0    # "year":I
    .restart local v6    # "year":I
    :cond_af
    goto/16 :goto_10c

    .line 537
    :cond_b1
    const/16 v0, 0x3a

    if-ne v1, v0, :cond_c1

    .line 538
    if-gez v10, :cond_bb

    .line 539
    int-to-byte v0, v15

    move v10, v0

    .end local v10    # "hour":I
    .local v0, "hour":I
    goto/16 :goto_166

    .line 540
    .end local v0    # "hour":I
    .restart local v10    # "hour":I
    :cond_bb
    if-gez v12, :cond_10c

    .line 541
    int-to-byte v0, v15

    move v12, v0

    .end local v12    # "min":I
    .local v0, "min":I
    goto/16 :goto_166

    .line 544
    .end local v0    # "min":I
    .restart local v12    # "min":I
    :cond_c1
    const/16 v0, 0x2f

    if-ne v1, v0, :cond_d3

    .line 545
    if-gez v8, :cond_cd

    .line 546
    add-int/lit8 v0, v15, -0x1

    int-to-byte v0, v0

    move v8, v0

    .end local v8    # "mon":I
    .local v0, "mon":I
    goto/16 :goto_166

    .line 547
    .end local v0    # "mon":I
    .restart local v8    # "mon":I
    :cond_cd
    if-gez v9, :cond_10c

    .line 548
    int-to-byte v0, v15

    move v9, v0

    .end local v9    # "mday":I
    .local v0, "mday":I
    goto/16 :goto_166

    .line 551
    .end local v0    # "mday":I
    .restart local v9    # "mday":I
    :cond_d3
    if-ge v2, v14, :cond_e3

    const/16 v0, 0x2c

    if-eq v1, v0, :cond_e3

    const/16 v0, 0x20

    if-le v1, v0, :cond_e3

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_e2

    goto :goto_e3

    .line 552
    :cond_e2
    goto :goto_10c

    .line 553
    :cond_e3
    :goto_e3
    if-ltz v10, :cond_eb

    if-gez v12, :cond_eb

    .line 554
    int-to-byte v0, v15

    move v12, v0

    .end local v12    # "min":I
    .local v0, "min":I
    goto/16 :goto_166

    .line 555
    .end local v0    # "min":I
    .restart local v12    # "min":I
    :cond_eb
    if-ltz v12, :cond_f3

    if-gez v13, :cond_f3

    .line 556
    int-to-byte v0, v15

    move v13, v0

    .end local v13    # "sec":I
    .local v0, "sec":I
    goto/16 :goto_166

    .line 557
    .end local v0    # "sec":I
    .restart local v13    # "sec":I
    :cond_f3
    if-gez v9, :cond_f9

    .line 558
    int-to-byte v0, v15

    move v9, v0

    .end local v9    # "mday":I
    .local v0, "mday":I
    goto/16 :goto_166

    .line 560
    .end local v0    # "mday":I
    .restart local v9    # "mday":I
    :cond_f9
    const/high16 v0, -0x80000000

    if-ne v6, v0, :cond_10c

    if-ltz v8, :cond_10c

    if-ltz v9, :cond_10c

    .line 561
    move v0, v15

    move v6, v0

    .end local v6    # "year":I
    .local v0, "year":I
    goto/16 :goto_166

    .line 500
    .end local v0    # "year":I
    .restart local v6    # "year":I
    :cond_105
    :goto_105
    if-eqz v4, :cond_11b

    const/4 v0, -0x1

    if-ne v4, v0, :cond_10b

    goto :goto_11b

    .line 501
    :cond_10b
    nop

    .line 639
    .end local v14    # "limit":I
    :cond_10c
    :goto_10c
    move v0, v8

    move v8, v1

    move v1, v0

    move v0, v9

    move v9, v2

    move v2, v0

    move v0, v6

    move v6, v13

    move v13, v5

    move v5, v12

    move v12, v4

    move v4, v10

    move v10, v15

    goto/16 :goto_301

    .line 504
    .restart local v14    # "limit":I
    :cond_11b
    :goto_11b
    const/16 v0, 0x18

    if-ge v15, v0, :cond_157

    .line 505
    mul-int/lit8 v15, v15, 0x3c

    .line 510
    const/4 v0, 0x0

    .line 511
    .local v0, "minutesPart":I
    if-ge v2, v14, :cond_151

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move/from16 v16, v0

    const/16 v0, 0x3a

    .end local v0    # "minutesPart":I
    .local v16, "minutesPart":I
    if-ne v7, v0, :cond_153

    .line 512
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    .line 513
    .end local v16    # "minutesPart":I
    .restart local v0    # "minutesPart":I
    :goto_132
    if-ge v2, v14, :cond_14e

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v1, v7

    move/from16 v16, v0

    const/16 v0, 0x30

    .end local v0    # "minutesPart":I
    .restart local v16    # "minutesPart":I
    if-gt v0, v7, :cond_153

    const/16 v7, 0x39

    if-gt v1, v7, :cond_153

    .line 514
    mul-int/lit8 v17, v16, 0xa

    add-int/lit8 v18, v1, -0x30

    add-int v16, v17, v18

    .line 515
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v16

    goto :goto_132

    .line 513
    .end local v16    # "minutesPart":I
    .restart local v0    # "minutesPart":I
    :cond_14e
    move/from16 v16, v0

    .end local v0    # "minutesPart":I
    .restart local v16    # "minutesPart":I
    goto :goto_155

    .line 511
    .end local v16    # "minutesPart":I
    .restart local v0    # "minutesPart":I
    :cond_151
    move/from16 v16, v0

    .line 519
    .end local v0    # "minutesPart":I
    .restart local v16    # "minutesPart":I
    :cond_153
    move/from16 v0, v16

    .end local v16    # "minutesPart":I
    .restart local v0    # "minutesPart":I
    :goto_155
    add-int/2addr v15, v0

    .line 520
    .end local v0    # "minutesPart":I
    goto :goto_15f

    .line 521
    :cond_157
    rem-int/lit8 v0, v15, 0x64

    div-int/lit8 v7, v15, 0x64

    mul-int/lit8 v7, v7, 0x3c

    add-int v15, v0, v7

    .line 524
    :goto_15f
    const/16 v0, 0x2b

    if-ne v5, v0, :cond_164

    .line 525
    neg-int v15, v15

    .line 528
    :cond_164
    move v0, v15

    move v4, v0

    .line 564
    :goto_166
    const/4 v5, 0x0

    move/from16 v7, v21

    goto/16 :goto_23

    .line 491
    .end local v21    # "millis":I
    .restart local v7    # "millis":I
    :cond_16b
    move/from16 v21, v7

    .line 565
    .end local v7    # "millis":I
    .restart local v21    # "millis":I
    const/16 v0, 0x2f

    if-eq v1, v0, :cond_24f

    const/16 v0, 0x3a

    if-eq v1, v0, :cond_24f

    const/16 v0, 0x2b

    if-eq v1, v0, :cond_24f

    const/16 v0, 0x2d

    if-ne v1, v0, :cond_184

    move v7, v4

    move/from16 v19, v5

    move/from16 v16, v8

    goto/16 :goto_254

    .line 568
    :cond_184
    move v7, v4

    .end local v4    # "tzoffset":I
    .local v7, "tzoffset":I
    add-int/lit8 v4, v2, -0x1

    move v0, v2

    .line 569
    .end local v2    # "i":I
    .local v0, "i":I
    .local v4, "st":I
    :goto_188
    if-ge v0, v14, :cond_1a5

    .line 570
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 571
    const/16 v2, 0x41

    if-gt v2, v1, :cond_196

    const/16 v2, 0x5a

    if-le v1, v2, :cond_19f

    :cond_196
    const/16 v2, 0x61

    if-gt v2, v1, :cond_1a2

    const/16 v2, 0x7a

    if-le v1, v2, :cond_19f

    .line 572
    goto :goto_1a2

    .line 573
    :cond_19f
    add-int/lit8 v0, v0, 0x1

    goto :goto_188

    .line 575
    :cond_1a2
    :goto_1a2
    move/from16 v17, v1

    goto :goto_1a7

    .line 569
    :cond_1a5
    move/from16 v17, v1

    .line 575
    .end local v1    # "c":I
    .local v17, "c":I
    :goto_1a7
    add-int/lit8 v1, v4, 0x1

    if-le v0, v1, :cond_238

    .line 578
    sget-object v1, Ljava/util/Date;->wtb:[Ljava/lang/String;

    array-length v1, v1

    .local v1, "k":I
    :goto_1ae
    const/16 v16, -0x1

    add-int/lit8 v18, v1, -0x1

    .end local v1    # "k":I
    .local v18, "k":I
    if-ltz v18, :cond_212

    .line 579
    sget-object v1, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v1, v1, v18

    const/4 v2, 0x0

    move/from16 v19, v5

    .end local v5    # "prevc":I
    .local v19, "prevc":I
    sub-int v5, v0, v4

    move/from16 v20, v0

    move-object v0, v1

    .end local v0    # "i":I
    .local v20, "i":I
    const/4 v1, 0x1

    move/from16 v22, v16

    move/from16 v16, v8

    move/from16 v8, v22

    .end local v8    # "mon":I
    .local v16, "mon":I
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_207

    .line 580
    sget-object v0, Ljava/util/Date;->ttb:[I

    aget v0, v0, v18

    .line 581
    .local v0, "action":I
    if-eqz v0, :cond_218

    .line 582
    const/16 v1, 0xc

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1e5

    .line 583
    if-gt v10, v1, :cond_23e

    if-lt v10, v2, :cond_1e3

    .line 585
    if-ge v10, v1, :cond_218

    .line 586
    add-int/lit8 v10, v10, 0xc

    move/from16 v8, v16

    goto :goto_21a

    .line 584
    :cond_1e3
    goto/16 :goto_23e

    .line 587
    :cond_1e5
    const/16 v3, 0xe

    if-ne v0, v3, :cond_1f6

    .line 588
    if-gt v10, v1, :cond_23e

    if-lt v10, v2, :cond_1f4

    .line 590
    if-ne v10, v1, :cond_218

    .line 591
    const/4 v1, 0x0

    move v10, v1

    move/from16 v8, v16

    .end local v10    # "hour":I
    .local v1, "hour":I
    goto :goto_21a

    .line 589
    .end local v1    # "hour":I
    .restart local v10    # "hour":I
    :cond_1f4
    goto/16 :goto_23e

    .line 592
    :cond_1f6
    const/16 v1, 0xd

    if-gt v0, v1, :cond_201

    .line 593
    if-gez v16, :cond_23e

    .line 594
    add-int/lit8 v1, v0, -0x2

    int-to-byte v1, v1

    move v8, v1

    .end local v16    # "mon":I
    .local v1, "mon":I
    goto :goto_21a

    .line 598
    .end local v1    # "mon":I
    .restart local v16    # "mon":I
    :cond_201
    add-int/lit16 v1, v0, -0x2710

    move v7, v1

    move/from16 v8, v16

    .end local v7    # "tzoffset":I
    .local v1, "tzoffset":I
    goto :goto_21a

    .line 579
    .end local v0    # "action":I
    .end local v1    # "tzoffset":I
    .restart local v7    # "tzoffset":I
    :cond_207
    move-object/from16 v3, p0

    move/from16 v8, v16

    move/from16 v1, v18

    move/from16 v5, v19

    move/from16 v0, v20

    goto :goto_1ae

    .line 578
    .end local v16    # "mon":I
    .end local v19    # "prevc":I
    .end local v20    # "i":I
    .local v0, "i":I
    .restart local v5    # "prevc":I
    .restart local v8    # "mon":I
    :cond_212
    move/from16 v20, v0

    move/from16 v19, v5

    move/from16 v16, v8

    .line 603
    .end local v0    # "i":I
    .end local v5    # "prevc":I
    .end local v8    # "mon":I
    .restart local v16    # "mon":I
    .restart local v19    # "prevc":I
    .restart local v20    # "i":I
    :cond_218
    move/from16 v8, v16

    .end local v16    # "mon":I
    .restart local v8    # "mon":I
    :goto_21a
    if-ltz v18, :cond_228

    .line 605
    const/4 v5, 0x0

    .line 606
    .end local v4    # "st":I
    .end local v18    # "k":I
    .end local v19    # "prevc":I
    .restart local v5    # "prevc":I
    move-object/from16 v3, p0

    move v4, v7

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v7, v21

    goto/16 :goto_23

    .line 604
    .end local v5    # "prevc":I
    .restart local v4    # "st":I
    .restart local v18    # "k":I
    .restart local v19    # "prevc":I
    :cond_228
    move v0, v6

    move v1, v8

    move v2, v9

    move v4, v10

    move v5, v12

    move v6, v13

    move v10, v15

    move/from16 v8, v17

    move/from16 v13, v19

    move/from16 v9, v20

    move v12, v7

    goto/16 :goto_301

    .line 576
    .end local v18    # "k":I
    .end local v19    # "prevc":I
    .end local v20    # "i":I
    .restart local v0    # "i":I
    .restart local v5    # "prevc":I
    :cond_238
    move/from16 v20, v0

    move/from16 v19, v5

    move/from16 v16, v8

    .line 639
    .end local v0    # "i":I
    .end local v4    # "st":I
    .end local v5    # "prevc":I
    .end local v8    # "mon":I
    .end local v14    # "limit":I
    .restart local v16    # "mon":I
    .restart local v19    # "prevc":I
    .restart local v20    # "i":I
    :cond_23e
    :goto_23e
    move v0, v6

    move v2, v9

    move v4, v10

    move v5, v12

    move v6, v13

    move v10, v15

    move/from16 v1, v16

    move/from16 v8, v17

    move/from16 v13, v19

    move/from16 v9, v20

    move v12, v7

    goto/16 :goto_301

    .line 565
    .end local v7    # "tzoffset":I
    .end local v16    # "mon":I
    .end local v17    # "c":I
    .end local v19    # "prevc":I
    .end local v20    # "i":I
    .local v1, "c":I
    .restart local v2    # "i":I
    .local v4, "tzoffset":I
    .restart local v5    # "prevc":I
    .restart local v8    # "mon":I
    .restart local v14    # "limit":I
    :cond_24f
    move v7, v4

    move/from16 v19, v5

    move/from16 v16, v8

    .line 566
    .end local v4    # "tzoffset":I
    .end local v5    # "prevc":I
    .end local v8    # "mon":I
    .restart local v7    # "tzoffset":I
    .restart local v16    # "mon":I
    .restart local v19    # "prevc":I
    :goto_254
    move v5, v1

    move-object/from16 v3, p0

    move v4, v7

    move/from16 v8, v16

    move/from16 v7, v21

    .end local v19    # "prevc":I
    .restart local v5    # "prevc":I
    goto/16 :goto_23

    .line 477
    .end local v16    # "mon":I
    .end local v21    # "millis":I
    .restart local v4    # "tzoffset":I
    .local v7, "millis":I
    .restart local v8    # "mon":I
    :cond_25e
    move/from16 v19, v5

    move/from16 v21, v7

    move/from16 v16, v8

    move v7, v4

    .line 474
    .end local v4    # "tzoffset":I
    .end local v5    # "prevc":I
    .end local v8    # "mon":I
    .local v7, "tzoffset":I
    .restart local v16    # "mon":I
    .restart local v19    # "prevc":I
    .restart local v21    # "millis":I
    :goto_265
    move-object/from16 v3, p0

    move v4, v7

    move/from16 v8, v16

    move/from16 v5, v19

    move/from16 v7, v21

    goto/16 :goto_23

    .line 608
    .end local v16    # "mon":I
    .end local v19    # "prevc":I
    .end local v21    # "millis":I
    .restart local v4    # "tzoffset":I
    .restart local v5    # "prevc":I
    .local v7, "millis":I
    .restart local v8    # "mon":I
    :cond_270
    move/from16 v19, v5

    move/from16 v21, v7

    move/from16 v16, v8

    const/4 v8, -0x1

    move v7, v4

    .end local v4    # "tzoffset":I
    .end local v5    # "prevc":I
    .end local v8    # "mon":I
    .local v7, "tzoffset":I
    .restart local v16    # "mon":I
    .restart local v19    # "prevc":I
    .restart local v21    # "millis":I
    const/high16 v0, -0x80000000

    if-eq v6, v0, :cond_2ef

    if-ltz v16, :cond_2ef

    if-ltz v9, :cond_2ed

    .line 611
    const/16 v0, 0x64

    if-ge v6, v0, :cond_2a9

    .line 612
    const-class v3, Ljava/util/Date;

    monitor-enter v3

    .line 613
    :try_start_287
    sget v4, Ljava/util/Date;->defaultCenturyStart:I

    if-nez v4, :cond_299

    .line 614
    sget-object v4, Ljava/util/Date;->gcal:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar;->getCalendarDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v4

    add-int/lit8 v4, v4, -0x50

    sput v4, Ljava/util/Date;->defaultCenturyStart:I

    .line 616
    :cond_299
    monitor-exit v3
    :try_end_29a
    .catchall {:try_start_287 .. :try_end_29a} :catchall_2a6

    .line 617
    sget v3, Ljava/util/Date;->defaultCenturyStart:I

    div-int/2addr v3, v0

    mul-int/2addr v3, v0

    add-int/2addr v6, v3

    .line 618
    sget v0, Ljava/util/Date;->defaultCenturyStart:I

    if-ge v6, v0, :cond_2a9

    add-int/lit8 v6, v6, 0x64

    goto :goto_2a9

    .line 616
    :catchall_2a6
    move-exception v0

    :try_start_2a7
    monitor-exit v3
    :try_end_2a8
    .catchall {:try_start_2a7 .. :try_end_2a8} :catchall_2a6

    throw v0

    .line 620
    :cond_2a9
    :goto_2a9
    if-gez v13, :cond_2ac

    .line 621
    const/4 v13, 0x0

    .line 622
    :cond_2ac
    if-gez v12, :cond_2af

    .line 623
    const/4 v12, 0x0

    .line 624
    :cond_2af
    if-gez v10, :cond_2b2

    .line 625
    const/4 v10, 0x0

    .line 626
    :cond_2b2
    invoke-static {v6}, Ljava/util/Date;->getCalendarSystem(I)Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 627
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    const/4 v3, 0x0

    if-ne v7, v8, :cond_2d0

    .line 628
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 629
    .local v4, "ldate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v8, v16, 0x1

    invoke-virtual {v4, v6, v8, v9}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 630
    invoke-virtual {v4, v10, v12, v13, v3}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 631
    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v17

    return-wide v17

    .line 633
    .end local v4    # "ldate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_2d0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 634
    .local v4, "udate":Lsun/util/calendar/BaseCalendar$Date;
    add-int/lit8 v8, v16, 0x1

    invoke-virtual {v4, v6, v8, v9}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 635
    invoke-virtual {v4, v10, v12, v13, v3}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 636
    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v17

    const v3, 0xea60

    mul-int/2addr v3, v7

    move-object v8, v0

    move v5, v1

    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v1    # "c":I
    .local v5, "c":I
    .local v8, "cal":Lsun/util/calendar/BaseCalendar;
    int-to-long v0, v3

    add-long v17, v17, v0

    return-wide v17

    .line 609
    .end local v4    # "udate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v5    # "c":I
    .end local v8    # "cal":Lsun/util/calendar/BaseCalendar;
    .restart local v1    # "c":I
    :cond_2ed
    move v5, v1

    .end local v1    # "c":I
    .restart local v5    # "c":I
    goto :goto_2f0

    .line 608
    .end local v5    # "c":I
    .restart local v1    # "c":I
    :cond_2ef
    move v5, v1

    .line 639
    .end local v1    # "c":I
    .end local v14    # "limit":I
    .restart local v5    # "c":I
    :goto_2f0
    move v0, v9

    move v9, v2

    move v2, v0

    move v8, v5

    move v0, v6

    move v4, v10

    move v5, v12

    move v6, v13

    move v10, v15

    move/from16 v1, v16

    move/from16 v13, v19

    move v12, v7

    goto :goto_301

    .line 472
    .end local v15    # "n":I
    .end local v16    # "mon":I
    .end local v19    # "prevc":I
    .end local v21    # "millis":I
    .local v0, "year":I
    .local v1, "mon":I
    .local v2, "mday":I
    .local v4, "hour":I
    .local v5, "min":I
    .local v6, "sec":I
    .local v7, "millis":I
    .local v8, "c":I
    .local v9, "i":I
    .local v10, "n":I
    .local v12, "tzoffset":I
    .local v13, "prevc":I
    :cond_2ff
    move/from16 v21, v7

    .line 639
    .end local v7    # "millis":I
    .restart local v21    # "millis":I
    :goto_301
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1355
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1356
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->fastTime:J

    .line 1357
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1344
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1345
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 1346
    return-void
.end method


# virtual methods
.method public whitelist test-api after(Ljava/util/Date;)Z
    .registers 6
    .param p1, "when"    # Ljava/util/Date;

    .line 952
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api before(Ljava/util/Date;)Z
    .registers 6
    .param p1, "when"    # Ljava/util/Date;

    .line 938
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 281
    const/4 v0, 0x0

    .line 283
    .local v0, "d":Ljava/util/Date;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    move-object v0, v1

    .line 284
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_18

    .line 285
    iget-object v1, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;
    :try_end_16
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_16} :catch_17

    goto :goto_18

    .line 287
    :catch_17
    move-exception v1

    :cond_18
    :goto_18
    nop

    .line 288
    return-object v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 130
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/util/Date;)I
    .registers 6
    .param p1, "anotherDate"    # Ljava/util/Date;

    .line 1002
    invoke-static {p0}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Ljava/util/Date;->getMillisOf(Ljava/util/Date;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 971
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    move-object v2, p1

    check-cast v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method

.method public whitelist test-api getDate()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 757
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getDay()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 796
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api getHours()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 813
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMinutes()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 845
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMonth()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 709
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public whitelist test-api getSeconds()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 878
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getTime()J
    .registers 3

    .line 906
    invoke-direct {p0}, Ljava/util/Date;->getTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api getTimezoneOffset()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1193
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_19

    .line 1195
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v1, p0, Ljava/util/Date;->fastTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 1196
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 1197
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    .local v1, "zoneOffset":I
    goto :goto_22

    .line 1198
    .end local v1    # "zoneOffset":I
    :cond_19
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    .line 1199
    iget-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZoneOffset()I

    move-result v1

    .line 1201
    .restart local v1    # "zoneOffset":I
    :goto_22
    neg-int v0, v1

    const v2, 0xea60

    div-int/2addr v0, v2

    return v0
.end method

.method public whitelist test-api getYear()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 673
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1017
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1018
    .local v0, "ht":J
    long-to-int v2, v0

    const/16 v3, 0x20

    shr-long v3, v0, v3

    long-to-int v3, v3

    xor-int/2addr v2, v3

    return v2
.end method

.method public whitelist test-api setDate(I)V
    .registers 3
    .param p1, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 777
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 778
    return-void
.end method

.method public whitelist test-api setHours(I)V
    .registers 3
    .param p1, "hours"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 830
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 831
    return-void
.end method

.method public whitelist test-api setMinutes(I)V
    .registers 3
    .param p1, "minutes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 862
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setMinutes(I)Lsun/util/calendar/CalendarDate;

    .line 863
    return-void
.end method

.method public whitelist test-api setMonth(I)V
    .registers 5
    .param p1, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 728
    const/4 v0, 0x0

    .line 729
    .local v0, "y":I
    const/16 v1, 0xc

    if-lt p1, v1, :cond_a

    .line 730
    div-int/lit8 v0, p1, 0xc

    .line 731
    rem-int/lit8 p1, p1, 0xc

    goto :goto_14

    .line 732
    :cond_a
    if-gez p1, :cond_14

    .line 733
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v0

    .line 734
    invoke-static {p1, v1}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result p1

    .line 736
    :cond_14
    :goto_14
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v1

    .line 737
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    if-eqz v0, :cond_22

    .line 738
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 740
    :cond_22
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 741
    return-void
.end method

.method public whitelist test-api setSeconds(I)V
    .registers 3
    .param p1, "seconds"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 895
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setSeconds(I)Lsun/util/calendar/CalendarDate;

    .line 896
    return-void
.end method

.method public whitelist test-api setTime(J)V
    .registers 4
    .param p1, "time"    # J

    .line 923
    iput-wide p1, p0, Ljava/util/Date;->fastTime:J

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/Date;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 925
    return-void
.end method

.method public whitelist test-api setYear(I)V
    .registers 4
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 693
    invoke-direct {p0}, Ljava/util/Date;->getCalendarDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 694
    return-void
.end method

.method public whitelist test-api toGMTString()Ljava/lang/String;
    .registers 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1143
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1144
    .local v0, "t":J
    invoke-static {v0, v1}, Ljava/util/Date;->getCalendarSystem(J)Lsun/util/calendar/BaseCalendar;

    move-result-object v2

    .line 1145
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    nop

    .line 1146
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const/4 v5, 0x0

    move-object v6, v5

    check-cast v6, Ljava/util/TimeZone;

    invoke-virtual {v2, v3, v4, v5}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 1147
    .local v3, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1148
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v6

    const/4 v7, 0x1

    invoke-static {v4, v6, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1149
    sget-object v6, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v8

    sub-int/2addr v8, v7

    const/4 v7, 0x2

    add-int/2addr v8, v7

    add-int/lit8 v8, v8, 0x7

    aget-object v6, v6, v8

    invoke-static {v4, v6}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1150
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1151
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v5

    invoke-static {v4, v5, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1152
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v5

    invoke-static {v4, v5, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1153
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v5

    invoke-static {v4, v5, v7}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    .line 1154
    const-string v5, " GMT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist test-api toInstant()Ljava/time/Instant;
    .registers 3

    .line 1398
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toLocaleString()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1105
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    .line 1106
    .local v0, "formatter":Ljava/text/DateFormat;
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 1053
    invoke-direct {p0}, Ljava/util/Date;->normalize()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1054
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1055
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v2

    .line 1056
    .local v2, "index":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_14

    .line 1057
    const/16 v2, 0x8

    .line 1059
    :cond_14
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v1, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1060
    sget-object v4, Ljava/util/Date;->wtb:[Ljava/lang/String;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    sub-int/2addr v6, v3

    const/4 v3, 0x2

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x7

    aget-object v4, v4, v6

    invoke-static {v1, v4}, Ljava/util/Date;->convertToAbbr(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1063
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getHours()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x3a

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1064
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMinutes()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1065
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getSeconds()I

    move-result v4

    invoke-static {v1, v4, v3}, Lsun/util/calendar/CalendarUtils;->sprintf0d(Ljava/lang/StringBuilder;II)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1066
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 1067
    .local v3, "zi":Ljava/util/TimeZone;
    if-eqz v3, :cond_78

    .line 1068
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isDaylightTime()Z

    move-result v4

    const/4 v6, 0x0

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7d

    .line 1070
    :cond_78
    const-string v4, "GMT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :goto_7d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
