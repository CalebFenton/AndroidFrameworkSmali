.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static final BCE:I = 0x0

.field static final CE:I = 0x1

.field static final DEFAULT_GREGORIAN_CUTOVER:J = -0xb1d069b5400L

.field private static final EPOCH_OFFSET:I = 0xaf93b

.field private static final EPOCH_YEAR:I = 0x7b2

.field static final LEAP_MONTH_LENGTH:[I

.field static final LEAST_MAX_VALUES:[I

.field static final MAX_VALUES:[I

.field static final MIN_VALUES:[I

.field static final MONTH_LENGTH:[I

.field private static final ONE_DAY:J = 0x5265c00L

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final ONE_WEEK:J = 0x240c8400L

.field private static final gcal:Lsun/util/calendar/Gregorian;

.field private static jcal:Lsun/util/calendar/JulianCalendar; = null

.field private static jeras:[Lsun/util/calendar/Era; = null

.field static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient cachedFixedDate:J

.field private transient calsys:Lsun/util/calendar/BaseCalendar;

.field private transient cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient gdate:Lsun/util/calendar/BaseCalendar$Date;

.field private gregorianCutover:J

.field private transient gregorianCutoverDate:J

.field private transient gregorianCutoverYear:I

.field private transient gregorianCutoverYearJulian:I

.field private transient originalFields:[I

.field private transient zoneOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0xc

    #@2
    const/16 v1, 0x11

    #@4
    const-class v0, Ljava/util/GregorianCalendar;

    #@6
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/4 v0, 0x0

    #@d
    :goto_0
    sput-boolean v0, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@f
    .line 399
    new-array v0, v2, [I

    #@11
    fill-array-data v0, :array_0

    #@14
    .line 398
    sput-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    #@16
    .line 401
    new-array v0, v2, [I

    #@18
    fill-array-data v0, :array_1

    #@1b
    .line 400
    sput-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    #@1d
    .line 437
    new-array v0, v1, [I

    #@1f
    fill-array-data v0, :array_2

    #@22
    sput-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    #@24
    .line 456
    new-array v0, v1, [I

    #@26
    fill-array-data v0, :array_3

    #@29
    sput-object v0, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    #@2b
    .line 475
    new-array v0, v1, [I

    #@2d
    fill-array-data v0, :array_4

    #@30
    sput-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    #@32
    .line 500
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    #@35
    move-result-object v0

    #@36
    .line 499
    sput-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@38
    .line 328
    return-void

    #@39
    :cond_0
    const/4 v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 399
    nop

    #@3c
    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    #@58
    .line 401
    :array_1
    .array-data 4
        0x1f
        0x1d
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    #@74
    .line 437
    :array_2
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2ca1c80
        0x0
    .end array-data

    #@9a
    .line 456
    :array_3
    .array-data 4
        0x1
        0x116babfe
        0xb
        0x34
        0x4
        0x1c
        0x16d
        0x7
        0x4
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x124f80
    .end array-data

    #@c0
    .line 475
    :array_4
    .array-data 4
        0x1
        0x116bd2d2
        0xb
        0x35
        0x6
        0x1f
        0x16e
        0x7
        0x6
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x6ddd00
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 587
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@6
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@d
    .line 588
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    #@11
    .line 586
    return-void
.end method

.method public constructor <init>(III)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v5, v4

    #@6
    move v6, v4

    #@7
    move v7, v4

    #@8
    .line 635
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    #@b
    .line 634
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v7, v6

    #@8
    .line 653
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    #@b
    .line 652
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 673
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v6, p6

    #@8
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    #@b
    .line 672
    return-void
.end method

.method constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millis"    # I

    #@0
    .prologue
    const/16 v5, 0x62e

    #@2
    const/16 v4, 0xc

    #@4
    const/16 v3, 0xa

    #@6
    const/4 v2, 0x1

    #@7
    .line 694
    invoke-direct {p0}, Ljava/util/Calendar;-><init>()V

    #@a
    .line 524
    const-wide v0, -0xb1d069b5400L

    #@f
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@11
    .line 530
    const-wide/32 v0, 0x8d0c8

    #@14
    .line 529
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@16
    .line 536
    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@18
    .line 542
    iput v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@1a
    .line 2228
    const-wide/high16 v0, -0x8000000000000000L

    #@1c
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@1e
    .line 695
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@20
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2a
    .line 696
    invoke-virtual {p0, v2, p1}, Ljava/util/GregorianCalendar;->set(II)V

    #@2d
    .line 697
    const/4 v0, 0x2

    #@2e
    invoke-virtual {p0, v0, p2}, Ljava/util/GregorianCalendar;->set(II)V

    #@31
    .line 698
    const/4 v0, 0x5

    #@32
    invoke-virtual {p0, v0, p3}, Ljava/util/GregorianCalendar;->set(II)V

    #@35
    .line 702
    if-lt p4, v4, :cond_0

    #@37
    const/16 v0, 0x17

    #@39
    if-gt p4, v0, :cond_0

    #@3b
    .line 706
    const/16 v0, 0x9

    #@3d
    invoke-virtual {p0, v0, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@40
    .line 707
    add-int/lit8 v0, p4, -0xc

    #@42
    invoke-virtual {p0, v3, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@45
    .line 714
    :goto_0
    const/16 v0, 0x600

    #@47
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    #@4a
    .line 716
    const/16 v0, 0xb

    #@4c
    invoke-virtual {p0, v0, p4}, Ljava/util/GregorianCalendar;->set(II)V

    #@4f
    .line 717
    invoke-virtual {p0, v4, p5}, Ljava/util/GregorianCalendar;->set(II)V

    #@52
    .line 718
    const/16 v0, 0xd

    #@54
    invoke-virtual {p0, v0, p6}, Ljava/util/GregorianCalendar;->set(II)V

    #@57
    .line 721
    const/16 v0, 0xe

    #@59
    invoke-virtual {p0, v0, p7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@5c
    .line 693
    return-void

    #@5d
    .line 711
    :cond_0
    invoke-virtual {p0, v3, p4}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@60
    goto :goto_0
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    #@0
    .prologue
    .line 725
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    #@3
    .line 726
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@6
    .line 724
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 608
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 609
    const/4 v0, 0x1

    #@8
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    #@b
    .line 607
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 598
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@9
    .line 597
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/16 v2, 0x62e

    #@2
    .line 620
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@5
    .line 524
    const-wide v0, -0xb1d069b5400L

    #@a
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@c
    .line 530
    const-wide/32 v0, 0x8d0c8

    #@f
    .line 529
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@11
    .line 536
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@13
    .line 542
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@15
    .line 2228
    const-wide/high16 v0, -0x8000000000000000L

    #@17
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@19
    .line 621
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@1b
    invoke-virtual {v0, p1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    #@1e
    move-result-object v0

    #@1f
    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@21
    .line 622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@24
    move-result-wide v0

    #@25
    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@28
    .line 619
    return-void
.end method

.method private final actualMonthLength()I
    .locals 10

    #@0
    .prologue
    .line 3230
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@5
    move-result v1

    #@6
    .line 3231
    .local v1, "year":I
    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@8
    if-eq v1, v8, :cond_0

    #@a
    iget v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@c
    if-eq v1, v8, :cond_0

    #@e
    .line 3232
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@10
    iget-object v9, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@12
    invoke-virtual {v8, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@15
    move-result v8

    #@16
    return v8

    #@17
    .line 3234
    :cond_0
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@19
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@1f
    .line 3235
    .local v0, "date":Lsun/util/calendar/BaseCalendar$Date;
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@21
    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    #@24
    move-result-wide v2

    #@25
    .line 3236
    .local v2, "fd":J
    invoke-direct {p0, v0, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@28
    move-result-wide v4

    #@29
    .line 3237
    .local v4, "month1":J
    iget-object v8, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@2b
    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@2e
    move-result v8

    #@2f
    int-to-long v8, v8

    #@30
    add-long v6, v4, v8

    #@32
    .line 3238
    .local v6, "next1":J
    iget-wide v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@34
    cmp-long v8, v6, v8

    #@36
    if-gez v8, :cond_1

    #@38
    .line 3239
    sub-long v8, v6, v4

    #@3a
    long-to-int v8, v8

    #@3b
    return v8

    #@3c
    .line 3241
    :cond_1
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@3e
    iget-object v9, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@40
    if-eq v8, v9, :cond_2

    #@42
    .line 3242
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@44
    sget-object v9, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@46
    invoke-virtual {v8, v9}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    #@49
    move-result-object v0

    #@4a
    .line 3244
    :cond_2
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@4c
    invoke-virtual {v8, v0, v6, v7}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@4f
    .line 3245
    invoke-direct {p0, v0, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@52
    move-result-wide v6

    #@53
    .line 3246
    sub-long v8, v6, v4

    #@55
    long-to-int v8, v8

    #@56
    return v8
.end method

.method private adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I
    .locals 5
    .param p1, "standardTimeInZone"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;
    .param p4, "dstOffset"    # I

    #@0
    .prologue
    .line 2917
    if-eqz p4, :cond_0

    #@2
    .line 2920
    new-instance v0, Ljava/util/Date;

    #@4
    int-to-long v2, p4

    #@5
    sub-long v2, p1, v2

    #@7
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@a
    invoke-virtual {p3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 2921
    const/4 p4, 0x0

    #@11
    .line 2924
    :cond_0
    return p4
.end method

.method private adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J
    .locals 14
    .param p1, "tzMask"    # I
    .param p2, "utcTimeInMillis"    # J
    .param p4, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/16 v12, 0x10

    #@2
    const/4 v11, 0x0

    #@3
    const/16 v10, 0xf

    #@5
    .line 2816
    const/4 v7, 0x0

    #@6
    .line 2817
    .local v7, "zoneOffset":I
    const/4 v2, 0x0

    #@7
    .line 2821
    .local v2, "dstOffset":I
    const v8, 0x18000

    #@a
    if-eq p1, v8, :cond_1

    #@c
    .line 2822
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@e
    if-nez v8, :cond_0

    #@10
    .line 2823
    const/4 v8, 0x2

    #@11
    new-array v8, v8, [I

    #@13
    iput-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@15
    .line 2825
    :cond_0
    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@18
    move-result v8

    #@19
    if-eqz v8, :cond_4

    #@1b
    .line 2826
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1e
    move-result v3

    #@1f
    .line 2834
    .local v3, "gmtOffset":I
    :goto_0
    int-to-long v8, v3

    #@20
    sub-long v4, p2, v8

    #@22
    .line 2837
    .local v4, "standardTimeInZone":J
    move-object/from16 v0, p4

    #@24
    instance-of v8, v0, Llibcore/util/ZoneInfo;

    #@26
    if-eqz v8, :cond_5

    #@28
    move-object/from16 v6, p4

    #@2a
    .line 2838
    check-cast v6, Llibcore/util/ZoneInfo;

    #@2c
    .line 2839
    .local v6, "zoneInfo":Llibcore/util/ZoneInfo;
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@2e
    invoke-virtual {v6, v4, v5, v8}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    #@31
    .line 2843
    .end local v6    # "zoneInfo":Llibcore/util/ZoneInfo;
    :goto_1
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@33
    aget v7, v8, v11

    #@35
    .line 2844
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@37
    const/4 v9, 0x1

    #@38
    aget v2, v8, v9

    #@3a
    .line 2847
    move-object/from16 v0, p4

    #@3c
    invoke-direct {p0, v4, v5, v0, v2}, Ljava/util/GregorianCalendar;->adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I

    #@3f
    move-result v2

    #@40
    .line 2852
    .end local v3    # "gmtOffset":I
    .end local v4    # "standardTimeInZone":J
    :cond_1
    if-eqz p1, :cond_3

    #@42
    .line 2853
    invoke-static {p1, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@45
    move-result v8

    #@46
    if-eqz v8, :cond_2

    #@48
    .line 2854
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@4b
    move-result v7

    #@4c
    .line 2856
    :cond_2
    invoke-static {p1, v12}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@4f
    move-result v8

    #@50
    if-eqz v8, :cond_3

    #@52
    .line 2857
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@55
    move-result v2

    #@56
    .line 2862
    :cond_3
    int-to-long v8, v7

    #@57
    sub-long v4, p2, v8

    #@59
    .line 2863
    .restart local v4    # "standardTimeInZone":J
    int-to-long v8, v2

    #@5a
    sub-long v8, v4, v8

    #@5c
    return-wide v8

    #@5d
    .line 2826
    .end local v4    # "standardTimeInZone":J
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/TimeZone;->getRawOffset()I

    #@60
    move-result v3

    #@61
    goto :goto_0

    #@62
    .line 2841
    .restart local v3    # "gmtOffset":I
    .restart local v4    # "standardTimeInZone":J
    :cond_5
    iget-object v8, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@64
    move-object/from16 v0, p4

    #@66
    invoke-virtual {v0, v4, v5, v8}, Ljava/util/TimeZone;->getOffsets(J[I)I

    #@69
    goto :goto_1
.end method

.method private computeFields(II)I
    .locals 50
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    #@0
    .prologue
    .line 2275
    const/16 v42, 0x0

    #@2
    .line 2276
    .local v42, "zoneOffset":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@5
    move-result-object v38

    #@6
    .line 2277
    .local v38, "tz":Ljava/util/TimeZone;
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@a
    move-object/from16 v43, v0

    #@c
    if-nez v43, :cond_0

    #@e
    .line 2278
    const/16 v43, 0x2

    #@10
    move/from16 v0, v43

    #@12
    new-array v0, v0, [I

    #@14
    move-object/from16 v43, v0

    #@16
    move-object/from16 v0, v43

    #@18
    move-object/from16 v1, p0

    #@1a
    iput-object v0, v1, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@1c
    .line 2280
    :cond_0
    const v43, 0x18000

    #@1f
    move/from16 v0, p2

    #@21
    move/from16 v1, v43

    #@23
    if-eq v0, v1, :cond_1

    #@25
    .line 2281
    move-object/from16 v0, v38

    #@27
    instance-of v0, v0, Llibcore/util/ZoneInfo;

    #@29
    move/from16 v43, v0

    #@2b
    if-eqz v43, :cond_6

    #@2d
    move-object/from16 v41, v38

    #@2f
    .line 2282
    check-cast v41, Llibcore/util/ZoneInfo;

    #@31
    .line 2283
    .local v41, "zoneInfo":Llibcore/util/ZoneInfo;
    move-object/from16 v0, p0

    #@33
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@35
    move-wide/from16 v44, v0

    #@37
    move-object/from16 v0, p0

    #@39
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@3b
    move-object/from16 v43, v0

    #@3d
    move-object/from16 v0, v41

    #@3f
    move-wide/from16 v1, v44

    #@41
    move-object/from16 v3, v43

    #@43
    invoke-virtual {v0, v1, v2, v3}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    #@46
    move-result v42

    #@47
    .line 2290
    .end local v41    # "zoneInfo":Llibcore/util/ZoneInfo;
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    #@49
    .line 2291
    const/16 v43, 0xf

    #@4b
    move/from16 v0, p2

    #@4d
    move/from16 v1, v43

    #@4f
    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@52
    move-result v43

    #@53
    if-eqz v43, :cond_2

    #@55
    .line 2292
    move-object/from16 v0, p0

    #@57
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@59
    move-object/from16 v43, v0

    #@5b
    const/16 v44, 0xf

    #@5d
    move-object/from16 v0, p0

    #@5f
    move/from16 v1, v44

    #@61
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@64
    move-result v44

    #@65
    const/16 v45, 0x0

    #@67
    aput v44, v43, v45

    #@69
    .line 2294
    :cond_2
    const/16 v43, 0x10

    #@6b
    move/from16 v0, p2

    #@6d
    move/from16 v1, v43

    #@6f
    invoke-static {v0, v1}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@72
    move-result v43

    #@73
    if-eqz v43, :cond_3

    #@75
    .line 2295
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@79
    move-object/from16 v43, v0

    #@7b
    const/16 v44, 0x10

    #@7d
    move-object/from16 v0, p0

    #@7f
    move/from16 v1, v44

    #@81
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@84
    move-result v44

    #@85
    const/16 v45, 0x1

    #@87
    aput v44, v43, v45

    #@89
    .line 2297
    :cond_3
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@8d
    move-object/from16 v43, v0

    #@8f
    const/16 v44, 0x0

    #@91
    aget v43, v43, v44

    #@93
    move-object/from16 v0, p0

    #@95
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@97
    move-object/from16 v44, v0

    #@99
    const/16 v45, 0x1

    #@9b
    aget v44, v44, v45

    #@9d
    add-int v42, v43, v44

    #@9f
    .line 2303
    :cond_4
    move/from16 v0, v42

    #@a1
    int-to-long v0, v0

    #@a2
    move-wide/from16 v44, v0

    #@a4
    const-wide/32 v46, 0x5265c00

    #@a7
    div-long v14, v44, v46

    #@a9
    .line 2304
    .local v14, "fixedDate":J
    const v43, 0x5265c00

    #@ac
    rem-int v37, v42, v43

    #@ae
    .line 2305
    .local v37, "timeOfDay":I
    move-object/from16 v0, p0

    #@b0
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@b2
    move-wide/from16 v44, v0

    #@b4
    const-wide/32 v46, 0x5265c00

    #@b7
    div-long v44, v44, v46

    #@b9
    add-long v14, v14, v44

    #@bb
    .line 2306
    move-object/from16 v0, p0

    #@bd
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@bf
    move-wide/from16 v44, v0

    #@c1
    const-wide/32 v46, 0x5265c00

    #@c4
    rem-long v44, v44, v46

    #@c6
    move-wide/from16 v0, v44

    #@c8
    long-to-int v0, v0

    #@c9
    move/from16 v43, v0

    #@cb
    add-int v37, v37, v43

    #@cd
    .line 2307
    move/from16 v0, v37

    #@cf
    int-to-long v0, v0

    #@d0
    move-wide/from16 v44, v0

    #@d2
    const-wide/32 v46, 0x5265c00

    #@d5
    cmp-long v43, v44, v46

    #@d7
    if-ltz v43, :cond_7

    #@d9
    .line 2308
    move/from16 v0, v37

    #@db
    int-to-long v0, v0

    #@dc
    move-wide/from16 v44, v0

    #@de
    const-wide/32 v46, 0x5265c00

    #@e1
    sub-long v44, v44, v46

    #@e3
    move-wide/from16 v0, v44

    #@e5
    long-to-int v0, v0

    #@e6
    move/from16 v37, v0

    #@e8
    .line 2309
    const-wide/16 v44, 0x1

    #@ea
    add-long v14, v14, v44

    #@ec
    .line 2316
    :cond_5
    const-wide/32 v44, 0xaf93b

    #@ef
    add-long v14, v14, v44

    #@f1
    .line 2318
    const/4 v12, 0x1

    #@f2
    .line 2320
    .local v12, "era":I
    move-object/from16 v0, p0

    #@f4
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@f6
    move-wide/from16 v44, v0

    #@f8
    cmp-long v43, v14, v44

    #@fa
    if-ltz v43, :cond_10

    #@fc
    .line 2322
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@fe
    if-nez v43, :cond_9

    #@100
    move-object/from16 v0, p0

    #@102
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@104
    move-wide/from16 v44, v0

    #@106
    const-wide/high16 v46, -0x8000000000000000L

    #@108
    cmp-long v43, v44, v46

    #@10a
    if-eqz v43, :cond_8

    #@10c
    move-object/from16 v0, p0

    #@10e
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@110
    move-object/from16 v43, v0

    #@112
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    #@115
    move-result v43

    #@116
    :goto_1
    if-nez v43, :cond_9

    #@118
    new-instance v43, Ljava/lang/AssertionError;

    #@11a
    .line 2323
    const-string/jumbo v44, "cache control: not normalized"

    #@11d
    .line 2322
    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@120
    throw v43

    #@121
    .line 2285
    .end local v12    # "era":I
    .end local v14    # "fixedDate":J
    .end local v37    # "timeOfDay":I
    :cond_6
    move-object/from16 v0, p0

    #@123
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@125
    move-wide/from16 v44, v0

    #@127
    move-object/from16 v0, v38

    #@129
    move-wide/from16 v1, v44

    #@12b
    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    #@12e
    move-result v42

    #@12f
    .line 2286
    move-object/from16 v0, p0

    #@131
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@133
    move-object/from16 v43, v0

    #@135
    invoke-virtual/range {v38 .. v38}, Ljava/util/TimeZone;->getRawOffset()I

    #@138
    move-result v44

    #@139
    const/16 v45, 0x0

    #@13b
    aput v44, v43, v45

    #@13d
    .line 2287
    move-object/from16 v0, p0

    #@13f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@141
    move-object/from16 v43, v0

    #@143
    move-object/from16 v0, p0

    #@145
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@147
    move-object/from16 v44, v0

    #@149
    const/16 v45, 0x0

    #@14b
    aget v44, v44, v45

    #@14d
    sub-int v44, v42, v44

    #@14f
    const/16 v45, 0x1

    #@151
    aput v44, v43, v45

    #@153
    goto/16 :goto_0

    #@155
    .line 2311
    .restart local v14    # "fixedDate":J
    .restart local v37    # "timeOfDay":I
    :cond_7
    :goto_2
    if-gez v37, :cond_5

    #@157
    .line 2312
    move/from16 v0, v37

    #@159
    int-to-long v0, v0

    #@15a
    move-wide/from16 v44, v0

    #@15c
    const-wide/32 v46, 0x5265c00

    #@15f
    add-long v44, v44, v46

    #@161
    move-wide/from16 v0, v44

    #@163
    long-to-int v0, v0

    #@164
    move/from16 v37, v0

    #@166
    .line 2313
    const-wide/16 v44, 0x1

    #@168
    sub-long v14, v14, v44

    #@16a
    goto :goto_2

    #@16b
    .line 2322
    .restart local v12    # "era":I
    :cond_8
    const/16 v43, 0x1

    #@16d
    goto :goto_1

    #@16e
    .line 2324
    :cond_9
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@170
    if-nez v43, :cond_c

    #@172
    move-object/from16 v0, p0

    #@174
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@176
    move-wide/from16 v44, v0

    #@178
    const-wide/high16 v46, -0x8000000000000000L

    #@17a
    cmp-long v43, v44, v46

    #@17c
    if-eqz v43, :cond_a

    #@17e
    .line 2325
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@180
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@184
    move-object/from16 v44, v0

    #@186
    invoke-virtual/range {v44 .. v44}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@189
    move-result v44

    #@18a
    .line 2326
    move-object/from16 v0, p0

    #@18c
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@18e
    move-object/from16 v45, v0

    #@190
    invoke-virtual/range {v45 .. v45}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@193
    move-result v45

    #@194
    .line 2327
    move-object/from16 v0, p0

    #@196
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@198
    move-object/from16 v46, v0

    #@19a
    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@19d
    move-result v46

    #@19e
    move-object/from16 v0, p0

    #@1a0
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1a2
    move-object/from16 v47, v0

    #@1a4
    .line 2325
    invoke-virtual/range {v43 .. v47}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@1a7
    move-result-wide v44

    #@1a8
    .line 2328
    move-object/from16 v0, p0

    #@1aa
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@1ac
    move-wide/from16 v46, v0

    #@1ae
    .line 2325
    cmp-long v43, v44, v46

    #@1b0
    if-nez v43, :cond_b

    #@1b2
    const/16 v43, 0x1

    #@1b4
    .line 2324
    :goto_3
    if-nez v43, :cond_c

    #@1b6
    new-instance v43, Ljava/lang/AssertionError;

    #@1b8
    .line 2329
    new-instance v44, Ljava/lang/StringBuilder;

    #@1ba
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@1bd
    const-string/jumbo v45, "cache control: inconsictency, cachedFixedDate="

    #@1c0
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v44

    #@1c4
    .line 2330
    move-object/from16 v0, p0

    #@1c6
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@1c8
    move-wide/from16 v46, v0

    #@1ca
    .line 2329
    move-object/from16 v0, v44

    #@1cc
    move-wide/from16 v1, v46

    #@1ce
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1d1
    move-result-object v44

    #@1d2
    .line 2331
    const-string/jumbo v45, ", computed="

    #@1d5
    .line 2329
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d8
    move-result-object v44

    #@1d9
    .line 2332
    sget-object v45, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@1db
    move-object/from16 v0, p0

    #@1dd
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1df
    move-object/from16 v46, v0

    #@1e1
    invoke-virtual/range {v46 .. v46}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@1e4
    move-result v46

    #@1e5
    .line 2333
    move-object/from16 v0, p0

    #@1e7
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1e9
    move-object/from16 v47, v0

    #@1eb
    invoke-virtual/range {v47 .. v47}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@1ee
    move-result v47

    #@1ef
    .line 2334
    move-object/from16 v0, p0

    #@1f1
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1f3
    move-object/from16 v48, v0

    #@1f5
    invoke-virtual/range {v48 .. v48}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@1f8
    move-result v48

    #@1f9
    .line 2335
    move-object/from16 v0, p0

    #@1fb
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1fd
    move-object/from16 v49, v0

    #@1ff
    .line 2332
    invoke-virtual/range {v45 .. v49}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@202
    move-result-wide v46

    #@203
    .line 2329
    move-object/from16 v0, v44

    #@205
    move-wide/from16 v1, v46

    #@207
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v44

    #@20b
    .line 2336
    const-string/jumbo v45, ", date="

    #@20e
    .line 2329
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v44

    #@212
    .line 2336
    move-object/from16 v0, p0

    #@214
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@216
    move-object/from16 v45, v0

    #@218
    .line 2329
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v44

    #@21c
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21f
    move-result-object v44

    #@220
    .line 2324
    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@223
    throw v43

    #@224
    :cond_a
    const/16 v43, 0x1

    #@226
    goto :goto_3

    #@227
    .line 2325
    :cond_b
    const/16 v43, 0x0

    #@229
    goto :goto_3

    #@22a
    .line 2339
    :cond_c
    move-object/from16 v0, p0

    #@22c
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@22e
    move-wide/from16 v44, v0

    #@230
    cmp-long v43, v14, v44

    #@232
    if-eqz v43, :cond_d

    #@234
    .line 2340
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@236
    move-object/from16 v0, p0

    #@238
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@23a
    move-object/from16 v44, v0

    #@23c
    move-object/from16 v0, v43

    #@23e
    move-object/from16 v1, v44

    #@240
    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@243
    .line 2341
    move-object/from16 v0, p0

    #@245
    iput-wide v14, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@247
    .line 2344
    :cond_d
    move-object/from16 v0, p0

    #@249
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@24b
    move-object/from16 v43, v0

    #@24d
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@250
    move-result v40

    #@251
    .line 2345
    .local v40, "year":I
    if-gtz v40, :cond_e

    #@253
    .line 2346
    rsub-int/lit8 v40, v40, 0x1

    #@255
    .line 2347
    const/4 v12, 0x0

    #@256
    .line 2349
    :cond_e
    sget-object v43, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@258
    move-object/from16 v0, v43

    #@25a
    move-object/from16 v1, p0

    #@25c
    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@25e
    .line 2350
    move-object/from16 v0, p0

    #@260
    iget-object v0, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@262
    move-object/from16 v43, v0

    #@264
    move-object/from16 v0, v43

    #@266
    move-object/from16 v1, p0

    #@268
    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@26a
    .line 2351
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@26c
    if-nez v43, :cond_12

    #@26e
    move-object/from16 v0, p0

    #@270
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@272
    move-object/from16 v43, v0

    #@274
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@277
    move-result v43

    #@278
    if-lez v43, :cond_f

    #@27a
    const/16 v43, 0x1

    #@27c
    :goto_4
    if-nez v43, :cond_12

    #@27e
    new-instance v43, Ljava/lang/AssertionError;

    #@280
    new-instance v44, Ljava/lang/StringBuilder;

    #@282
    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    #@285
    const-string/jumbo v45, "dow="

    #@288
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v44

    #@28c
    move-object/from16 v0, p0

    #@28e
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@290
    move-object/from16 v45, v0

    #@292
    invoke-virtual/range {v45 .. v45}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@295
    move-result v45

    #@296
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@299
    move-result-object v44

    #@29a
    const-string/jumbo v45, ", date="

    #@29d
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v44

    #@2a1
    move-object/from16 v0, p0

    #@2a3
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2a5
    move-object/from16 v45, v0

    #@2a7
    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2aa
    move-result-object v44

    #@2ab
    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ae
    move-result-object v44

    #@2af
    invoke-direct/range {v43 .. v44}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2b2
    throw v43

    #@2b3
    :cond_f
    const/16 v43, 0x0

    #@2b5
    goto :goto_4

    #@2b6
    .line 2354
    .end local v40    # "year":I
    :cond_10
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@2b9
    move-result-object v43

    #@2ba
    move-object/from16 v0, v43

    #@2bc
    move-object/from16 v1, p0

    #@2be
    iput-object v0, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@2c0
    .line 2355
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    #@2c2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@2c5
    move-result-object v44

    #@2c6
    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    #@2c9
    move-result-object v43

    #@2ca
    move-object/from16 v0, v43

    #@2cc
    move-object/from16 v1, p0

    #@2ce
    iput-object v0, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2d0
    .line 2356
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    #@2d2
    move-object/from16 v0, p0

    #@2d4
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2d6
    move-object/from16 v44, v0

    #@2d8
    move-object/from16 v0, v43

    #@2da
    move-object/from16 v1, v44

    #@2dc
    invoke-virtual {v0, v1, v14, v15}, Lsun/util/calendar/JulianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@2df
    .line 2357
    move-object/from16 v0, p0

    #@2e1
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2e3
    move-object/from16 v43, v0

    #@2e5
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    #@2e8
    move-result-object v11

    #@2e9
    .line 2358
    .local v11, "e":Lsun/util/calendar/Era;
    sget-object v43, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    #@2eb
    const/16 v44, 0x0

    #@2ed
    aget-object v43, v43, v44

    #@2ef
    move-object/from16 v0, v43

    #@2f1
    if-ne v11, v0, :cond_11

    #@2f3
    .line 2359
    const/4 v12, 0x0

    #@2f4
    .line 2361
    :cond_11
    move-object/from16 v0, p0

    #@2f6
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2f8
    move-object/from16 v43, v0

    #@2fa
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@2fd
    move-result v40

    #@2fe
    .line 2365
    .end local v11    # "e":Lsun/util/calendar/Era;
    .restart local v40    # "year":I
    :cond_12
    const/16 v43, 0x0

    #@300
    move-object/from16 v0, p0

    #@302
    move/from16 v1, v43

    #@304
    invoke-virtual {v0, v1, v12}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@307
    .line 2366
    const/16 v43, 0x1

    #@309
    move-object/from16 v0, p0

    #@30b
    move/from16 v1, v43

    #@30d
    move/from16 v2, v40

    #@30f
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@312
    .line 2367
    or-int/lit8 v22, p1, 0x3

    #@314
    .line 2369
    .local v22, "mask":I
    move-object/from16 v0, p0

    #@316
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@318
    move-object/from16 v43, v0

    #@31a
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@31d
    move-result v43

    #@31e
    add-int/lit8 v23, v43, -0x1

    #@320
    .line 2370
    .local v23, "month":I
    move-object/from16 v0, p0

    #@322
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@324
    move-object/from16 v43, v0

    #@326
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@329
    move-result v9

    #@32a
    .line 2373
    .local v9, "dayOfMonth":I
    move/from16 v0, p1

    #@32c
    and-int/lit16 v0, v0, 0xa4

    #@32e
    move/from16 v43, v0

    #@330
    if-eqz v43, :cond_13

    #@332
    .line 2375
    const/16 v43, 0x2

    #@334
    move-object/from16 v0, p0

    #@336
    move/from16 v1, v43

    #@338
    move/from16 v2, v23

    #@33a
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@33d
    .line 2376
    const/16 v43, 0x5

    #@33f
    move-object/from16 v0, p0

    #@341
    move/from16 v1, v43

    #@343
    invoke-virtual {v0, v1, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@346
    .line 2377
    move-object/from16 v0, p0

    #@348
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@34a
    move-object/from16 v43, v0

    #@34c
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@34f
    move-result v43

    #@350
    const/16 v44, 0x7

    #@352
    move-object/from16 v0, p0

    #@354
    move/from16 v1, v44

    #@356
    move/from16 v2, v43

    #@358
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@35b
    .line 2378
    move/from16 v0, v22

    #@35d
    or-int/lit16 v0, v0, 0xa4

    #@35f
    move/from16 v22, v0

    #@361
    .line 2381
    :cond_13
    move/from16 v0, p1

    #@363
    and-int/lit16 v0, v0, 0x7e00

    #@365
    move/from16 v43, v0

    #@367
    if-eqz v43, :cond_14

    #@369
    .line 2383
    if-eqz v37, :cond_1b

    #@36b
    .line 2384
    const v43, 0x36ee80

    #@36e
    div-int v13, v37, v43

    #@370
    .line 2385
    .local v13, "hours":I
    const/16 v43, 0xb

    #@372
    move-object/from16 v0, p0

    #@374
    move/from16 v1, v43

    #@376
    invoke-virtual {v0, v1, v13}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@379
    .line 2386
    div-int/lit8 v43, v13, 0xc

    #@37b
    const/16 v44, 0x9

    #@37d
    move-object/from16 v0, p0

    #@37f
    move/from16 v1, v44

    #@381
    move/from16 v2, v43

    #@383
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@386
    .line 2387
    rem-int/lit8 v43, v13, 0xc

    #@388
    const/16 v44, 0xa

    #@38a
    move-object/from16 v0, p0

    #@38c
    move/from16 v1, v44

    #@38e
    move/from16 v2, v43

    #@390
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@393
    .line 2388
    const v43, 0x36ee80

    #@396
    rem-int v34, v37, v43

    #@398
    .line 2389
    .local v34, "r":I
    const v43, 0xea60

    #@39b
    div-int v43, v34, v43

    #@39d
    const/16 v44, 0xc

    #@39f
    move-object/from16 v0, p0

    #@3a1
    move/from16 v1, v44

    #@3a3
    move/from16 v2, v43

    #@3a5
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@3a8
    .line 2390
    const v43, 0xea60

    #@3ab
    rem-int v34, v34, v43

    #@3ad
    .line 2391
    move/from16 v0, v34

    #@3af
    div-int/lit16 v0, v0, 0x3e8

    #@3b1
    move/from16 v43, v0

    #@3b3
    const/16 v44, 0xd

    #@3b5
    move-object/from16 v0, p0

    #@3b7
    move/from16 v1, v44

    #@3b9
    move/from16 v2, v43

    #@3bb
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@3be
    .line 2392
    move/from16 v0, v34

    #@3c0
    rem-int/lit16 v0, v0, 0x3e8

    #@3c2
    move/from16 v43, v0

    #@3c4
    const/16 v44, 0xe

    #@3c6
    move-object/from16 v0, p0

    #@3c8
    move/from16 v1, v44

    #@3ca
    move/from16 v2, v43

    #@3cc
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@3cf
    .line 2401
    .end local v13    # "hours":I
    .end local v34    # "r":I
    :goto_5
    move/from16 v0, v22

    #@3d1
    or-int/lit16 v0, v0, 0x7e00

    #@3d3
    move/from16 v22, v0

    #@3d5
    .line 2405
    :cond_14
    const v43, 0x18000

    #@3d8
    and-int v43, v43, p1

    #@3da
    if-eqz v43, :cond_15

    #@3dc
    .line 2406
    move-object/from16 v0, p0

    #@3de
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@3e0
    move-object/from16 v43, v0

    #@3e2
    const/16 v44, 0x0

    #@3e4
    aget v43, v43, v44

    #@3e6
    const/16 v44, 0xf

    #@3e8
    move-object/from16 v0, p0

    #@3ea
    move/from16 v1, v44

    #@3ec
    move/from16 v2, v43

    #@3ee
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@3f1
    .line 2407
    move-object/from16 v0, p0

    #@3f3
    iget-object v0, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@3f5
    move-object/from16 v43, v0

    #@3f7
    const/16 v44, 0x1

    #@3f9
    aget v43, v43, v44

    #@3fb
    const/16 v44, 0x10

    #@3fd
    move-object/from16 v0, p0

    #@3ff
    move/from16 v1, v44

    #@401
    move/from16 v2, v43

    #@403
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@406
    .line 2408
    const v43, 0x18000

    #@409
    or-int v22, v22, v43

    #@40b
    .line 2411
    :cond_15
    move/from16 v0, p1

    #@40d
    and-int/lit16 v0, v0, 0x158

    #@40f
    move/from16 v43, v0

    #@411
    if-eqz v43, :cond_1a

    #@413
    .line 2412
    move-object/from16 v0, p0

    #@415
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@417
    move-object/from16 v43, v0

    #@419
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@41c
    move-result v30

    #@41d
    .line 2413
    .local v30, "normalizedYear":I
    move-object/from16 v0, p0

    #@41f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@421
    move-object/from16 v43, v0

    #@423
    move-object/from16 v0, p0

    #@425
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@427
    move-object/from16 v44, v0

    #@429
    const/16 v45, 0x1

    #@42b
    const/16 v46, 0x1

    #@42d
    move-object/from16 v0, v43

    #@42f
    move/from16 v1, v30

    #@431
    move/from16 v2, v45

    #@433
    move/from16 v3, v46

    #@435
    move-object/from16 v4, v44

    #@437
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@43a
    move-result-wide v16

    #@43b
    .line 2414
    .local v16, "fixedDateJan1":J
    sub-long v44, v14, v16

    #@43d
    move-wide/from16 v0, v44

    #@43f
    long-to-int v0, v0

    #@440
    move/from16 v43, v0

    #@442
    add-int/lit8 v10, v43, 0x1

    #@444
    .line 2415
    .local v10, "dayOfYear":I
    int-to-long v0, v9

    #@445
    move-wide/from16 v44, v0

    #@447
    sub-long v44, v14, v44

    #@449
    const-wide/16 v46, 0x1

    #@44b
    add-long v18, v44, v46

    #@44d
    .line 2416
    .local v18, "fixedDateMonth1":J
    const/4 v7, 0x0

    #@44e
    .line 2417
    .local v7, "cutoverGap":I
    move-object/from16 v0, p0

    #@450
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@452
    move-object/from16 v43, v0

    #@454
    sget-object v44, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@456
    move-object/from16 v0, v43

    #@458
    move-object/from16 v1, v44

    #@45a
    if-ne v0, v1, :cond_1c

    #@45c
    move-object/from16 v0, p0

    #@45e
    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@460
    .line 2418
    .local v8, "cutoverYear":I
    :goto_6
    add-int/lit8 v36, v9, -0x1

    #@462
    .line 2421
    .local v36, "relativeDayOfMonth":I
    move/from16 v0, v30

    #@464
    if-ne v0, v8, :cond_17

    #@466
    .line 2423
    move-object/from16 v0, p0

    #@468
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@46a
    move/from16 v43, v0

    #@46c
    move-object/from16 v0, p0

    #@46e
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@470
    move/from16 v44, v0

    #@472
    move/from16 v0, v43

    #@474
    move/from16 v1, v44

    #@476
    if-gt v0, v1, :cond_16

    #@478
    .line 2427
    move-object/from16 v0, p0

    #@47a
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@47c
    move-object/from16 v43, v0

    #@47e
    move-object/from16 v0, p0

    #@480
    move-object/from16 v1, v43

    #@482
    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@485
    move-result-wide v16

    #@486
    .line 2428
    move-object/from16 v0, p0

    #@488
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@48a
    move-wide/from16 v44, v0

    #@48c
    cmp-long v43, v14, v44

    #@48e
    if-ltz v43, :cond_16

    #@490
    .line 2429
    move-object/from16 v0, p0

    #@492
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@494
    move-object/from16 v43, v0

    #@496
    move-object/from16 v0, p0

    #@498
    move-object/from16 v1, v43

    #@49a
    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@49d
    move-result-wide v18

    #@49e
    .line 2432
    :cond_16
    sub-long v44, v14, v16

    #@4a0
    move-wide/from16 v0, v44

    #@4a2
    long-to-int v0, v0

    #@4a3
    move/from16 v43, v0

    #@4a5
    add-int/lit8 v35, v43, 0x1

    #@4a7
    .line 2433
    .local v35, "realDayOfYear":I
    sub-int v7, v10, v35

    #@4a9
    .line 2434
    move/from16 v10, v35

    #@4ab
    .line 2435
    sub-long v44, v14, v18

    #@4ad
    move-wide/from16 v0, v44

    #@4af
    long-to-int v0, v0

    #@4b0
    move/from16 v36, v0

    #@4b2
    .line 2437
    .end local v35    # "realDayOfYear":I
    :cond_17
    const/16 v43, 0x6

    #@4b4
    move-object/from16 v0, p0

    #@4b6
    move/from16 v1, v43

    #@4b8
    invoke-virtual {v0, v1, v10}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@4bb
    .line 2438
    div-int/lit8 v43, v36, 0x7

    #@4bd
    add-int/lit8 v43, v43, 0x1

    #@4bf
    const/16 v44, 0x8

    #@4c1
    move-object/from16 v0, p0

    #@4c3
    move/from16 v1, v44

    #@4c5
    move/from16 v2, v43

    #@4c7
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@4ca
    .line 2440
    move-object/from16 v0, p0

    #@4cc
    move-wide/from16 v1, v16

    #@4ce
    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    #@4d1
    move-result v39

    #@4d2
    .line 2444
    .local v39, "weekOfYear":I
    if-nez v39, :cond_21

    #@4d4
    .line 2452
    const-wide/16 v44, 0x1

    #@4d6
    sub-long v20, v16, v44

    #@4d8
    .line 2453
    .local v20, "fixedDec31":J
    const-wide/16 v44, 0x16d

    #@4da
    sub-long v32, v16, v44

    #@4dc
    .line 2454
    .local v32, "prevJan1":J
    add-int/lit8 v43, v8, 0x1

    #@4de
    move/from16 v0, v30

    #@4e0
    move/from16 v1, v43

    #@4e2
    if-le v0, v1, :cond_1d

    #@4e4
    .line 2455
    add-int/lit8 v43, v30, -0x1

    #@4e6
    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    #@4e9
    move-result v43

    #@4ea
    if-eqz v43, :cond_18

    #@4ec
    .line 2456
    const-wide/16 v44, 0x1

    #@4ee
    sub-long v32, v32, v44

    #@4f0
    .line 2485
    :cond_18
    :goto_7
    move-object/from16 v0, p0

    #@4f2
    move-wide/from16 v1, v32

    #@4f4
    move-wide/from16 v3, v20

    #@4f6
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    #@4f9
    move-result v39

    #@4fa
    .line 2537
    .end local v20    # "fixedDec31":J
    .end local v32    # "prevJan1":J
    :cond_19
    :goto_8
    const/16 v43, 0x3

    #@4fc
    move-object/from16 v0, p0

    #@4fe
    move/from16 v1, v43

    #@500
    move/from16 v2, v39

    #@502
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@505
    .line 2538
    move-object/from16 v0, p0

    #@507
    move-wide/from16 v1, v18

    #@509
    invoke-direct {v0, v1, v2, v14, v15}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    #@50c
    move-result v43

    #@50d
    const/16 v44, 0x4

    #@50f
    move-object/from16 v0, p0

    #@511
    move/from16 v1, v44

    #@513
    move/from16 v2, v43

    #@515
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@518
    .line 2539
    move/from16 v0, v22

    #@51a
    or-int/lit16 v0, v0, 0x158

    #@51c
    move/from16 v22, v0

    #@51e
    .line 2541
    .end local v7    # "cutoverGap":I
    .end local v8    # "cutoverYear":I
    .end local v10    # "dayOfYear":I
    .end local v16    # "fixedDateJan1":J
    .end local v18    # "fixedDateMonth1":J
    .end local v30    # "normalizedYear":I
    .end local v36    # "relativeDayOfMonth":I
    .end local v39    # "weekOfYear":I
    :cond_1a
    return v22

    #@51f
    .line 2394
    :cond_1b
    const/16 v43, 0xb

    #@521
    const/16 v44, 0x0

    #@523
    move-object/from16 v0, p0

    #@525
    move/from16 v1, v43

    #@527
    move/from16 v2, v44

    #@529
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@52c
    .line 2395
    const/16 v43, 0x9

    #@52e
    const/16 v44, 0x0

    #@530
    move-object/from16 v0, p0

    #@532
    move/from16 v1, v43

    #@534
    move/from16 v2, v44

    #@536
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@539
    .line 2396
    const/16 v43, 0xa

    #@53b
    const/16 v44, 0x0

    #@53d
    move-object/from16 v0, p0

    #@53f
    move/from16 v1, v43

    #@541
    move/from16 v2, v44

    #@543
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@546
    .line 2397
    const/16 v43, 0xc

    #@548
    const/16 v44, 0x0

    #@54a
    move-object/from16 v0, p0

    #@54c
    move/from16 v1, v43

    #@54e
    move/from16 v2, v44

    #@550
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@553
    .line 2398
    const/16 v43, 0xd

    #@555
    const/16 v44, 0x0

    #@557
    move-object/from16 v0, p0

    #@559
    move/from16 v1, v43

    #@55b
    move/from16 v2, v44

    #@55d
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@560
    .line 2399
    const/16 v43, 0xe

    #@562
    const/16 v44, 0x0

    #@564
    move-object/from16 v0, p0

    #@566
    move/from16 v1, v43

    #@568
    move/from16 v2, v44

    #@56a
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@56d
    goto/16 :goto_5

    #@56f
    .line 2417
    .restart local v7    # "cutoverGap":I
    .restart local v10    # "dayOfYear":I
    .restart local v16    # "fixedDateJan1":J
    .restart local v18    # "fixedDateMonth1":J
    .restart local v30    # "normalizedYear":I
    :cond_1c
    move-object/from16 v0, p0

    #@571
    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@573
    goto/16 :goto_6

    #@575
    .line 2458
    .restart local v8    # "cutoverYear":I
    .restart local v20    # "fixedDec31":J
    .restart local v32    # "prevJan1":J
    .restart local v36    # "relativeDayOfMonth":I
    .restart local v39    # "weekOfYear":I
    :cond_1d
    move-object/from16 v0, p0

    #@577
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@579
    move/from16 v43, v0

    #@57b
    move/from16 v0, v30

    #@57d
    move/from16 v1, v43

    #@57f
    if-gt v0, v1, :cond_1e

    #@581
    .line 2459
    add-int/lit8 v43, v30, -0x1

    #@583
    invoke-static/range {v43 .. v43}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    #@586
    move-result v43

    #@587
    if-eqz v43, :cond_18

    #@589
    .line 2460
    const-wide/16 v44, 0x1

    #@58b
    sub-long v32, v32, v44

    #@58d
    goto/16 :goto_7

    #@58f
    .line 2463
    :cond_1e
    move-object/from16 v0, p0

    #@591
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@593
    .line 2465
    .local v6, "calForJan1":Lsun/util/calendar/BaseCalendar;
    move-object/from16 v0, p0

    #@595
    move-wide/from16 v1, v20

    #@597
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@59a
    move-result-object v43

    #@59b
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@59e
    move-result v31

    #@59f
    .line 2466
    .local v31, "prevYear":I
    move-object/from16 v0, p0

    #@5a1
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@5a3
    move/from16 v43, v0

    #@5a5
    move/from16 v0, v31

    #@5a7
    move/from16 v1, v43

    #@5a9
    if-ne v0, v1, :cond_20

    #@5ab
    .line 2467
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@5ae
    move-result-object v6

    #@5af
    .line 2468
    sget-object v43, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    #@5b1
    move-object/from16 v0, v43

    #@5b3
    if-ne v6, v0, :cond_1f

    #@5b5
    .line 2470
    const/16 v43, 0x1

    #@5b7
    .line 2471
    const/16 v44, 0x1

    #@5b9
    .line 2472
    const/16 v45, 0x0

    #@5bb
    .line 2469
    move/from16 v0, v31

    #@5bd
    move/from16 v1, v43

    #@5bf
    move/from16 v2, v44

    #@5c1
    move-object/from16 v3, v45

    #@5c3
    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@5c6
    move-result-wide v32

    #@5c7
    goto/16 :goto_7

    #@5c9
    .line 2474
    :cond_1f
    move-object/from16 v0, p0

    #@5cb
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@5cd
    move-wide/from16 v32, v0

    #@5cf
    .line 2475
    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@5d1
    goto/16 :goto_7

    #@5d3
    .line 2477
    :cond_20
    move-object/from16 v0, p0

    #@5d5
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@5d7
    move/from16 v43, v0

    #@5d9
    move/from16 v0, v31

    #@5db
    move/from16 v1, v43

    #@5dd
    if-gt v0, v1, :cond_18

    #@5df
    .line 2478
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@5e2
    move-result-object v6

    #@5e3
    .line 2480
    const/16 v43, 0x1

    #@5e5
    .line 2481
    const/16 v44, 0x1

    #@5e7
    .line 2482
    const/16 v45, 0x0

    #@5e9
    .line 2479
    move/from16 v0, v31

    #@5eb
    move/from16 v1, v43

    #@5ed
    move/from16 v2, v44

    #@5ef
    move-object/from16 v3, v45

    #@5f1
    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@5f4
    move-result-wide v32

    #@5f5
    goto/16 :goto_7

    #@5f7
    .line 2487
    .end local v6    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v20    # "fixedDec31":J
    .end local v31    # "prevYear":I
    .end local v32    # "prevJan1":J
    :cond_21
    move-object/from16 v0, p0

    #@5f9
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@5fb
    move/from16 v43, v0

    #@5fd
    move/from16 v0, v30

    #@5ff
    move/from16 v1, v43

    #@601
    if-gt v0, v1, :cond_22

    #@603
    .line 2488
    move-object/from16 v0, p0

    #@605
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@607
    move/from16 v43, v0

    #@609
    add-int/lit8 v43, v43, -0x1

    #@60b
    move/from16 v0, v30

    #@60d
    move/from16 v1, v43

    #@60f
    if-ge v0, v1, :cond_24

    #@611
    .line 2490
    :cond_22
    const/16 v43, 0x34

    #@613
    move/from16 v0, v39

    #@615
    move/from16 v1, v43

    #@617
    if-lt v0, v1, :cond_19

    #@619
    .line 2491
    const-wide/16 v44, 0x16d

    #@61b
    add-long v26, v16, v44

    #@61d
    .line 2492
    .local v26, "nextJan1":J
    move-object/from16 v0, p0

    #@61f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@621
    move-object/from16 v43, v0

    #@623
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    #@626
    move-result v43

    #@627
    if-eqz v43, :cond_23

    #@629
    .line 2493
    const-wide/16 v44, 0x1

    #@62b
    add-long v26, v26, v44

    #@62d
    .line 2495
    :cond_23
    move-object/from16 v0, p0

    #@62f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@631
    move-object/from16 v43, v0

    #@633
    const-wide/16 v44, 0x6

    #@635
    add-long v44, v44, v26

    #@637
    .line 2496
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@63a
    move-result v43

    #@63b
    .line 2495
    move-wide/from16 v0, v44

    #@63d
    move/from16 v2, v43

    #@63f
    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@642
    move-result-wide v28

    #@643
    .line 2497
    .local v28, "nextJan1st":J
    sub-long v44, v28, v26

    #@645
    move-wide/from16 v0, v44

    #@647
    long-to-int v0, v0

    #@648
    move/from16 v24, v0

    #@64a
    .line 2498
    .local v24, "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@64d
    move-result v43

    #@64e
    move/from16 v0, v24

    #@650
    move/from16 v1, v43

    #@652
    if-lt v0, v1, :cond_19

    #@654
    const-wide/16 v44, 0x7

    #@656
    sub-long v44, v28, v44

    #@658
    cmp-long v43, v14, v44

    #@65a
    if-ltz v43, :cond_19

    #@65c
    .line 2500
    const/16 v39, 0x1

    #@65e
    goto/16 :goto_8

    #@660
    .line 2504
    .end local v24    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_24
    move-object/from16 v0, p0

    #@662
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@664
    .line 2505
    .restart local v6    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    add-int/lit8 v25, v30, 0x1

    #@666
    .line 2506
    .local v25, "nextYear":I
    move-object/from16 v0, p0

    #@668
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@66a
    move/from16 v43, v0

    #@66c
    add-int/lit8 v43, v43, 0x1

    #@66e
    move/from16 v0, v25

    #@670
    move/from16 v1, v43

    #@672
    if-ne v0, v1, :cond_25

    #@674
    .line 2507
    move-object/from16 v0, p0

    #@676
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@678
    move/from16 v43, v0

    #@67a
    move/from16 v0, v25

    #@67c
    move/from16 v1, v43

    #@67e
    if-ge v0, v1, :cond_25

    #@680
    .line 2509
    move-object/from16 v0, p0

    #@682
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@684
    move/from16 v25, v0

    #@686
    .line 2511
    :cond_25
    move-object/from16 v0, p0

    #@688
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@68a
    move/from16 v43, v0

    #@68c
    move/from16 v0, v25

    #@68e
    move/from16 v1, v43

    #@690
    if-ne v0, v1, :cond_26

    #@692
    .line 2512
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@695
    move-result-object v6

    #@696
    .line 2516
    :cond_26
    move-object/from16 v0, p0

    #@698
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@69a
    move/from16 v43, v0

    #@69c
    move/from16 v0, v25

    #@69e
    move/from16 v1, v43

    #@6a0
    if-gt v0, v1, :cond_27

    #@6a2
    .line 2517
    move-object/from16 v0, p0

    #@6a4
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@6a6
    move/from16 v43, v0

    #@6a8
    move-object/from16 v0, p0

    #@6aa
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@6ac
    move/from16 v44, v0

    #@6ae
    move/from16 v0, v43

    #@6b0
    move/from16 v1, v44

    #@6b2
    if-ne v0, v1, :cond_28

    #@6b4
    .line 2520
    :cond_27
    const/16 v43, 0x1

    #@6b6
    .line 2521
    const/16 v44, 0x1

    #@6b8
    .line 2522
    const/16 v45, 0x0

    #@6ba
    .line 2519
    move/from16 v0, v25

    #@6bc
    move/from16 v1, v43

    #@6be
    move/from16 v2, v44

    #@6c0
    move-object/from16 v3, v45

    #@6c2
    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@6c5
    move-result-wide v26

    #@6c6
    .line 2528
    .restart local v26    # "nextJan1":J
    :goto_9
    const-wide/16 v44, 0x6

    #@6c8
    add-long v44, v44, v26

    #@6ca
    .line 2529
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@6cd
    move-result v43

    #@6ce
    .line 2528
    move-wide/from16 v0, v44

    #@6d0
    move/from16 v2, v43

    #@6d2
    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@6d5
    move-result-wide v28

    #@6d6
    .line 2530
    .restart local v28    # "nextJan1st":J
    sub-long v44, v28, v26

    #@6d8
    move-wide/from16 v0, v44

    #@6da
    long-to-int v0, v0

    #@6db
    move/from16 v24, v0

    #@6dd
    .line 2531
    .restart local v24    # "ndays":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@6e0
    move-result v43

    #@6e1
    move/from16 v0, v24

    #@6e3
    move/from16 v1, v43

    #@6e5
    if-lt v0, v1, :cond_19

    #@6e7
    const-wide/16 v44, 0x7

    #@6e9
    sub-long v44, v28, v44

    #@6eb
    cmp-long v43, v14, v44

    #@6ed
    if-ltz v43, :cond_19

    #@6ef
    .line 2533
    const/16 v39, 0x1

    #@6f1
    goto/16 :goto_8

    #@6f3
    .line 2518
    .end local v24    # "ndays":I
    .end local v26    # "nextJan1":J
    .end local v28    # "nextJan1st":J
    :cond_28
    move-object/from16 v0, p0

    #@6f5
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@6f7
    move/from16 v43, v0

    #@6f9
    move/from16 v0, v25

    #@6fb
    move/from16 v1, v43

    #@6fd
    if-eq v0, v1, :cond_27

    #@6ff
    .line 2524
    move-object/from16 v0, p0

    #@701
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@703
    move-wide/from16 v26, v0

    #@705
    .line 2525
    .restart local v26    # "nextJan1":J
    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@707
    goto :goto_9
.end method

.method private final getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;
    .locals 5
    .param p1, "fd"    # J

    #@0
    .prologue
    .line 3183
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@2
    cmp-long v2, p1, v2

    #@4
    if-ltz v2, :cond_0

    #@6
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@8
    .line 3184
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_0
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@a
    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    #@10
    .line 3185
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@13
    .line 3186
    return-object v1

    #@14
    .line 3183
    .end local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v1    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@17
    move-result-object v0

    #@18
    .restart local v0    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_0
.end method

.method private final getCurrentFixedDate()J
    .locals 2

    #@0
    .prologue
    .line 3295
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@2
    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@8
    :goto_0
    return-wide v0

    #@9
    :cond_0
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@b
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@d
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    #@10
    move-result-wide v0

    #@11
    goto :goto_0
.end method

.method private getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .locals 2

    #@0
    .prologue
    .line 3093
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@2
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 3094
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@8
    return-object v0

    #@9
    .line 3096
    :cond_0
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private getFixedDate(Lsun/util/calendar/BaseCalendar;II)J
    .locals 16
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    #@0
    .prologue
    .line 2939
    const/4 v9, 0x0

    #@1
    .line 2940
    .local v9, "month":I
    const/4 v11, 0x2

    #@2
    move/from16 v0, p3

    #@4
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@7
    move-result v11

    #@8
    if-eqz v11, :cond_0

    #@a
    .line 2943
    const/4 v11, 0x2

    #@b
    move-object/from16 v0, p0

    #@d
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@10
    move-result v9

    #@11
    .line 2946
    const/16 v11, 0xb

    #@13
    if-le v9, v11, :cond_2

    #@15
    .line 2947
    div-int/lit8 v11, v9, 0xc

    #@17
    add-int p2, p2, v11

    #@19
    .line 2948
    rem-int/lit8 v9, v9, 0xc

    #@1b
    .line 2958
    :cond_0
    :goto_0
    add-int/lit8 v12, v9, 0x1

    #@1d
    .line 2959
    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@1f
    move-object/from16 v0, p1

    #@21
    if-ne v0, v11, :cond_3

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v11, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@27
    .line 2958
    :goto_1
    const/4 v13, 0x1

    #@28
    move-object/from16 v0, p1

    #@2a
    move/from16 v1, p2

    #@2c
    invoke-virtual {v0, v1, v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@2f
    move-result-wide v6

    #@30
    .line 2960
    .local v6, "fixedDate":J
    const/4 v11, 0x2

    #@31
    move/from16 v0, p3

    #@33
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@36
    move-result v11

    #@37
    if-eqz v11, :cond_b

    #@39
    .line 2962
    const/4 v11, 0x5

    #@3a
    move/from16 v0, p3

    #@3c
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@3f
    move-result v11

    #@40
    if-eqz v11, :cond_4

    #@42
    .line 2969
    const/4 v11, 0x5

    #@43
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->isSet(I)Z

    #@48
    move-result v11

    #@49
    if-eqz v11, :cond_1

    #@4b
    .line 2972
    const/4 v11, 0x5

    #@4c
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@51
    move-result v11

    #@52
    int-to-long v12, v11

    #@53
    add-long/2addr v6, v12

    #@54
    .line 2973
    const-wide/16 v12, 0x1

    #@56
    sub-long/2addr v6, v12

    #@57
    .line 3054
    :cond_1
    :goto_2
    return-wide v6

    #@58
    .line 2949
    .end local v6    # "fixedDate":J
    :cond_2
    if-gez v9, :cond_0

    #@5a
    .line 2950
    const/4 v11, 0x1

    #@5b
    new-array v10, v11, [I

    #@5d
    .line 2951
    .local v10, "rem":[I
    const/16 v11, 0xc

    #@5f
    invoke-static {v9, v11, v10}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    #@62
    move-result v11

    #@63
    add-int p2, p2, v11

    #@65
    .line 2952
    const/4 v11, 0x0

    #@66
    aget v9, v10, v11

    #@68
    goto :goto_0

    #@69
    .line 2959
    .end local v10    # "rem":[I
    :cond_3
    const/4 v11, 0x0

    #@6a
    goto :goto_1

    #@6b
    .line 2976
    .restart local v6    # "fixedDate":J
    :cond_4
    const/4 v11, 0x4

    #@6c
    move/from16 v0, p3

    #@6e
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@71
    move-result v11

    #@72
    if-eqz v11, :cond_7

    #@74
    .line 2977
    const-wide/16 v12, 0x6

    #@76
    add-long/2addr v12, v6

    #@77
    .line 2978
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@7a
    move-result v11

    #@7b
    .line 2977
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@7e
    move-result-wide v4

    #@7f
    .line 2981
    .local v4, "firstDayOfWeek":J
    sub-long v12, v4, v6

    #@81
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@84
    move-result v11

    #@85
    int-to-long v14, v11

    #@86
    cmp-long v11, v12, v14

    #@88
    if-ltz v11, :cond_5

    #@8a
    .line 2982
    const-wide/16 v12, 0x7

    #@8c
    sub-long/2addr v4, v12

    #@8d
    .line 2984
    :cond_5
    const/4 v11, 0x7

    #@8e
    move/from16 v0, p3

    #@90
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@93
    move-result v11

    #@94
    if-eqz v11, :cond_6

    #@96
    .line 2985
    const-wide/16 v12, 0x6

    #@98
    add-long/2addr v12, v4

    #@99
    .line 2986
    const/4 v11, 0x7

    #@9a
    move-object/from16 v0, p0

    #@9c
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@9f
    move-result v11

    #@a0
    .line 2985
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@a3
    move-result-wide v4

    #@a4
    .line 2991
    :cond_6
    const/4 v11, 0x4

    #@a5
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@aa
    move-result v11

    #@ab
    add-int/lit8 v11, v11, -0x1

    #@ad
    mul-int/lit8 v11, v11, 0x7

    #@af
    int-to-long v12, v11

    #@b0
    add-long v6, v4, v12

    #@b2
    goto :goto_2

    #@b3
    .line 2994
    .end local v4    # "firstDayOfWeek":J
    :cond_7
    const/4 v11, 0x7

    #@b4
    move/from16 v0, p3

    #@b6
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@b9
    move-result v11

    #@ba
    if-eqz v11, :cond_8

    #@bc
    .line 2995
    const/4 v11, 0x7

    #@bd
    move-object/from16 v0, p0

    #@bf
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@c2
    move-result v2

    #@c3
    .line 3003
    .local v2, "dayOfWeek":I
    :goto_3
    const/16 v11, 0x8

    #@c5
    move/from16 v0, p3

    #@c7
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@ca
    move-result v11

    #@cb
    if-eqz v11, :cond_9

    #@cd
    .line 3004
    const/16 v11, 0x8

    #@cf
    move-object/from16 v0, p0

    #@d1
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@d4
    move-result v3

    #@d5
    .line 3008
    .local v3, "dowim":I
    :goto_4
    if-ltz v3, :cond_a

    #@d7
    .line 3009
    mul-int/lit8 v11, v3, 0x7

    #@d9
    int-to-long v12, v11

    #@da
    add-long/2addr v12, v6

    #@db
    const-wide/16 v14, 0x1

    #@dd
    sub-long/2addr v12, v14

    #@de
    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@e1
    move-result-wide v6

    #@e2
    goto/16 :goto_2

    #@e4
    .line 2997
    .end local v2    # "dayOfWeek":I
    .end local v3    # "dowim":I
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@e7
    move-result v2

    #@e8
    .restart local v2    # "dayOfWeek":I
    goto :goto_3

    #@e9
    .line 3006
    :cond_9
    const/4 v3, 0x1

    #@ea
    .restart local v3    # "dowim":I
    goto :goto_4

    #@eb
    .line 3014
    :cond_a
    move-object/from16 v0, p0

    #@ed
    move/from16 v1, p2

    #@ef
    invoke-direct {v0, v9, v1}, Ljava/util/GregorianCalendar;->monthLength(II)I

    #@f2
    move-result v11

    #@f3
    add-int/lit8 v12, v3, 0x1

    #@f5
    mul-int/lit8 v12, v12, 0x7

    #@f7
    add-int v8, v11, v12

    #@f9
    .line 3016
    .local v8, "lastDate":I
    int-to-long v12, v8

    #@fa
    add-long/2addr v12, v6

    #@fb
    const-wide/16 v14, 0x1

    #@fd
    sub-long/2addr v12, v14

    #@fe
    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@101
    move-result-wide v6

    #@102
    goto/16 :goto_2

    #@104
    .line 3022
    .end local v2    # "dayOfWeek":I
    .end local v3    # "dowim":I
    .end local v8    # "lastDate":I
    :cond_b
    move-object/from16 v0, p0

    #@106
    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@108
    move/from16 v0, p2

    #@10a
    if-ne v0, v11, :cond_c

    #@10c
    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@10e
    move-object/from16 v0, p1

    #@110
    if-ne v0, v11, :cond_c

    #@112
    .line 3023
    move-object/from16 v0, p0

    #@114
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@116
    cmp-long v11, v6, v12

    #@118
    if-gez v11, :cond_c

    #@11a
    .line 3024
    move-object/from16 v0, p0

    #@11c
    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@11e
    move-object/from16 v0, p0

    #@120
    iget v12, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@122
    if-eq v11, v12, :cond_c

    #@124
    .line 3028
    move-object/from16 v0, p0

    #@126
    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@128
    .line 3031
    :cond_c
    const/4 v11, 0x6

    #@129
    move/from16 v0, p3

    #@12b
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@12e
    move-result v11

    #@12f
    if-eqz v11, :cond_d

    #@131
    .line 3033
    const/4 v11, 0x6

    #@132
    move-object/from16 v0, p0

    #@134
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@137
    move-result v11

    #@138
    int-to-long v12, v11

    #@139
    add-long/2addr v6, v12

    #@13a
    .line 3034
    const-wide/16 v12, 0x1

    #@13c
    sub-long/2addr v6, v12

    #@13d
    goto/16 :goto_2

    #@13f
    .line 3036
    :cond_d
    const-wide/16 v12, 0x6

    #@141
    add-long/2addr v12, v6

    #@142
    .line 3037
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@145
    move-result v11

    #@146
    .line 3036
    invoke-static {v12, v13, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@149
    move-result-wide v4

    #@14a
    .line 3040
    .restart local v4    # "firstDayOfWeek":J
    sub-long v12, v4, v6

    #@14c
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@14f
    move-result v11

    #@150
    int-to-long v14, v11

    #@151
    cmp-long v11, v12, v14

    #@153
    if-ltz v11, :cond_e

    #@155
    .line 3041
    const-wide/16 v12, 0x7

    #@157
    sub-long/2addr v4, v12

    #@158
    .line 3043
    :cond_e
    const/4 v11, 0x7

    #@159
    move/from16 v0, p3

    #@15b
    invoke-static {v0, v11}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@15e
    move-result v11

    #@15f
    if-eqz v11, :cond_f

    #@161
    .line 3044
    const/4 v11, 0x7

    #@162
    move-object/from16 v0, p0

    #@164
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@167
    move-result v2

    #@168
    .line 3045
    .restart local v2    # "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@16b
    move-result v11

    #@16c
    if-eq v2, v11, :cond_f

    #@16e
    .line 3046
    const-wide/16 v12, 0x6

    #@170
    add-long/2addr v12, v4

    #@171
    invoke-static {v12, v13, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@174
    move-result-wide v4

    #@175
    .line 3050
    .end local v2    # "dayOfWeek":I
    :cond_f
    const/4 v11, 0x3

    #@176
    move-object/from16 v0, p0

    #@178
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@17b
    move-result v11

    #@17c
    int-to-long v12, v11

    #@17d
    const-wide/16 v14, 0x1

    #@17f
    sub-long/2addr v12, v14

    #@180
    const-wide/16 v14, 0x7

    #@182
    mul-long/2addr v12, v14

    #@183
    add-long v6, v4, v12

    #@185
    goto/16 :goto_2
.end method

.method private final getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .locals 6
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 3118
    sget-boolean v1, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@3
    if-nez v1, :cond_2

    #@5
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@8
    move-result v1

    #@9
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@b
    if-eq v1, v3, :cond_0

    #@d
    .line 3119
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@10
    move-result v1

    #@11
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@13
    if-ne v1, v3, :cond_1

    #@15
    move v1, v2

    #@16
    .line 3118
    :goto_0
    if-nez v1, :cond_2

    #@18
    new-instance v1, Ljava/lang/AssertionError;

    #@1a
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@1d
    throw v1

    #@1e
    :cond_0
    move v1, v2

    #@1f
    goto :goto_0

    #@20
    .line 3119
    :cond_1
    const/4 v1, 0x0

    #@21
    goto :goto_0

    #@22
    .line 3120
    :cond_2
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@24
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@26
    if-eq v1, v3, :cond_3

    #@28
    .line 3121
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@2a
    cmp-long v1, p2, v4

    #@2c
    if-ltz v1, :cond_3

    #@2e
    .line 3126
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@30
    return-wide v2

    #@31
    .line 3130
    :cond_3
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@34
    move-result-object v0

    #@35
    .line 3131
    .local v0, "jcal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@38
    move-result v1

    #@39
    const/4 v3, 0x0

    #@3a
    invoke-virtual {v0, v1, v2, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@3d
    move-result-wide v2

    #@3e
    return-wide v2
.end method

.method private final getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .locals 10
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    const/4 v5, 0x1

    #@3
    .line 3144
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@5
    if-nez v4, :cond_2

    #@7
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@a
    move-result v4

    #@b
    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@d
    if-eq v4, v6, :cond_0

    #@f
    .line 3145
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@12
    move-result v4

    #@13
    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@15
    if-ne v4, v6, :cond_1

    #@17
    move v4, v5

    #@18
    .line 3144
    :goto_0
    if-nez v4, :cond_2

    #@1a
    new-instance v4, Ljava/lang/AssertionError;

    #@1c
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@1f
    throw v4

    #@20
    :cond_0
    move v4, v5

    #@21
    goto :goto_0

    #@22
    .line 3145
    :cond_1
    const/4 v4, 0x0

    #@23
    goto :goto_0

    #@24
    .line 3146
    :cond_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    #@27
    move-result-object v2

    #@28
    .line 3147
    .local v2, "gCutover":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@2b
    move-result v4

    #@2c
    if-ne v4, v5, :cond_3

    #@2e
    .line 3148
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@31
    move-result v4

    #@32
    if-ne v4, v5, :cond_3

    #@34
    .line 3150
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@37
    move-result v4

    #@38
    int-to-long v4, v4

    #@39
    sub-long v4, p2, v4

    #@3b
    add-long/2addr v4, v8

    #@3c
    return-wide v4

    #@3d
    .line 3155
    :cond_3
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@40
    move-result v4

    #@41
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@44
    move-result v6

    #@45
    if-ne v4, v6, :cond_5

    #@47
    .line 3157
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;

    #@4a
    move-result-object v3

    #@4b
    .line 3158
    .local v3, "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@4d
    iget v6, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@4f
    if-ne v4, v6, :cond_4

    #@51
    .line 3159
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@54
    move-result v4

    #@55
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@58
    move-result v6

    #@59
    if-ne v4, v6, :cond_4

    #@5b
    .line 3161
    sget-object v4, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    #@5d
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@60
    move-result v6

    #@61
    .line 3162
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@64
    move-result v7

    #@65
    .line 3164
    const/4 v8, 0x0

    #@66
    .line 3161
    invoke-virtual {v4, v6, v7, v5, v8}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@69
    move-result-wide v0

    #@6a
    .line 3174
    .end local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    .local v0, "fixedDateMonth1":J
    :goto_1
    return-wide v0

    #@6b
    .line 3167
    .end local v0    # "fixedDateMonth1":J
    .restart local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_4
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@6d
    .restart local v0    # "fixedDateMonth1":J
    goto :goto_1

    #@6e
    .line 3171
    .end local v0    # "fixedDateMonth1":J
    .end local v3    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    :cond_5
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@71
    move-result v4

    #@72
    int-to-long v4, v4

    #@73
    sub-long v4, p2, v4

    #@75
    add-long v0, v4, v8

    #@77
    .restart local v0    # "fixedDateMonth1":J
    goto :goto_1
.end method

.method private final getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;
    .locals 2

    #@0
    .prologue
    .line 3194
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@2
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static final declared-synchronized getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/util/GregorianCalendar;

    #@2
    monitor-enter v1

    #@3
    .line 3080
    :try_start_0
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 3081
    const-string/jumbo v0, "julian"

    #@a
    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lsun/util/calendar/JulianCalendar;

    #@10
    sput-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    #@12
    .line 3082
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    #@14
    invoke-virtual {v0}, Lsun/util/calendar/JulianCalendar;->getEras()[Lsun/util/calendar/Era;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    #@1a
    .line 3084
    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    return-object v0

    #@1e
    :catchall_0
    move-exception v0

    #@1f
    monitor-exit v1

    #@20
    throw v0
.end method

.method private final getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;
    .locals 4

    #@0
    .prologue
    .line 3202
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@2
    const-wide/16 v2, 0x1

    #@4
    sub-long/2addr v0, v2

    #@5
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private final getNormalizedCalendar()Ljava/util/GregorianCalendar;
    .locals 2

    #@0
    .prologue
    .line 3064
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isFullyNormalized()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 3065
    move-object v0, p0

    #@7
    .line 3072
    .local v0, "gc":Ljava/util/GregorianCalendar;
    :goto_0
    return-object v0

    #@8
    .line 3068
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/GregorianCalendar;

    #@e
    .line 3069
    .restart local v0    # "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    #@f
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    #@12
    .line 3070
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    #@15
    goto :goto_0
.end method

.method private static final getRolledValue(IIII)I
    .locals 5
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 3302
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@4
    if-nez v4, :cond_1

    #@6
    if-lt p0, p2, :cond_0

    #@8
    if-gt p0, p3, :cond_0

    #@a
    move v4, v2

    #@b
    :goto_0
    if-nez v4, :cond_1

    #@d
    new-instance v2, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v2

    #@13
    :cond_0
    move v4, v3

    #@14
    goto :goto_0

    #@15
    .line 3303
    :cond_1
    sub-int v4, p3, p2

    #@17
    add-int/lit8 v1, v4, 0x1

    #@19
    .line 3304
    .local v1, "range":I
    rem-int/2addr p1, v1

    #@1a
    .line 3305
    add-int v0, p0, p1

    #@1c
    .line 3306
    .local v0, "n":I
    if-le v0, p3, :cond_3

    #@1e
    .line 3307
    sub-int/2addr v0, v1

    #@1f
    .line 3311
    :cond_2
    :goto_1
    sget-boolean v4, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@21
    if-nez v4, :cond_5

    #@23
    if-lt v0, p2, :cond_4

    #@25
    if-gt v0, p3, :cond_4

    #@27
    :goto_2
    if-nez v2, :cond_5

    #@29
    new-instance v2, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v2

    #@2f
    .line 3308
    :cond_3
    if-ge v0, p2, :cond_2

    #@31
    .line 3309
    add-int/2addr v0, v1

    #@32
    goto :goto_1

    #@33
    :cond_4
    move v2, v3

    #@34
    .line 3311
    goto :goto_2

    #@35
    .line 3312
    :cond_5
    return v0
.end method

.method private final getWeekNumber(JJ)I
    .locals 9
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    #@0
    .prologue
    const/4 v8, 0x7

    #@1
    const/4 v4, 0x0

    #@2
    .line 2556
    sget-object v5, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@4
    const-wide/16 v6, 0x6

    #@6
    add-long/2addr v6, p1

    #@7
    .line 2557
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@a
    move-result v5

    #@b
    .line 2556
    invoke-static {v6, v7, v5}, Lsun/util/calendar/Gregorian;->getDayOfWeekDateOnOrBefore(JI)J

    #@e
    move-result-wide v0

    #@f
    .line 2558
    .local v0, "fixedDay1st":J
    sub-long v6, v0, p1

    #@11
    long-to-int v2, v6

    #@12
    .line 2559
    .local v2, "ndays":I
    sget-boolean v5, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@14
    if-nez v5, :cond_1

    #@16
    if-gt v2, v8, :cond_0

    #@18
    const/4 v4, 0x1

    #@19
    :cond_0
    if-nez v4, :cond_1

    #@1b
    new-instance v4, Ljava/lang/AssertionError;

    #@1d
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@20
    throw v4

    #@21
    .line 2560
    :cond_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@24
    move-result v4

    #@25
    if-lt v2, v4, :cond_2

    #@27
    .line 2561
    const-wide/16 v4, 0x7

    #@29
    sub-long/2addr v0, v4

    #@2a
    .line 2563
    :cond_2
    sub-long v4, p3, v0

    #@2c
    long-to-int v3, v4

    #@2d
    .line 2564
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_3

    #@2f
    .line 2565
    div-int/lit8 v4, v3, 0x7

    #@31
    add-int/lit8 v4, v4, 0x1

    #@33
    return v4

    #@34
    .line 2567
    :cond_3
    invoke-static {v3, v8}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@37
    move-result v4

    #@38
    add-int/lit8 v4, v4, 0x1

    #@3a
    return v4
.end method

.method private final getYearOffsetInMillis()J
    .locals 6

    #@0
    .prologue
    const-wide/16 v4, 0x3c

    #@2
    .line 1936
    const/4 v2, 0x6

    #@3
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@6
    move-result v2

    #@7
    add-int/lit8 v2, v2, -0x1

    #@9
    mul-int/lit8 v2, v2, 0x18

    #@b
    int-to-long v0, v2

    #@c
    .line 1937
    .local v0, "t":J
    const/16 v2, 0xb

    #@e
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@11
    move-result v2

    #@12
    int-to-long v2, v2

    #@13
    add-long/2addr v0, v2

    #@14
    .line 1938
    mul-long/2addr v0, v4

    #@15
    .line 1939
    const/16 v2, 0xc

    #@17
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1a
    move-result v2

    #@1b
    int-to-long v2, v2

    #@1c
    add-long/2addr v0, v2

    #@1d
    .line 1940
    mul-long/2addr v0, v4

    #@1e
    .line 1941
    const/16 v2, 0xd

    #@20
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@23
    move-result v2

    #@24
    int-to-long v2, v2

    #@25
    add-long/2addr v0, v2

    #@26
    .line 1942
    const-wide/16 v2, 0x3e8

    #@28
    mul-long/2addr v0, v2

    #@29
    .line 1943
    const/16 v2, 0xe

    #@2b
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@2e
    move-result v2

    #@2f
    int-to-long v2, v2

    #@30
    add-long/2addr v2, v0

    #@31
    .line 1944
    const/16 v4, 0xf

    #@33
    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@36
    move-result v4

    #@37
    const/16 v5, 0x10

    #@39
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@3c
    move-result v5

    #@3d
    add-int/2addr v4, v5

    #@3e
    int-to-long v4, v4

    #@3f
    .line 1943
    sub-long/2addr v2, v4

    #@40
    return-wide v2
.end method

.method private final internalGetEra()I
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3320
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@a
    move-result v0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private final isCutoverYear(I)Z
    .locals 3
    .param p1, "normalizedYear"    # I

    #@0
    .prologue
    .line 3104
    iget-object v1, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@2
    sget-object v2, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@4
    if-ne v1, v2, :cond_0

    #@6
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@8
    .line 3105
    .local v0, "cutoverYear":I
    :goto_0
    if-ne p1, v0, :cond_1

    #@a
    const/4 v1, 0x1

    #@b
    :goto_1
    return v1

    #@c
    .line 3104
    .end local v0    # "cutoverYear":I
    :cond_0
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@e
    goto :goto_0

    #@f
    .line 3105
    .restart local v0    # "cutoverYear":I
    :cond_1
    const/4 v1, 0x0

    #@10
    goto :goto_1
.end method

.method private final monthLength(I)I
    .locals 2
    .param p1, "month"    # I

    #@0
    .prologue
    .line 3222
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@4
    move-result v0

    #@5
    .line 3223
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 3224
    rsub-int/lit8 v0, v0, 0x1

    #@d
    .line 3226
    :cond_0
    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;->monthLength(II)I

    #@10
    move-result v1

    #@11
    return v1
.end method

.method private final monthLength(II)I
    .locals 1
    .param p1, "month"    # I
    .param p2, "year"    # I

    #@0
    .prologue
    .line 3212
    invoke-virtual {p0, p2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    #@8
    aget v0, v0, p1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    #@d
    aget v0, v0, p1

    #@f
    goto :goto_0
.end method

.method private final pinDayOfMonth()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x5

    #@1
    .line 3276
    const/4 v4, 0x1

    #@2
    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@5
    move-result v3

    #@6
    .line 3278
    .local v3, "year":I
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@8
    if-gt v3, v4, :cond_0

    #@a
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@c
    if-ge v3, v4, :cond_2

    #@e
    .line 3279
    :cond_0
    const/4 v4, 0x2

    #@f
    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@12
    move-result v4

    #@13
    invoke-direct {p0, v4}, Ljava/util/GregorianCalendar;->monthLength(I)I

    #@16
    move-result v2

    #@17
    .line 3284
    .local v2, "monthLen":I
    :goto_0
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1a
    move-result v0

    #@1b
    .line 3285
    .local v0, "dom":I
    if-le v0, v2, :cond_1

    #@1d
    .line 3286
    invoke-virtual {p0, v5, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@20
    .line 3275
    :cond_1
    return-void

    #@21
    .line 3281
    .end local v0    # "dom":I
    .end local v2    # "monthLen":I
    :cond_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    #@24
    move-result-object v1

    #@25
    .line 3282
    .local v1, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@28
    move-result v2

    #@29
    .restart local v2    # "monthLen":I
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 3328
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 3329
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 3330
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@9
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@13
    .line 3331
    const-wide/high16 v0, -0x8000000000000000L

    #@15
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    #@17
    .line 3333
    :cond_0
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@19
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    #@1c
    .line 3327
    return-void
.end method

.method private setGregorianChange(J)V
    .locals 9
    .param p1, "cutoverTime"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x1

    #@2
    .line 756
    iput-wide p1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@4
    .line 757
    const-wide/32 v2, 0x5265c00

    #@7
    invoke-static {p1, p2, v2, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@a
    move-result-wide v2

    #@b
    .line 758
    const-wide/32 v4, 0xaf93b

    #@e
    .line 757
    add-long/2addr v2, v4

    #@f
    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@11
    .line 765
    const-wide v2, 0x7fffffffffffffffL

    #@16
    cmp-long v2, p1, v2

    #@18
    if-nez v2, :cond_0

    #@1a
    .line 766
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@1c
    add-long/2addr v2, v6

    #@1d
    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@1f
    .line 769
    :cond_0
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    #@22
    move-result-object v0

    #@23
    .line 772
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@26
    move-result v2

    #@27
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@29
    .line 774
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@2c
    move-result-object v1

    #@2d
    .line 775
    .local v1, "jcal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@2f
    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@32
    move-result-object v0

    #@33
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@35
    .line 776
    .restart local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@37
    sub-long/2addr v2, v6

    #@38
    invoke-virtual {v1, v0, v2, v3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@3b
    .line 777
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@3e
    move-result v2

    #@3f
    iput v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@41
    .line 779
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    #@43
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@45
    cmp-long v2, v2, v4

    #@47
    if-gez v2, :cond_1

    #@49
    .line 782
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->setUnnormalized()V

    #@4c
    .line 755
    :cond_1
    return-void
.end method

.method private final yearLength()I
    .locals 2

    #@0
    .prologue
    .line 3262
    const/4 v1, 0x1

    #@1
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@4
    move-result v0

    #@5
    .line 3263
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 3264
    rsub-int/lit8 v0, v0, 0x1

    #@d
    .line 3266
    :cond_0
    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;->yearLength(I)I

    #@10
    move-result v1

    #@11
    return v1
.end method

.method private final yearLength(I)I
    .locals 1
    .param p1, "year"    # I

    #@0
    .prologue
    .line 3254
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/16 v0, 0x16e

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/16 v0, 0x16d

    #@b
    goto :goto_0
.end method


# virtual methods
.method public add(II)V
    .locals 24
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    .line 888
    if-nez p2, :cond_0

    #@2
    .line 889
    return-void

    #@3
    .line 892
    :cond_0
    if-ltz p1, :cond_1

    #@5
    const/16 v19, 0xf

    #@7
    move/from16 v0, p1

    #@9
    move/from16 v1, v19

    #@b
    if-lt v0, v1, :cond_2

    #@d
    .line 893
    :cond_1
    new-instance v19, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v19

    #@13
    .line 897
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@16
    .line 899
    const/16 v19, 0x1

    #@18
    move/from16 v0, p1

    #@1a
    move/from16 v1, v19

    #@1c
    if-ne v0, v1, :cond_6

    #@1e
    .line 900
    const/16 v19, 0x1

    #@20
    move-object/from16 v0, p0

    #@22
    move/from16 v1, v19

    #@24
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@27
    move-result v18

    #@28
    .line 901
    .local v18, "year":I
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    #@2b
    move-result v19

    #@2c
    const/16 v20, 0x1

    #@2e
    move/from16 v0, v19

    #@30
    move/from16 v1, v20

    #@32
    if-ne v0, v1, :cond_4

    #@34
    .line 902
    add-int v18, v18, p2

    #@36
    .line 903
    if-lez v18, :cond_3

    #@38
    .line 904
    const/16 v19, 0x1

    #@3a
    move-object/from16 v0, p0

    #@3c
    move/from16 v1, v19

    #@3e
    move/from16 v2, v18

    #@40
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@43
    .line 921
    :goto_0
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    #@46
    .line 885
    .end local v18    # "year":I
    :goto_1
    return-void

    #@47
    .line 906
    .restart local v18    # "year":I
    :cond_3
    rsub-int/lit8 v19, v18, 0x1

    #@49
    const/16 v20, 0x1

    #@4b
    move-object/from16 v0, p0

    #@4d
    move/from16 v1, v20

    #@4f
    move/from16 v2, v19

    #@51
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@54
    .line 908
    const/16 v19, 0x0

    #@56
    const/16 v20, 0x0

    #@58
    move-object/from16 v0, p0

    #@5a
    move/from16 v1, v19

    #@5c
    move/from16 v2, v20

    #@5e
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@61
    goto :goto_0

    #@62
    .line 912
    :cond_4
    sub-int v18, v18, p2

    #@64
    .line 913
    if-lez v18, :cond_5

    #@66
    .line 914
    const/16 v19, 0x1

    #@68
    move-object/from16 v0, p0

    #@6a
    move/from16 v1, v19

    #@6c
    move/from16 v2, v18

    #@6e
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@71
    goto :goto_0

    #@72
    .line 916
    :cond_5
    rsub-int/lit8 v19, v18, 0x1

    #@74
    const/16 v20, 0x1

    #@76
    move-object/from16 v0, p0

    #@78
    move/from16 v1, v20

    #@7a
    move/from16 v2, v19

    #@7c
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@7f
    .line 918
    const/16 v19, 0x0

    #@81
    const/16 v20, 0x1

    #@83
    move-object/from16 v0, p0

    #@85
    move/from16 v1, v19

    #@87
    move/from16 v2, v20

    #@89
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@8c
    goto :goto_0

    #@8d
    .line 922
    .end local v18    # "year":I
    :cond_6
    const/16 v19, 0x2

    #@8f
    move/from16 v0, p1

    #@91
    move/from16 v1, v19

    #@93
    if-ne v0, v1, :cond_e

    #@95
    .line 923
    const/16 v19, 0x2

    #@97
    move-object/from16 v0, p0

    #@99
    move/from16 v1, v19

    #@9b
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@9e
    move-result v19

    #@9f
    add-int v7, v19, p2

    #@a1
    .line 924
    .local v7, "month":I
    const/16 v19, 0x1

    #@a3
    move-object/from16 v0, p0

    #@a5
    move/from16 v1, v19

    #@a7
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@aa
    move-result v18

    #@ab
    .line 927
    .restart local v18    # "year":I
    if-ltz v7, :cond_8

    #@ad
    .line 928
    div-int/lit8 v15, v7, 0xc

    #@af
    .line 932
    .local v15, "y_amount":I
    :goto_2
    if-eqz v15, :cond_7

    #@b1
    .line 933
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    #@b4
    move-result v19

    #@b5
    const/16 v20, 0x1

    #@b7
    move/from16 v0, v19

    #@b9
    move/from16 v1, v20

    #@bb
    if-ne v0, v1, :cond_a

    #@bd
    .line 934
    add-int v18, v18, v15

    #@bf
    .line 935
    if-lez v18, :cond_9

    #@c1
    .line 936
    const/16 v19, 0x1

    #@c3
    move-object/from16 v0, p0

    #@c5
    move/from16 v1, v19

    #@c7
    move/from16 v2, v18

    #@c9
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@cc
    .line 955
    :cond_7
    :goto_3
    if-ltz v7, :cond_c

    #@ce
    .line 956
    rem-int/lit8 v19, v7, 0xc

    #@d0
    const/16 v20, 0x2

    #@d2
    move-object/from16 v0, p0

    #@d4
    move/from16 v1, v20

    #@d6
    move/from16 v2, v19

    #@d8
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@db
    .line 965
    :goto_4
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    #@de
    goto/16 :goto_1

    #@e0
    .line 930
    .end local v15    # "y_amount":I
    :cond_8
    add-int/lit8 v19, v7, 0x1

    #@e2
    div-int/lit8 v19, v19, 0xc

    #@e4
    add-int/lit8 v15, v19, -0x1

    #@e6
    .restart local v15    # "y_amount":I
    goto :goto_2

    #@e7
    .line 938
    :cond_9
    rsub-int/lit8 v19, v18, 0x1

    #@e9
    const/16 v20, 0x1

    #@eb
    move-object/from16 v0, p0

    #@ed
    move/from16 v1, v20

    #@ef
    move/from16 v2, v19

    #@f1
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@f4
    .line 940
    const/16 v19, 0x0

    #@f6
    const/16 v20, 0x0

    #@f8
    move-object/from16 v0, p0

    #@fa
    move/from16 v1, v19

    #@fc
    move/from16 v2, v20

    #@fe
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@101
    goto :goto_3

    #@102
    .line 944
    :cond_a
    sub-int v18, v18, v15

    #@104
    .line 945
    if-lez v18, :cond_b

    #@106
    .line 946
    const/16 v19, 0x1

    #@108
    move-object/from16 v0, p0

    #@10a
    move/from16 v1, v19

    #@10c
    move/from16 v2, v18

    #@10e
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@111
    goto :goto_3

    #@112
    .line 948
    :cond_b
    rsub-int/lit8 v19, v18, 0x1

    #@114
    const/16 v20, 0x1

    #@116
    move-object/from16 v0, p0

    #@118
    move/from16 v1, v20

    #@11a
    move/from16 v2, v19

    #@11c
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@11f
    .line 950
    const/16 v19, 0x0

    #@121
    const/16 v20, 0x1

    #@123
    move-object/from16 v0, p0

    #@125
    move/from16 v1, v19

    #@127
    move/from16 v2, v20

    #@129
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@12c
    goto :goto_3

    #@12d
    .line 959
    :cond_c
    rem-int/lit8 v7, v7, 0xc

    #@12f
    .line 960
    if-gez v7, :cond_d

    #@131
    .line 961
    add-int/lit8 v7, v7, 0xc

    #@133
    .line 963
    :cond_d
    add-int/lit8 v19, v7, 0x0

    #@135
    const/16 v20, 0x2

    #@137
    move-object/from16 v0, p0

    #@139
    move/from16 v1, v20

    #@13b
    move/from16 v2, v19

    #@13d
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@140
    goto :goto_4

    #@141
    .line 966
    .end local v7    # "month":I
    .end local v15    # "y_amount":I
    .end local v18    # "year":I
    :cond_e
    if-nez p1, :cond_11

    #@143
    .line 967
    const/16 v19, 0x0

    #@145
    move-object/from16 v0, p0

    #@147
    move/from16 v1, v19

    #@149
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@14c
    move-result v19

    #@14d
    add-int v6, v19, p2

    #@14f
    .line 968
    .local v6, "era":I
    if-gez v6, :cond_f

    #@151
    .line 969
    const/4 v6, 0x0

    #@152
    .line 971
    :cond_f
    const/16 v19, 0x1

    #@154
    move/from16 v0, v19

    #@156
    if-le v6, v0, :cond_10

    #@158
    .line 972
    const/4 v6, 0x1

    #@159
    .line 974
    :cond_10
    const/16 v19, 0x0

    #@15b
    move-object/from16 v0, p0

    #@15d
    move/from16 v1, v19

    #@15f
    invoke-virtual {v0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    #@162
    goto/16 :goto_1

    #@164
    .line 976
    .end local v6    # "era":I
    :cond_11
    move/from16 v0, p2

    #@166
    int-to-long v4, v0

    #@167
    .line 977
    .local v4, "delta":J
    const-wide/16 v12, 0x0

    #@169
    .line 978
    .local v12, "timeOfDay":J
    packed-switch p1, :pswitch_data_0

    #@16c
    .line 1021
    :goto_5
    :pswitch_0
    const/16 v19, 0xa

    #@16e
    move/from16 v0, p1

    #@170
    move/from16 v1, v19

    #@172
    if-lt v0, v1, :cond_12

    #@174
    .line 1022
    move-object/from16 v0, p0

    #@176
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@178
    move-wide/from16 v20, v0

    #@17a
    add-long v20, v20, v4

    #@17c
    move-object/from16 v0, p0

    #@17e
    move-wide/from16 v1, v20

    #@180
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@183
    .line 1023
    return-void

    #@184
    .line 983
    :pswitch_1
    const-wide/32 v20, 0x36ee80

    #@187
    mul-long v4, v4, v20

    #@189
    .line 984
    goto :goto_5

    #@18a
    .line 987
    :pswitch_2
    const-wide/32 v20, 0xea60

    #@18d
    mul-long v4, v4, v20

    #@18f
    .line 988
    goto :goto_5

    #@190
    .line 991
    :pswitch_3
    const-wide/16 v20, 0x3e8

    #@192
    mul-long v4, v4, v20

    #@194
    .line 992
    goto :goto_5

    #@195
    .line 1003
    :pswitch_4
    const-wide/16 v20, 0x7

    #@197
    mul-long v4, v4, v20

    #@199
    .line 1004
    goto :goto_5

    #@19a
    .line 1014
    :pswitch_5
    div-int/lit8 v19, p2, 0x2

    #@19c
    move/from16 v0, v19

    #@19e
    int-to-long v4, v0

    #@19f
    .line 1015
    rem-int/lit8 v19, p2, 0x2

    #@1a1
    mul-int/lit8 v19, v19, 0xc

    #@1a3
    move/from16 v0, v19

    #@1a5
    int-to-long v12, v0

    #@1a6
    .line 1016
    goto :goto_5

    #@1a7
    .line 1032
    :cond_12
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@1aa
    move-result-wide v8

    #@1ab
    .line 1033
    .local v8, "fd":J
    const/16 v19, 0xb

    #@1ad
    move-object/from16 v0, p0

    #@1af
    move/from16 v1, v19

    #@1b1
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1b4
    move-result v19

    #@1b5
    move/from16 v0, v19

    #@1b7
    int-to-long v0, v0

    #@1b8
    move-wide/from16 v20, v0

    #@1ba
    add-long v12, v12, v20

    #@1bc
    .line 1034
    const-wide/16 v20, 0x3c

    #@1be
    mul-long v12, v12, v20

    #@1c0
    .line 1035
    const/16 v19, 0xc

    #@1c2
    move-object/from16 v0, p0

    #@1c4
    move/from16 v1, v19

    #@1c6
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1c9
    move-result v19

    #@1ca
    move/from16 v0, v19

    #@1cc
    int-to-long v0, v0

    #@1cd
    move-wide/from16 v20, v0

    #@1cf
    add-long v12, v12, v20

    #@1d1
    .line 1036
    const-wide/16 v20, 0x3c

    #@1d3
    mul-long v12, v12, v20

    #@1d5
    .line 1037
    const/16 v19, 0xd

    #@1d7
    move-object/from16 v0, p0

    #@1d9
    move/from16 v1, v19

    #@1db
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1de
    move-result v19

    #@1df
    move/from16 v0, v19

    #@1e1
    int-to-long v0, v0

    #@1e2
    move-wide/from16 v20, v0

    #@1e4
    add-long v12, v12, v20

    #@1e6
    .line 1038
    const-wide/16 v20, 0x3e8

    #@1e8
    mul-long v12, v12, v20

    #@1ea
    .line 1039
    const/16 v19, 0xe

    #@1ec
    move-object/from16 v0, p0

    #@1ee
    move/from16 v1, v19

    #@1f0
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1f3
    move-result v19

    #@1f4
    move/from16 v0, v19

    #@1f6
    int-to-long v0, v0

    #@1f7
    move-wide/from16 v20, v0

    #@1f9
    add-long v12, v12, v20

    #@1fb
    .line 1040
    const-wide/32 v20, 0x5265c00

    #@1fe
    cmp-long v19, v12, v20

    #@200
    if-ltz v19, :cond_14

    #@202
    .line 1041
    const-wide/16 v20, 0x1

    #@204
    add-long v8, v8, v20

    #@206
    .line 1042
    const-wide/32 v20, 0x5265c00

    #@209
    sub-long v12, v12, v20

    #@20b
    .line 1048
    :cond_13
    :goto_6
    add-long/2addr v8, v4

    #@20c
    .line 1051
    const-wide/32 v20, 0xaf93b

    #@20f
    sub-long v20, v8, v20

    #@211
    const-wide/32 v22, 0x5265c00

    #@214
    mul-long v20, v20, v22

    #@216
    add-long v16, v20, v12

    #@218
    .line 1055
    .local v16, "utcTime":J
    const/4 v14, 0x0

    #@219
    .line 1058
    .local v14, "tzMask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@21c
    move-result-object v19

    #@21d
    move-object/from16 v0, p0

    #@21f
    move-wide/from16 v1, v16

    #@221
    move-object/from16 v3, v19

    #@223
    invoke-direct {v0, v14, v1, v2, v3}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    #@226
    move-result-wide v10

    #@227
    .line 1061
    .local v10, "millis":J
    move-object/from16 v0, p0

    #@229
    invoke-virtual {v0, v10, v11}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@22c
    goto/16 :goto_1

    #@22e
    .line 1043
    .end local v10    # "millis":J
    .end local v14    # "tzMask":I
    .end local v16    # "utcTime":J
    :cond_14
    const-wide/16 v20, 0x0

    #@230
    cmp-long v19, v12, v20

    #@232
    if-gez v19, :cond_13

    #@234
    .line 1044
    const-wide/16 v20, 0x1

    #@236
    sub-long v8, v8, v20

    #@238
    .line 1045
    const-wide/32 v20, 0x5265c00

    #@23b
    add-long v12, v12, v20

    #@23d
    goto :goto_6

    #@23e
    .line 978
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1949
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Ljava/util/GregorianCalendar;

    #@7
    .line 1951
    .local v0, "other":Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@9
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    #@f
    iput-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@11
    .line 1952
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 1953
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@17
    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@19
    if-eq v1, v2, :cond_1

    #@1b
    .line 1954
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1d
    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    #@23
    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@25
    .line 1959
    :cond_0
    :goto_0
    iput-object v3, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    #@27
    .line 1960
    iput-object v3, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    #@29
    .line 1961
    return-object v0

    #@2a
    .line 1956
    :cond_1
    iget-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2c
    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@2e
    goto :goto_0
.end method

.method protected computeFields()V
    .locals 5

    #@0
    .prologue
    const v4, 0x1ffff

    #@3
    const/4 v2, 0x0

    #@4
    .line 2240
    const/4 v1, 0x0

    #@5
    .line 2241
    .local v1, "mask":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isPartiallyNormalized()Z

    #@8
    move-result v3

    #@9
    if-eqz v3, :cond_2

    #@b
    .line 2243
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    #@e
    move-result v1

    #@f
    .line 2244
    not-int v3, v1

    #@10
    and-int v0, v3, v4

    #@12
    .line 2247
    .local v0, "fieldMask":I
    if-nez v0, :cond_0

    #@14
    iget-object v3, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@16
    if-nez v3, :cond_3

    #@18
    .line 2249
    :cond_0
    const v3, 0x18000

    #@1b
    and-int/2addr v3, v1

    #@1c
    .line 2248
    invoke-direct {p0, v0, v3}, Ljava/util/GregorianCalendar;->computeFields(II)I

    #@1f
    move-result v3

    #@20
    or-int/2addr v1, v3

    #@21
    .line 2250
    sget-boolean v3, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@23
    if-nez v3, :cond_3

    #@25
    if-ne v1, v4, :cond_1

    #@27
    const/4 v2, 0x1

    #@28
    :cond_1
    if-nez v2, :cond_3

    #@2a
    new-instance v2, Ljava/lang/AssertionError;

    #@2c
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2f
    throw v2

    #@30
    .line 2253
    .end local v0    # "fieldMask":I
    :cond_2
    const v1, 0x1ffff

    #@33
    .line 2254
    invoke-direct {p0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    #@36
    .line 2257
    :cond_3
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    #@39
    .line 2239
    return-void
.end method

.method protected computeTime()V
    .locals 30

    #@0
    .prologue
    .line 2581
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    #@3
    move-result v25

    #@4
    if-nez v25, :cond_3

    #@6
    .line 2582
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    #@a
    move-object/from16 v25, v0

    #@c
    if-nez v25, :cond_0

    #@e
    .line 2583
    const/16 v25, 0x11

    #@10
    move/from16 v0, v25

    #@12
    new-array v0, v0, [I

    #@14
    move-object/from16 v25, v0

    #@16
    move-object/from16 v0, v25

    #@18
    move-object/from16 v1, p0

    #@1a
    iput-object v0, v1, Ljava/util/GregorianCalendar;->originalFields:[I

    #@1c
    .line 2585
    :cond_0
    const/4 v7, 0x0

    #@1d
    .local v7, "field":I
    :goto_0
    const/16 v25, 0x11

    #@1f
    move/from16 v0, v25

    #@21
    if-ge v7, v0, :cond_3

    #@23
    .line 2586
    move-object/from16 v0, p0

    #@25
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@28
    move-result v22

    #@29
    .line 2587
    .local v22, "value":I
    move-object/from16 v0, p0

    #@2b
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    #@2e
    move-result v25

    #@2f
    if-eqz v25, :cond_2

    #@31
    .line 2589
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    #@36
    move-result v25

    #@37
    move/from16 v0, v22

    #@39
    move/from16 v1, v25

    #@3b
    if-lt v0, v1, :cond_1

    #@3d
    move-object/from16 v0, p0

    #@3f
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    #@42
    move-result v25

    #@43
    move/from16 v0, v22

    #@45
    move/from16 v1, v25

    #@47
    if-le v0, v1, :cond_2

    #@49
    .line 2590
    :cond_1
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@4b
    invoke-static {v7}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    #@4e
    move-result-object v26

    #@4f
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@52
    throw v25

    #@53
    .line 2593
    :cond_2
    move-object/from16 v0, p0

    #@55
    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    #@57
    move-object/from16 v25, v0

    #@59
    aput v22, v25, v7

    #@5b
    .line 2585
    add-int/lit8 v7, v7, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 2599
    .end local v7    # "field":I
    .end local v22    # "value":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->selectFields()I

    #@61
    move-result v8

    #@62
    .line 2604
    .local v8, "fieldMask":I
    const/16 v25, 0x1

    #@64
    move-object/from16 v0, p0

    #@66
    move/from16 v1, v25

    #@68
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    #@6b
    move-result v25

    #@6c
    if-eqz v25, :cond_7

    #@6e
    const/16 v25, 0x1

    #@70
    move-object/from16 v0, p0

    #@72
    move/from16 v1, v25

    #@74
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@77
    move-result v23

    #@78
    .line 2606
    .local v23, "year":I
    :goto_1
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    #@7b
    move-result v6

    #@7c
    .line 2607
    .local v6, "era":I
    if-nez v6, :cond_8

    #@7e
    .line 2608
    rsub-int/lit8 v23, v23, 0x1

    #@80
    .line 2618
    :cond_4
    if-gtz v23, :cond_5

    #@82
    const/16 v25, 0x0

    #@84
    move-object/from16 v0, p0

    #@86
    move/from16 v1, v25

    #@88
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isSet(I)Z

    #@8b
    move-result v25

    #@8c
    if-eqz v25, :cond_9

    #@8e
    .line 2626
    :cond_5
    :goto_2
    const/16 v25, 0xb

    #@90
    move/from16 v0, v25

    #@92
    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@95
    move-result v25

    #@96
    if-eqz v25, :cond_a

    #@98
    .line 2627
    const/16 v25, 0xb

    #@9a
    move-object/from16 v0, p0

    #@9c
    move/from16 v1, v25

    #@9e
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@a1
    move-result v25

    #@a2
    move/from16 v0, v25

    #@a4
    int-to-long v0, v0

    #@a5
    move-wide/from16 v26, v0

    #@a7
    .line 2625
    const-wide/16 v28, 0x0

    #@a9
    .line 2627
    add-long v20, v28, v26

    #@ab
    .line 2635
    .local v20, "timeOfDay":J
    :cond_6
    :goto_3
    const-wide/16 v26, 0x3c

    #@ad
    mul-long v20, v20, v26

    #@af
    .line 2636
    const/16 v25, 0xc

    #@b1
    move-object/from16 v0, p0

    #@b3
    move/from16 v1, v25

    #@b5
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@b8
    move-result v25

    #@b9
    move/from16 v0, v25

    #@bb
    int-to-long v0, v0

    #@bc
    move-wide/from16 v26, v0

    #@be
    add-long v20, v20, v26

    #@c0
    .line 2637
    const-wide/16 v26, 0x3c

    #@c2
    mul-long v20, v20, v26

    #@c4
    .line 2638
    const/16 v25, 0xd

    #@c6
    move-object/from16 v0, p0

    #@c8
    move/from16 v1, v25

    #@ca
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@cd
    move-result v25

    #@ce
    move/from16 v0, v25

    #@d0
    int-to-long v0, v0

    #@d1
    move-wide/from16 v26, v0

    #@d3
    add-long v20, v20, v26

    #@d5
    .line 2639
    const-wide/16 v26, 0x3e8

    #@d7
    mul-long v20, v20, v26

    #@d9
    .line 2640
    const/16 v25, 0xe

    #@db
    move-object/from16 v0, p0

    #@dd
    move/from16 v1, v25

    #@df
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@e2
    move-result v25

    #@e3
    move/from16 v0, v25

    #@e5
    int-to-long v0, v0

    #@e6
    move-wide/from16 v26, v0

    #@e8
    add-long v20, v20, v26

    #@ea
    .line 2644
    const-wide/32 v26, 0x5265c00

    #@ed
    div-long v10, v20, v26

    #@ef
    .line 2645
    .local v10, "fixedDate":J
    const-wide/32 v26, 0x5265c00

    #@f2
    rem-long v20, v20, v26

    #@f4
    .line 2646
    :goto_4
    const-wide/16 v26, 0x0

    #@f6
    cmp-long v25, v20, v26

    #@f8
    if-gez v25, :cond_b

    #@fa
    .line 2647
    const-wide/32 v26, 0x5265c00

    #@fd
    add-long v20, v20, v26

    #@ff
    .line 2648
    const-wide/16 v26, 0x1

    #@101
    sub-long v10, v10, v26

    #@103
    goto :goto_4

    #@104
    .line 2604
    .end local v6    # "era":I
    .end local v10    # "fixedDate":J
    .end local v20    # "timeOfDay":J
    .end local v23    # "year":I
    :cond_7
    const/16 v23, 0x7b2

    #@106
    .restart local v23    # "year":I
    goto/16 :goto_1

    #@108
    .line 2609
    .restart local v6    # "era":I
    :cond_8
    const/16 v25, 0x1

    #@10a
    move/from16 v0, v25

    #@10c
    if-eq v6, v0, :cond_4

    #@10e
    .line 2614
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@110
    const-string/jumbo v26, "Invalid era"

    #@113
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@116
    throw v25

    #@117
    .line 2619
    :cond_9
    or-int/lit8 v8, v8, 0x1

    #@119
    .line 2620
    const/16 v25, 0x1

    #@11b
    move-object/from16 v0, p0

    #@11d
    move/from16 v1, v25

    #@11f
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    #@122
    goto/16 :goto_2

    #@124
    .line 2629
    :cond_a
    const/16 v25, 0xa

    #@126
    move-object/from16 v0, p0

    #@128
    move/from16 v1, v25

    #@12a
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@12d
    move-result v25

    #@12e
    move/from16 v0, v25

    #@130
    int-to-long v0, v0

    #@131
    move-wide/from16 v26, v0

    #@133
    .line 2625
    const-wide/16 v28, 0x0

    #@135
    .line 2629
    add-long v20, v28, v26

    #@137
    .line 2631
    .restart local v20    # "timeOfDay":J
    const/16 v25, 0x9

    #@139
    move/from16 v0, v25

    #@13b
    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@13e
    move-result v25

    #@13f
    if-eqz v25, :cond_6

    #@141
    .line 2632
    const/16 v25, 0x9

    #@143
    move-object/from16 v0, p0

    #@145
    move/from16 v1, v25

    #@147
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@14a
    move-result v25

    #@14b
    mul-int/lit8 v25, v25, 0xc

    #@14d
    move/from16 v0, v25

    #@14f
    int-to-long v0, v0

    #@150
    move-wide/from16 v26, v0

    #@152
    add-long v20, v20, v26

    #@154
    goto/16 :goto_3

    #@156
    .line 2654
    .restart local v10    # "fixedDate":J
    :cond_b
    move-object/from16 v0, p0

    #@158
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@15a
    move/from16 v25, v0

    #@15c
    move/from16 v0, v23

    #@15e
    move/from16 v1, v25

    #@160
    if-le v0, v1, :cond_f

    #@162
    move-object/from16 v0, p0

    #@164
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@166
    move/from16 v25, v0

    #@168
    move/from16 v0, v23

    #@16a
    move/from16 v1, v25

    #@16c
    if-le v0, v1, :cond_f

    #@16e
    .line 2655
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@170
    move-object/from16 v0, p0

    #@172
    move-object/from16 v1, v25

    #@174
    move/from16 v2, v23

    #@176
    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    #@179
    move-result-wide v26

    #@17a
    add-long v12, v10, v26

    #@17c
    .line 2656
    .local v12, "gfd":J
    move-object/from16 v0, p0

    #@17e
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@180
    move-wide/from16 v26, v0

    #@182
    cmp-long v25, v12, v26

    #@184
    if-ltz v25, :cond_d

    #@186
    .line 2657
    move-wide v10, v12

    #@187
    .line 2716
    .end local v12    # "gfd":J
    :goto_5
    const-wide/32 v26, 0xaf93b

    #@18a
    sub-long v26, v10, v26

    #@18c
    const-wide/32 v28, 0x5265c00

    #@18f
    mul-long v26, v26, v28

    #@191
    add-long v16, v26, v20

    #@193
    .line 2731
    .local v16, "millis":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@196
    move-result-object v24

    #@197
    .line 2733
    .local v24, "zone":Ljava/util/TimeZone;
    const v25, 0x18000

    #@19a
    and-int v19, v8, v25

    #@19c
    .line 2735
    .local v19, "tzMask":I
    move-object/from16 v0, p0

    #@19e
    move/from16 v1, v19

    #@1a0
    move-wide/from16 v2, v16

    #@1a2
    move-object/from16 v4, v24

    #@1a4
    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    #@1a7
    move-result-wide v16

    #@1a8
    .line 2738
    move-wide/from16 v0, v16

    #@1aa
    move-object/from16 v2, p0

    #@1ac
    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    #@1ae
    .line 2740
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    #@1b1
    move-result v25

    #@1b2
    or-int v25, v25, v8

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    move/from16 v1, v25

    #@1b8
    move/from16 v2, v19

    #@1ba
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    #@1bd
    move-result v9

    #@1be
    .line 2742
    .local v9, "mask":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    #@1c1
    move-result v25

    #@1c2
    if-nez v25, :cond_1b

    #@1c4
    .line 2743
    const/4 v7, 0x0

    #@1c5
    .restart local v7    # "field":I
    :goto_6
    const/16 v25, 0x11

    #@1c7
    move/from16 v0, v25

    #@1c9
    if-ge v7, v0, :cond_1b

    #@1cb
    .line 2744
    move-object/from16 v0, p0

    #@1cd
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    #@1d0
    move-result v25

    #@1d1
    if-nez v25, :cond_1a

    #@1d3
    .line 2743
    :cond_c
    add-int/lit8 v7, v7, 0x1

    #@1d5
    goto :goto_6

    #@1d6
    .line 2660
    .end local v7    # "field":I
    .end local v9    # "mask":I
    .end local v16    # "millis":J
    .end local v19    # "tzMask":I
    .end local v24    # "zone":Ljava/util/TimeZone;
    .restart local v12    # "gfd":J
    :cond_d
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@1d9
    move-result-object v25

    #@1da
    move-object/from16 v0, p0

    #@1dc
    move-object/from16 v1, v25

    #@1de
    move/from16 v2, v23

    #@1e0
    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    #@1e3
    move-result-wide v26

    #@1e4
    add-long v14, v10, v26

    #@1e6
    .line 2677
    .local v14, "jfd":J
    :goto_7
    const/16 v25, 0x6

    #@1e8
    move/from16 v0, v25

    #@1ea
    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@1ed
    move-result v25

    #@1ee
    if-nez v25, :cond_e

    #@1f0
    const/16 v25, 0x3

    #@1f2
    move/from16 v0, v25

    #@1f4
    invoke-static {v8, v0}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    #@1f7
    move-result v25

    #@1f8
    if-eqz v25, :cond_13

    #@1fa
    .line 2678
    :cond_e
    move-object/from16 v0, p0

    #@1fc
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@1fe
    move/from16 v25, v0

    #@200
    move-object/from16 v0, p0

    #@202
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@204
    move/from16 v26, v0

    #@206
    move/from16 v0, v25

    #@208
    move/from16 v1, v26

    #@20a
    if-ne v0, v1, :cond_12

    #@20c
    .line 2679
    move-wide v10, v14

    #@20d
    .line 2680
    goto/16 :goto_5

    #@20f
    .line 2661
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    :cond_f
    move-object/from16 v0, p0

    #@211
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@213
    move/from16 v25, v0

    #@215
    move/from16 v0, v23

    #@217
    move/from16 v1, v25

    #@219
    if-ge v0, v1, :cond_11

    #@21b
    move-object/from16 v0, p0

    #@21d
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@21f
    move/from16 v25, v0

    #@221
    move/from16 v0, v23

    #@223
    move/from16 v1, v25

    #@225
    if-ge v0, v1, :cond_11

    #@227
    .line 2662
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@22a
    move-result-object v25

    #@22b
    move-object/from16 v0, p0

    #@22d
    move-object/from16 v1, v25

    #@22f
    move/from16 v2, v23

    #@231
    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    #@234
    move-result-wide v26

    #@235
    add-long v14, v10, v26

    #@237
    .line 2663
    .restart local v14    # "jfd":J
    move-object/from16 v0, p0

    #@239
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@23b
    move-wide/from16 v26, v0

    #@23d
    cmp-long v25, v14, v26

    #@23f
    if-gez v25, :cond_10

    #@241
    .line 2664
    move-wide v10, v14

    #@242
    .line 2665
    goto/16 :goto_5

    #@244
    .line 2667
    :cond_10
    move-wide v12, v14

    #@245
    .line 2661
    .restart local v12    # "gfd":J
    goto :goto_7

    #@246
    .line 2669
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    :cond_11
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@249
    move-result-object v25

    #@24a
    move-object/from16 v0, p0

    #@24c
    move-object/from16 v1, v25

    #@24e
    move/from16 v2, v23

    #@250
    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    #@253
    move-result-wide v26

    #@254
    add-long v14, v10, v26

    #@256
    .line 2670
    .restart local v14    # "jfd":J
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@258
    move-object/from16 v0, p0

    #@25a
    move-object/from16 v1, v25

    #@25c
    move/from16 v2, v23

    #@25e
    invoke-direct {v0, v1, v2, v8}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    #@261
    move-result-wide v26

    #@262
    add-long v12, v10, v26

    #@264
    .restart local v12    # "gfd":J
    goto :goto_7

    #@265
    .line 2681
    :cond_12
    move-object/from16 v0, p0

    #@267
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@269
    move/from16 v25, v0

    #@26b
    move/from16 v0, v23

    #@26d
    move/from16 v1, v25

    #@26f
    if-ne v0, v1, :cond_13

    #@271
    .line 2682
    move-wide v10, v12

    #@272
    .line 2683
    goto/16 :goto_5

    #@274
    .line 2687
    :cond_13
    move-object/from16 v0, p0

    #@276
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@278
    move-wide/from16 v26, v0

    #@27a
    cmp-long v25, v12, v26

    #@27c
    if-ltz v25, :cond_17

    #@27e
    .line 2688
    move-object/from16 v0, p0

    #@280
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@282
    move-wide/from16 v26, v0

    #@284
    cmp-long v25, v14, v26

    #@286
    if-ltz v25, :cond_14

    #@288
    .line 2689
    move-wide v10, v12

    #@289
    goto/16 :goto_5

    #@28b
    .line 2694
    :cond_14
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@28f
    move-object/from16 v25, v0

    #@291
    sget-object v26, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@293
    move-object/from16 v0, v25

    #@295
    move-object/from16 v1, v26

    #@297
    if-eq v0, v1, :cond_15

    #@299
    move-object/from16 v0, p0

    #@29b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@29d
    move-object/from16 v25, v0

    #@29f
    if-nez v25, :cond_16

    #@2a1
    .line 2695
    :cond_15
    move-wide v10, v12

    #@2a2
    .line 2694
    goto/16 :goto_5

    #@2a4
    .line 2697
    :cond_16
    move-wide v10, v14

    #@2a5
    goto/16 :goto_5

    #@2a7
    .line 2701
    :cond_17
    move-object/from16 v0, p0

    #@2a9
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@2ab
    move-wide/from16 v26, v0

    #@2ad
    cmp-long v25, v14, v26

    #@2af
    if-gez v25, :cond_18

    #@2b1
    .line 2702
    move-wide v10, v14

    #@2b2
    goto/16 :goto_5

    #@2b4
    .line 2705
    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    #@2b7
    move-result v25

    #@2b8
    if-nez v25, :cond_19

    #@2ba
    .line 2706
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@2bc
    const-string/jumbo v26, "the specified date doesn\'t exist"

    #@2bf
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2c2
    throw v25

    #@2c3
    .line 2710
    :cond_19
    move-wide v10, v14

    #@2c4
    goto/16 :goto_5

    #@2c6
    .line 2747
    .end local v12    # "gfd":J
    .end local v14    # "jfd":J
    .restart local v7    # "field":I
    .restart local v9    # "mask":I
    .restart local v16    # "millis":J
    .restart local v19    # "tzMask":I
    .restart local v24    # "zone":Ljava/util/TimeZone;
    :cond_1a
    move-object/from16 v0, p0

    #@2c8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    #@2ca
    move-object/from16 v25, v0

    #@2cc
    aget v25, v25, v7

    #@2ce
    move-object/from16 v0, p0

    #@2d0
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@2d3
    move-result v26

    #@2d4
    move/from16 v0, v25

    #@2d6
    move/from16 v1, v26

    #@2d8
    if-eq v0, v1, :cond_c

    #@2da
    .line 2748
    new-instance v25, Ljava/lang/StringBuilder;

    #@2dc
    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    #@2df
    move-object/from16 v0, p0

    #@2e1
    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    #@2e3
    move-object/from16 v26, v0

    #@2e5
    aget v26, v26, v7

    #@2e7
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2ea
    move-result-object v25

    #@2eb
    const-string/jumbo v26, " -> "

    #@2ee
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f1
    move-result-object v25

    #@2f2
    move-object/from16 v0, p0

    #@2f4
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@2f7
    move-result v26

    #@2f8
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2fb
    move-result-object v25

    #@2fc
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ff
    move-result-object v18

    #@300
    .line 2750
    .local v18, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    #@302
    iget-object v0, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    #@304
    move-object/from16 v25, v0

    #@306
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@30a
    move-object/from16 v26, v0

    #@30c
    move-object/from16 v0, p0

    #@30e
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@310
    move-object/from16 v27, v0

    #@312
    move-object/from16 v0, v27

    #@314
    array-length v0, v0

    #@315
    move/from16 v27, v0

    #@317
    const/16 v28, 0x0

    #@319
    const/16 v29, 0x0

    #@31b
    move-object/from16 v0, v25

    #@31d
    move/from16 v1, v28

    #@31f
    move-object/from16 v2, v26

    #@321
    move/from16 v3, v29

    #@323
    move/from16 v4, v27

    #@325
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@328
    .line 2751
    new-instance v25, Ljava/lang/IllegalArgumentException;

    #@32a
    new-instance v26, Ljava/lang/StringBuilder;

    #@32c
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@32f
    invoke-static {v7}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    #@332
    move-result-object v27

    #@333
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@336
    move-result-object v26

    #@337
    const-string/jumbo v27, ": "

    #@33a
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33d
    move-result-object v26

    #@33e
    move-object/from16 v0, v26

    #@340
    move-object/from16 v1, v18

    #@342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@345
    move-result-object v26

    #@346
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@349
    move-result-object v26

    #@34a
    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34d
    throw v25

    #@34e
    .line 2755
    .end local v7    # "field":I
    .end local v18    # "s":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    #@350
    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->setFieldsNormalized(I)V

    #@353
    .line 2576
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 845
    instance-of v1, p1, Ljava/util/GregorianCalendar;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 846
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v1

    #@9
    .line 845
    if-eqz v1, :cond_0

    #@b
    .line 847
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@d
    check-cast p1, Ljava/util/GregorianCalendar;

    #@f
    .end local p1    # "obj":Ljava/lang/Object;
    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@11
    cmp-long v1, v2, v4

    #@13
    if-nez v1, :cond_0

    #@15
    const/4 v0, 0x1

    #@16
    .line 845
    :cond_0
    return v0
.end method

.method public getActualMaximum(I)I
    .locals 44
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1680
    const v18, 0x1fe81

    #@3
    .line 1683
    .local v18, "fieldsForFixedMax":I
    const/16 v39, 0x1

    #@5
    shl-int v39, v39, p1

    #@7
    const v40, 0x1fe81

    #@a
    and-int v39, v39, v40

    #@c
    if-eqz v39, :cond_0

    #@e
    .line 1684
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    #@11
    move-result v39

    #@12
    return v39

    #@13
    .line 1687
    :cond_0
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    #@16
    move-result-object v19

    #@17
    .line 1688
    .local v19, "gc":Ljava/util/GregorianCalendar;
    move-object/from16 v0, v19

    #@19
    iget-object v12, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1b
    .line 1689
    .local v12, "date":Lsun/util/calendar/BaseCalendar$Date;
    move-object/from16 v0, v19

    #@1d
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@1f
    .line 1690
    .local v6, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@22
    move-result v33

    #@23
    .line 1692
    .local v33, "normalizedYear":I
    const/16 v36, -0x1

    #@25
    .line 1693
    .local v36, "value":I
    packed-switch p1, :pswitch_data_0

    #@28
    .line 1926
    :pswitch_0
    new-instance v39, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2a
    move-object/from16 v0, v39

    #@2c
    move/from16 v1, p1

    #@2e
    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    #@31
    throw v39

    #@32
    .line 1696
    :pswitch_1
    move-object/from16 v0, v19

    #@34
    move/from16 v1, v33

    #@36
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@39
    move-result v39

    #@3a
    if-nez v39, :cond_2

    #@3c
    .line 1697
    const/16 v36, 0xb

    #@3e
    .line 1928
    :cond_1
    :goto_0
    return v36

    #@3f
    .line 1704
    :cond_2
    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@41
    add-int/lit8 v33, v33, 0x1

    #@43
    const/16 v40, 0x1

    #@45
    const/16 v41, 0x1

    #@47
    const/16 v42, 0x0

    #@49
    move-object/from16 v0, v39

    #@4b
    move/from16 v1, v33

    #@4d
    move/from16 v2, v40

    #@4f
    move/from16 v3, v41

    #@51
    move-object/from16 v4, v42

    #@53
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@56
    move-result-wide v34

    #@57
    .line 1705
    .local v34, "nextJan1":J
    move-object/from16 v0, p0

    #@59
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@5b
    move-wide/from16 v40, v0

    #@5d
    cmp-long v39, v34, v40

    #@5f
    if-ltz v39, :cond_2

    #@61
    .line 1706
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    #@64
    move-result-object v10

    #@65
    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    #@67
    .line 1707
    .local v10, "d":Lsun/util/calendar/BaseCalendar$Date;
    const-wide/16 v40, 0x1

    #@69
    sub-long v40, v34, v40

    #@6b
    move-wide/from16 v0, v40

    #@6d
    invoke-virtual {v6, v10, v0, v1}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@70
    .line 1708
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@73
    move-result v39

    #@74
    add-int/lit8 v36, v39, -0x1

    #@76
    goto :goto_0

    #@77
    .line 1714
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v34    # "nextJan1":J
    :pswitch_2
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@7a
    move-result v36

    #@7b
    .line 1715
    move-object/from16 v0, v19

    #@7d
    move/from16 v1, v33

    #@7f
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@82
    move-result v39

    #@83
    if-eqz v39, :cond_1

    #@85
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@88
    move-result v39

    #@89
    move/from16 v0, v39

    #@8b
    move/from16 v1, v36

    #@8d
    if-eq v0, v1, :cond_1

    #@8f
    .line 1720
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@92
    move-result-wide v16

    #@93
    .line 1721
    .local v16, "fd":J
    move-object/from16 v0, p0

    #@95
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@97
    move-wide/from16 v40, v0

    #@99
    cmp-long v39, v16, v40

    #@9b
    if-gez v39, :cond_1

    #@9d
    .line 1724
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    #@a0
    move-result v30

    #@a1
    .line 1725
    .local v30, "monthLength":I
    move-object/from16 v0, v19

    #@a3
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@a5
    move-object/from16 v39, v0

    #@a7
    move-object/from16 v0, v19

    #@a9
    move-object/from16 v1, v39

    #@ab
    move-wide/from16 v2, v16

    #@ad
    invoke-direct {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@b0
    move-result-wide v40

    #@b1
    move/from16 v0, v30

    #@b3
    int-to-long v0, v0

    #@b4
    move-wide/from16 v42, v0

    #@b6
    add-long v40, v40, v42

    #@b8
    const-wide/16 v42, 0x1

    #@ba
    sub-long v28, v40, v42

    #@bc
    .line 1727
    .local v28, "monthEnd":J
    move-object/from16 v0, v19

    #@be
    move-wide/from16 v1, v28

    #@c0
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@c3
    move-result-object v10

    #@c4
    .line 1728
    .restart local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@c7
    move-result v36

    #@c8
    goto/16 :goto_0

    #@ca
    .line 1734
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v16    # "fd":J
    .end local v28    # "monthEnd":J
    .end local v30    # "monthLength":I
    :pswitch_3
    move-object/from16 v0, v19

    #@cc
    move/from16 v1, v33

    #@ce
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@d1
    move-result v39

    #@d2
    if-nez v39, :cond_3

    #@d4
    .line 1735
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    #@d7
    move-result v36

    #@d8
    goto/16 :goto_0

    #@da
    .line 1741
    :cond_3
    move-object/from16 v0, p0

    #@dc
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@de
    move/from16 v39, v0

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@e4
    move/from16 v40, v0

    #@e6
    move/from16 v0, v39

    #@e8
    move/from16 v1, v40

    #@ea
    if-ne v0, v1, :cond_5

    #@ec
    .line 1742
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@ef
    move-result-object v7

    #@f0
    .line 1743
    .local v7, "cocal":Lsun/util/calendar/BaseCalendar;
    const/16 v39, 0x1

    #@f2
    const/16 v40, 0x1

    #@f4
    const/16 v41, 0x0

    #@f6
    move/from16 v0, v33

    #@f8
    move/from16 v1, v39

    #@fa
    move/from16 v2, v40

    #@fc
    move-object/from16 v3, v41

    #@fe
    invoke-virtual {v7, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@101
    move-result-wide v20

    #@102
    .line 1750
    .end local v7    # "cocal":Lsun/util/calendar/BaseCalendar;
    .local v20, "jan1":J
    :goto_1
    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@104
    add-int/lit8 v33, v33, 0x1

    #@106
    const/16 v40, 0x1

    #@108
    const/16 v41, 0x1

    #@10a
    const/16 v42, 0x0

    #@10c
    move-object/from16 v0, v39

    #@10e
    move/from16 v1, v33

    #@110
    move/from16 v2, v40

    #@112
    move/from16 v3, v41

    #@114
    move-object/from16 v4, v42

    #@116
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@119
    move-result-wide v34

    #@11a
    .line 1751
    .restart local v34    # "nextJan1":J
    move-object/from16 v0, p0

    #@11c
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@11e
    move-wide/from16 v40, v0

    #@120
    cmp-long v39, v34, v40

    #@122
    if-gez v39, :cond_4

    #@124
    .line 1752
    move-object/from16 v0, p0

    #@126
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@128
    move-wide/from16 v34, v0

    #@12a
    .line 1754
    :cond_4
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@12c
    if-nez v39, :cond_8

    #@12e
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@131
    move-result v39

    #@132
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@135
    move-result v40

    #@136
    .line 1755
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@139
    move-result v41

    #@13a
    .line 1754
    move/from16 v0, v39

    #@13c
    move/from16 v1, v40

    #@13e
    move/from16 v2, v41

    #@140
    invoke-virtual {v6, v0, v1, v2, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@143
    move-result-wide v40

    #@144
    cmp-long v39, v20, v40

    #@146
    if-gtz v39, :cond_7

    #@148
    const/16 v39, 0x1

    #@14a
    :goto_2
    if-nez v39, :cond_8

    #@14c
    new-instance v39, Ljava/lang/AssertionError;

    #@14e
    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    #@151
    throw v39

    #@152
    .line 1744
    .end local v20    # "jan1":J
    .end local v34    # "nextJan1":J
    :cond_5
    move-object/from16 v0, p0

    #@154
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@156
    move/from16 v39, v0

    #@158
    move/from16 v0, v33

    #@15a
    move/from16 v1, v39

    #@15c
    if-ne v0, v1, :cond_6

    #@15e
    .line 1745
    const/16 v39, 0x1

    #@160
    const/16 v40, 0x1

    #@162
    const/16 v41, 0x0

    #@164
    move/from16 v0, v33

    #@166
    move/from16 v1, v39

    #@168
    move/from16 v2, v40

    #@16a
    move-object/from16 v3, v41

    #@16c
    invoke-virtual {v6, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@16f
    move-result-wide v20

    #@170
    .restart local v20    # "jan1":J
    goto :goto_1

    #@171
    .line 1747
    .end local v20    # "jan1":J
    :cond_6
    move-object/from16 v0, p0

    #@173
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@175
    move-wide/from16 v20, v0

    #@177
    .restart local v20    # "jan1":J
    goto :goto_1

    #@178
    .line 1754
    .restart local v34    # "nextJan1":J
    :cond_7
    const/16 v39, 0x0

    #@17a
    goto :goto_2

    #@17b
    .line 1756
    :cond_8
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@17d
    if-nez v39, :cond_a

    #@17f
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@182
    move-result v39

    #@183
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@186
    move-result v40

    #@187
    .line 1757
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@18a
    move-result v41

    #@18b
    .line 1756
    move/from16 v0, v39

    #@18d
    move/from16 v1, v40

    #@18f
    move/from16 v2, v41

    #@191
    invoke-virtual {v6, v0, v1, v2, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@194
    move-result-wide v40

    #@195
    cmp-long v39, v34, v40

    #@197
    if-ltz v39, :cond_9

    #@199
    const/16 v39, 0x1

    #@19b
    :goto_3
    if-nez v39, :cond_a

    #@19d
    new-instance v39, Ljava/lang/AssertionError;

    #@19f
    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    #@1a2
    throw v39

    #@1a3
    :cond_9
    const/16 v39, 0x0

    #@1a5
    goto :goto_3

    #@1a6
    .line 1758
    :cond_a
    sub-long v40, v34, v20

    #@1a8
    move-wide/from16 v0, v40

    #@1aa
    long-to-int v0, v0

    #@1ab
    move/from16 v36, v0

    #@1ad
    goto/16 :goto_0

    #@1af
    .line 1764
    .end local v20    # "jan1":J
    .end local v34    # "nextJan1":J
    :pswitch_4
    move-object/from16 v0, v19

    #@1b1
    move/from16 v1, v33

    #@1b3
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@1b6
    move-result v39

    #@1b7
    if-nez v39, :cond_d

    #@1b9
    .line 1766
    sget-object v39, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@1bb
    move-object/from16 v0, v39

    #@1bd
    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@1c0
    move-result-object v11

    #@1c1
    .line 1767
    .local v11, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@1c4
    move-result v39

    #@1c5
    const/16 v40, 0x1

    #@1c7
    const/16 v41, 0x1

    #@1c9
    move/from16 v0, v39

    #@1cb
    move/from16 v1, v40

    #@1cd
    move/from16 v2, v41

    #@1cf
    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    #@1d2
    .line 1768
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    #@1d5
    move-result v13

    #@1d6
    .line 1770
    .local v13, "dayOfWeek":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@1d9
    move-result v39

    #@1da
    sub-int v13, v13, v39

    #@1dc
    .line 1771
    if-gez v13, :cond_b

    #@1de
    .line 1772
    add-int/lit8 v13, v13, 0x7

    #@1e0
    .line 1774
    :cond_b
    const/16 v36, 0x34

    #@1e2
    .line 1775
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@1e5
    move-result v39

    #@1e6
    add-int v39, v39, v13

    #@1e8
    add-int/lit8 v23, v39, -0x1

    #@1ea
    .line 1776
    .local v23, "magic":I
    const/16 v39, 0x6

    #@1ec
    move/from16 v0, v23

    #@1ee
    move/from16 v1, v39

    #@1f0
    if-eq v0, v1, :cond_c

    #@1f2
    .line 1777
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    #@1f5
    move-result v39

    #@1f6
    if-eqz v39, :cond_1

    #@1f8
    const/16 v39, 0x5

    #@1fa
    move/from16 v0, v23

    #@1fc
    move/from16 v1, v39

    #@1fe
    if-eq v0, v1, :cond_c

    #@200
    const/16 v39, 0xc

    #@202
    move/from16 v0, v23

    #@204
    move/from16 v1, v39

    #@206
    if-ne v0, v1, :cond_1

    #@208
    .line 1778
    :cond_c
    const/16 v36, 0x35

    #@20a
    goto/16 :goto_0

    #@20c
    .line 1783
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v13    # "dayOfWeek":I
    .end local v23    # "magic":I
    :cond_d
    move-object/from16 v0, v19

    #@20e
    move-object/from16 v1, p0

    #@210
    if-ne v0, v1, :cond_e

    #@212
    .line 1784
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@215
    move-result-object v19

    #@216
    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    #@218
    .line 1786
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_e
    const/16 v39, 0x6

    #@21a
    move-object/from16 v0, p0

    #@21c
    move/from16 v1, v39

    #@21e
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@221
    move-result v24

    #@222
    .line 1787
    .local v24, "maxDayOfYear":I
    const/16 v39, 0x6

    #@224
    move-object/from16 v0, v19

    #@226
    move/from16 v1, v39

    #@228
    move/from16 v2, v24

    #@22a
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@22d
    .line 1788
    const/16 v39, 0x3

    #@22f
    move-object/from16 v0, v19

    #@231
    move/from16 v1, v39

    #@233
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@236
    move-result v36

    #@237
    .line 1789
    const/16 v39, 0x1

    #@239
    move-object/from16 v0, p0

    #@23b
    move/from16 v1, v39

    #@23d
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@240
    move-result v39

    #@241
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getWeekYear()I

    #@244
    move-result v40

    #@245
    move/from16 v0, v39

    #@247
    move/from16 v1, v40

    #@249
    if-eq v0, v1, :cond_1

    #@24b
    .line 1790
    add-int/lit8 v39, v24, -0x7

    #@24d
    const/16 v40, 0x6

    #@24f
    move-object/from16 v0, v19

    #@251
    move/from16 v1, v40

    #@253
    move/from16 v2, v39

    #@255
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@258
    .line 1791
    const/16 v39, 0x3

    #@25a
    move-object/from16 v0, v19

    #@25c
    move/from16 v1, v39

    #@25e
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@261
    move-result v36

    #@262
    goto/16 :goto_0

    #@264
    .line 1798
    .end local v24    # "maxDayOfYear":I
    :pswitch_5
    move-object/from16 v0, v19

    #@266
    move/from16 v1, v33

    #@268
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@26b
    move-result v39

    #@26c
    if-nez v39, :cond_11

    #@26e
    .line 1799
    const/16 v39, 0x0

    #@270
    move-object/from16 v0, v39

    #@272
    invoke-virtual {v6, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@275
    move-result-object v11

    #@276
    .line 1800
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@279
    move-result v39

    #@27a
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@27d
    move-result v40

    #@27e
    const/16 v41, 0x1

    #@280
    move/from16 v0, v39

    #@282
    move/from16 v1, v40

    #@284
    move/from16 v2, v41

    #@286
    invoke-virtual {v11, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    #@289
    .line 1801
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    #@28c
    move-result v13

    #@28d
    .line 1802
    .restart local v13    # "dayOfWeek":I
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@290
    move-result v30

    #@291
    .line 1803
    .restart local v30    # "monthLength":I
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@294
    move-result v39

    #@295
    sub-int v13, v13, v39

    #@297
    .line 1804
    if-gez v13, :cond_f

    #@299
    .line 1805
    add-int/lit8 v13, v13, 0x7

    #@29b
    .line 1807
    :cond_f
    rsub-int/lit8 v31, v13, 0x7

    #@29d
    .line 1808
    .local v31, "nDaysFirstWeek":I
    const/16 v36, 0x3

    #@29f
    .line 1809
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@2a2
    move-result v39

    #@2a3
    move/from16 v0, v31

    #@2a5
    move/from16 v1, v39

    #@2a7
    if-lt v0, v1, :cond_10

    #@2a9
    .line 1810
    const/16 v36, 0x4

    #@2ab
    .line 1812
    :cond_10
    add-int/lit8 v39, v31, 0x15

    #@2ad
    sub-int v30, v30, v39

    #@2af
    .line 1813
    if-lez v30, :cond_1

    #@2b1
    .line 1814
    add-int/lit8 v36, v36, 0x1

    #@2b3
    .line 1815
    const/16 v39, 0x7

    #@2b5
    move/from16 v0, v30

    #@2b7
    move/from16 v1, v39

    #@2b9
    if-le v0, v1, :cond_1

    #@2bb
    .line 1816
    add-int/lit8 v36, v36, 0x1

    #@2bd
    goto/16 :goto_0

    #@2bf
    .line 1823
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v13    # "dayOfWeek":I
    .end local v30    # "monthLength":I
    .end local v31    # "nDaysFirstWeek":I
    :cond_11
    move-object/from16 v0, v19

    #@2c1
    move-object/from16 v1, p0

    #@2c3
    if-ne v0, v1, :cond_12

    #@2c5
    .line 1824
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@2c8
    move-result-object v19

    #@2c9
    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    #@2cb
    .line 1826
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_12
    const/16 v39, 0x1

    #@2cd
    move-object/from16 v0, v19

    #@2cf
    move/from16 v1, v39

    #@2d1
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@2d4
    move-result v38

    #@2d5
    .line 1827
    .local v38, "y":I
    const/16 v39, 0x2

    #@2d7
    move-object/from16 v0, v19

    #@2d9
    move/from16 v1, v39

    #@2db
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@2de
    move-result v22

    #@2df
    .line 1829
    .local v22, "m":I
    :goto_4
    const/16 v39, 0x4

    #@2e1
    move-object/from16 v0, v19

    #@2e3
    move/from16 v1, v39

    #@2e5
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@2e8
    move-result v36

    #@2e9
    .line 1830
    const/16 v39, 0x4

    #@2eb
    const/16 v40, 0x1

    #@2ed
    move-object/from16 v0, v19

    #@2ef
    move/from16 v1, v39

    #@2f1
    move/from16 v2, v40

    #@2f3
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    #@2f6
    .line 1831
    const/16 v39, 0x1

    #@2f8
    move-object/from16 v0, v19

    #@2fa
    move/from16 v1, v39

    #@2fc
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@2ff
    move-result v39

    #@300
    move/from16 v0, v39

    #@302
    move/from16 v1, v38

    #@304
    if-ne v0, v1, :cond_1

    #@306
    const/16 v39, 0x2

    #@308
    move-object/from16 v0, v19

    #@30a
    move/from16 v1, v39

    #@30c
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@30f
    move-result v39

    #@310
    move/from16 v0, v39

    #@312
    move/from16 v1, v22

    #@314
    if-ne v0, v1, :cond_1

    #@316
    goto :goto_4

    #@317
    .line 1839
    .end local v22    # "m":I
    .end local v38    # "y":I
    :pswitch_6
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@31a
    move-result v14

    #@31b
    .line 1840
    .local v14, "dow":I
    move-object/from16 v0, v19

    #@31d
    move/from16 v1, v33

    #@31f
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@322
    move-result v39

    #@323
    if-nez v39, :cond_14

    #@325
    .line 1841
    invoke-virtual {v12}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    #@328
    move-result-object v10

    #@329
    check-cast v10, Lsun/util/calendar/BaseCalendar$Date;

    #@32b
    .line 1842
    .restart local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@32e
    move-result v32

    #@32f
    .line 1843
    .local v32, "ndays":I
    const/16 v39, 0x1

    #@331
    move/from16 v0, v39

    #@333
    invoke-virtual {v10, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@336
    .line 1844
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    #@339
    .line 1845
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@33c
    move-result v15

    #@33d
    .line 1855
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v15, "dow1":I
    :goto_5
    sub-int v37, v14, v15

    #@33f
    .line 1856
    .local v37, "x":I
    if-gez v37, :cond_13

    #@341
    .line 1857
    add-int/lit8 v37, v37, 0x7

    #@343
    .line 1859
    :cond_13
    sub-int v32, v32, v37

    #@345
    .line 1860
    add-int/lit8 v39, v32, 0x6

    #@347
    div-int/lit8 v36, v39, 0x7

    #@349
    goto/16 :goto_0

    #@34b
    .line 1848
    .end local v15    # "dow1":I
    .end local v32    # "ndays":I
    .end local v37    # "x":I
    :cond_14
    move-object/from16 v0, v19

    #@34d
    move-object/from16 v1, p0

    #@34f
    if-ne v0, v1, :cond_15

    #@351
    .line 1849
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@354
    move-result-object v19

    #@355
    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    #@357
    .line 1851
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_15
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    #@35a
    move-result v32

    #@35b
    .line 1852
    .restart local v32    # "ndays":I
    const/16 v39, 0x5

    #@35d
    move-object/from16 v0, v19

    #@35f
    move/from16 v1, v39

    #@361
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    #@364
    move-result v39

    #@365
    const/16 v40, 0x5

    #@367
    move-object/from16 v0, v19

    #@369
    move/from16 v1, v40

    #@36b
    move/from16 v2, v39

    #@36d
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@370
    .line 1853
    const/16 v39, 0x7

    #@372
    move-object/from16 v0, v19

    #@374
    move/from16 v1, v39

    #@376
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@379
    move-result v15

    #@37a
    .restart local v15    # "dow1":I
    goto :goto_5

    #@37b
    .line 1885
    .end local v14    # "dow":I
    .end local v15    # "dow1":I
    .end local v32    # "ndays":I
    :pswitch_7
    move-object/from16 v0, v19

    #@37d
    move-object/from16 v1, p0

    #@37f
    if-ne v0, v1, :cond_16

    #@381
    .line 1886
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@384
    move-result-object v19

    #@385
    .end local v19    # "gc":Ljava/util/GregorianCalendar;
    check-cast v19, Ljava/util/GregorianCalendar;

    #@387
    .line 1893
    .restart local v19    # "gc":Ljava/util/GregorianCalendar;
    :cond_16
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    #@38a
    move-result-wide v8

    #@38b
    .line 1895
    .local v8, "current":J
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->internalGetEra()I

    #@38e
    move-result v39

    #@38f
    const/16 v40, 0x1

    #@391
    move/from16 v0, v39

    #@393
    move/from16 v1, v40

    #@395
    if-ne v0, v1, :cond_17

    #@397
    .line 1896
    const-wide v40, 0x7fffffffffffffffL

    #@39c
    move-object/from16 v0, v19

    #@39e
    move-wide/from16 v1, v40

    #@3a0
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@3a3
    .line 1897
    const/16 v39, 0x1

    #@3a5
    move-object/from16 v0, v19

    #@3a7
    move/from16 v1, v39

    #@3a9
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    #@3ac
    move-result v36

    #@3ad
    .line 1898
    invoke-direct/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    #@3b0
    move-result-wide v26

    #@3b1
    .line 1899
    .local v26, "maxEnd":J
    cmp-long v39, v8, v26

    #@3b3
    if-lez v39, :cond_1

    #@3b5
    .line 1900
    add-int/lit8 v36, v36, -0x1

    #@3b7
    goto/16 :goto_0

    #@3b9
    .line 1903
    .end local v26    # "maxEnd":J
    :cond_17
    invoke-virtual/range {v19 .. v19}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@3bc
    move-result-wide v40

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@3c1
    move-wide/from16 v42, v0

    #@3c3
    cmp-long v39, v40, v42

    #@3c5
    if-ltz v39, :cond_18

    #@3c7
    .line 1904
    sget-object v25, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@3c9
    .line 1905
    .local v25, "mincal":Lsun/util/calendar/CalendarSystem;
    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@3cc
    move-result-object v39

    #@3cd
    const-wide/high16 v40, -0x8000000000000000L

    #@3cf
    move-object/from16 v0, v25

    #@3d1
    move-wide/from16 v1, v40

    #@3d3
    move-object/from16 v3, v39

    #@3d5
    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@3d8
    move-result-object v11

    #@3d9
    .line 1906
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    #@3dc
    move-result-wide v40

    #@3dd
    const-wide/16 v42, 0x1

    #@3df
    sub-long v40, v40, v42

    #@3e1
    const-wide/16 v42, 0x18

    #@3e3
    mul-long v40, v40, v42

    #@3e5
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getHours()I

    #@3e8
    move-result v39

    #@3e9
    move/from16 v0, v39

    #@3eb
    int-to-long v0, v0

    #@3ec
    move-wide/from16 v42, v0

    #@3ee
    add-long v26, v40, v42

    #@3f0
    .line 1907
    .restart local v26    # "maxEnd":J
    const-wide/16 v40, 0x3c

    #@3f2
    mul-long v26, v26, v40

    #@3f4
    .line 1908
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    #@3f7
    move-result v39

    #@3f8
    move/from16 v0, v39

    #@3fa
    int-to-long v0, v0

    #@3fb
    move-wide/from16 v40, v0

    #@3fd
    add-long v26, v26, v40

    #@3ff
    .line 1909
    const-wide/16 v40, 0x3c

    #@401
    mul-long v26, v26, v40

    #@403
    .line 1910
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    #@406
    move-result v39

    #@407
    move/from16 v0, v39

    #@409
    int-to-long v0, v0

    #@40a
    move-wide/from16 v40, v0

    #@40c
    add-long v26, v26, v40

    #@40e
    .line 1911
    const-wide/16 v40, 0x3e8

    #@410
    mul-long v26, v26, v40

    #@412
    .line 1912
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMillis()I

    #@415
    move-result v39

    #@416
    move/from16 v0, v39

    #@418
    int-to-long v0, v0

    #@419
    move-wide/from16 v40, v0

    #@41b
    add-long v26, v26, v40

    #@41d
    .line 1913
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getYear()I

    #@420
    move-result v36

    #@421
    .line 1914
    if-gtz v36, :cond_1b

    #@423
    .line 1915
    sget-boolean v39, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@425
    if-nez v39, :cond_1a

    #@427
    sget-object v39, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@429
    move-object/from16 v0, v25

    #@42b
    move-object/from16 v1, v39

    #@42d
    if-ne v0, v1, :cond_19

    #@42f
    const/16 v39, 0x1

    #@431
    :goto_7
    if-nez v39, :cond_1a

    #@433
    new-instance v39, Ljava/lang/AssertionError;

    #@435
    invoke-direct/range {v39 .. v39}, Ljava/lang/AssertionError;-><init>()V

    #@438
    throw v39

    #@439
    .line 1904
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .end local v25    # "mincal":Lsun/util/calendar/CalendarSystem;
    .end local v26    # "maxEnd":J
    :cond_18
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@43c
    move-result-object v25

    #@43d
    .restart local v25    # "mincal":Lsun/util/calendar/CalendarSystem;
    goto :goto_6

    #@43e
    .line 1915
    .restart local v11    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v26    # "maxEnd":J
    :cond_19
    const/16 v39, 0x0

    #@440
    goto :goto_7

    #@441
    .line 1916
    :cond_1a
    rsub-int/lit8 v36, v36, 0x1

    #@443
    .line 1918
    :cond_1b
    cmp-long v39, v8, v26

    #@445
    if-gez v39, :cond_1

    #@447
    .line 1919
    add-int/lit8 v36, v36, -0x1

    #@449
    goto/16 :goto_0

    #@44b
    .line 1693
    nop

    #@44c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 8
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1637
    const/4 v5, 0x5

    #@1
    if-ne p1, v5, :cond_1

    #@3
    .line 1638
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    #@6
    move-result-object v1

    #@7
    .line 1639
    .local v1, "gc":Ljava/util/GregorianCalendar;
    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@9
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@c
    move-result v4

    #@d
    .line 1640
    .local v4, "year":I
    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@f
    if-eq v4, v5, :cond_0

    #@11
    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@13
    if-ne v4, v5, :cond_1

    #@15
    .line 1641
    :cond_0
    iget-object v5, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@17
    iget-object v6, v1, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@19
    iget-object v7, v1, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1b
    invoke-virtual {v6, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    #@1e
    move-result-wide v6

    #@1f
    invoke-direct {p0, v5, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@22
    move-result-wide v2

    #@23
    .line 1642
    .local v2, "month1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@26
    move-result-object v0

    #@27
    .line 1643
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@2a
    move-result v5

    #@2b
    return v5

    #@2c
    .line 1646
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "gc":Ljava/util/GregorianCalendar;
    .end local v2    # "month1":J
    .end local v4    # "year":I
    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    #@2f
    move-result v5

    #@30
    return v5
.end method

.method public getGreatestMinimum(I)I
    .locals 6
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1559
    const/4 v1, 0x5

    #@1
    if-ne p1, v1, :cond_0

    #@3
    .line 1560
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    #@6
    move-result-object v0

    #@7
    .line 1561
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@9
    invoke-direct {p0, v0, v4, v5}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@c
    move-result-wide v2

    #@d
    .line 1562
    .local v2, "mon1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@10
    move-result-object v0

    #@11
    .line 1563
    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    #@13
    aget v1, v1, p1

    #@15
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@18
    move-result v4

    #@19
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    #@1c
    move-result v1

    #@1d
    return v1

    #@1e
    .line 1565
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v2    # "mon1":J
    :cond_0
    sget-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    #@20
    aget v1, v1, p1

    #@22
    return v1
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 795
    new-instance v0, Ljava/util/Date;

    #@2
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@7
    return-object v0
.end method

.method public getLeastMaximum(I)I
    .locals 8
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1588
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1606
    :pswitch_0
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    #@5
    aget v3, v3, p1

    #@7
    return v3

    #@8
    .line 1597
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/util/GregorianCalendar;

    #@e
    .line 1598
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v3, 0x1

    #@f
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    #@12
    .line 1599
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@14
    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@17
    .line 1600
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@1a
    move-result v1

    #@1b
    .line 1601
    .local v1, "v1":I
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@1d
    const-wide/16 v6, 0x1

    #@1f
    sub-long/2addr v4, v6

    #@20
    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@23
    .line 1602
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@26
    move-result v2

    #@27
    .line 1603
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    #@29
    aget v3, v3, p1

    #@2b
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    #@2e
    move-result v4

    #@2f
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    #@32
    move-result v3

    #@33
    return v3

    #@34
    .line 1588
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMaximum(I)I
    .locals 8
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1511
    packed-switch p1, :pswitch_data_0

    #@3
    .line 1536
    :cond_0
    :pswitch_0
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    #@5
    aget v3, v3, p1

    #@7
    return v3

    #@8
    .line 1523
    :pswitch_1
    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@a
    const/16 v4, 0xc8

    #@c
    if-gt v3, v4, :cond_0

    #@e
    .line 1527
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/util/GregorianCalendar;

    #@14
    .line 1528
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v3, 0x1

    #@15
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    #@18
    .line 1529
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@1a
    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@1d
    .line 1530
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@20
    move-result v1

    #@21
    .line 1531
    .local v1, "v1":I
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@23
    const-wide/16 v6, 0x1

    #@25
    sub-long/2addr v4, v6

    #@26
    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@29
    .line 1532
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@2c
    move-result v2

    #@2d
    .line 1533
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    #@2f
    aget v3, v3, p1

    #@31
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    #@34
    move-result v4

    #@35
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@38
    move-result v3

    #@39
    return v3

    #@3a
    .line 1511
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1488
    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 3

    #@0
    .prologue
    .line 1965
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    .line 1967
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@6
    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@9
    .line 1968
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@b
    if-eqz v1, :cond_0

    #@d
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@f
    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@11
    if-eq v1, v2, :cond_0

    #@13
    .line 1969
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@15
    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@18
    .line 1971
    :cond_0
    return-object v0
.end method

.method public getWeekYear()I
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x7

    #@1
    const/4 v13, 0x1

    #@2
    const/4 v12, 0x6

    #@3
    .line 2022
    invoke-virtual {p0, v13}, Ljava/util/GregorianCalendar;->get(I)I

    #@6
    move-result v9

    #@7
    .line 2023
    .local v9, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    #@a
    move-result v10

    #@b
    if-nez v10, :cond_0

    #@d
    .line 2024
    rsub-int/lit8 v9, v9, 0x1

    #@f
    .line 2029
    :cond_0
    iget v10, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@11
    add-int/lit8 v10, v10, 0x1

    #@13
    if-le v9, v10, :cond_3

    #@15
    .line 2030
    const/4 v10, 0x3

    #@16
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@19
    move-result v8

    #@1a
    .line 2031
    .local v8, "weekOfYear":I
    const/4 v10, 0x2

    #@1b
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1e
    move-result v10

    #@1f
    if-nez v10, :cond_2

    #@21
    .line 2032
    const/16 v10, 0x34

    #@23
    if-lt v8, v10, :cond_1

    #@25
    .line 2033
    add-int/lit8 v9, v9, -0x1

    #@27
    .line 2040
    :cond_1
    :goto_0
    return v9

    #@28
    .line 2036
    :cond_2
    if-ne v8, v13, :cond_1

    #@2a
    .line 2037
    add-int/lit8 v9, v9, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 2044
    .end local v8    # "weekOfYear":I
    :cond_3
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@30
    move-result v1

    #@31
    .line 2045
    .local v1, "dayOfYear":I
    invoke-virtual {p0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@34
    move-result v5

    #@35
    .line 2046
    .local v5, "maxDayOfYear":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@38
    move-result v7

    #@39
    .line 2050
    .local v7, "minimalDays":I
    if-le v1, v7, :cond_4

    #@3b
    add-int/lit8 v10, v5, -0x6

    #@3d
    if-ge v1, v10, :cond_4

    #@3f
    .line 2051
    return v9

    #@40
    .line 2055
    :cond_4
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@43
    move-result-object v0

    #@44
    check-cast v0, Ljava/util/GregorianCalendar;

    #@46
    .line 2056
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    #@49
    .line 2059
    const-string/jumbo v10, "GMT"

    #@4c
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@4f
    move-result-object v10

    #@50
    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@53
    .line 2061
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    #@56
    .line 2062
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    #@59
    .line 2065
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@5c
    move-result v10

    #@5d
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    #@60
    move-result v11

    #@61
    sub-int v4, v10, v11

    #@63
    .line 2066
    .local v4, "delta":I
    if-eqz v4, :cond_6

    #@65
    .line 2067
    if-gez v4, :cond_5

    #@67
    .line 2068
    add-int/lit8 v4, v4, 0x7

    #@69
    .line 2070
    :cond_5
    invoke-virtual {v0, v12, v4}, Ljava/util/GregorianCalendar;->add(II)V

    #@6c
    .line 2072
    :cond_6
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    #@6f
    move-result v6

    #@70
    .line 2073
    .local v6, "minDayOfYear":I
    if-ge v1, v6, :cond_8

    #@72
    .line 2074
    if-gt v6, v7, :cond_7

    #@74
    .line 2075
    add-int/lit8 v9, v9, -0x1

    #@76
    .line 2099
    :cond_7
    :goto_1
    return v9

    #@77
    .line 2078
    :cond_8
    add-int/lit8 v10, v9, 0x1

    #@79
    invoke-virtual {v0, v13, v10}, Ljava/util/GregorianCalendar;->set(II)V

    #@7c
    .line 2079
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    #@7f
    .line 2080
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    #@82
    .line 2081
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@85
    move-result v10

    #@86
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->get(I)I

    #@89
    move-result v11

    #@8a
    sub-int v3, v10, v11

    #@8c
    .line 2082
    .local v3, "del":I
    if-eqz v3, :cond_a

    #@8e
    .line 2083
    if-gez v3, :cond_9

    #@90
    .line 2084
    add-int/lit8 v3, v3, 0x7

    #@92
    .line 2086
    :cond_9
    invoke-virtual {v0, v12, v3}, Ljava/util/GregorianCalendar;->add(II)V

    #@95
    .line 2088
    :cond_a
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->get(I)I

    #@98
    move-result v10

    #@99
    add-int/lit8 v6, v10, -0x1

    #@9b
    .line 2089
    if-nez v6, :cond_b

    #@9d
    .line 2090
    const/4 v6, 0x7

    #@9e
    .line 2092
    :cond_b
    if-lt v6, v7, :cond_7

    #@a0
    .line 2093
    sub-int v10, v5, v1

    #@a2
    add-int/lit8 v2, v10, 0x1

    #@a4
    .line 2094
    .local v2, "days":I
    rsub-int/lit8 v10, v6, 0x7

    #@a6
    if-gt v2, v10, :cond_7

    #@a8
    .line 2095
    add-int/lit8 v9, v9, 0x1

    #@aa
    goto :goto_1
.end method

.method public getWeeksInWeekYear()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 2205
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    #@4
    move-result-object v0

    #@5
    .line 2206
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    #@8
    move-result v1

    #@9
    .line 2207
    .local v1, "weekYear":I
    const/4 v2, 0x1

    #@a
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@d
    move-result v2

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 2208
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@13
    move-result v2

    #@14
    return v2

    #@15
    .line 2212
    :cond_0
    if-ne v0, p0, :cond_1

    #@17
    .line 2213
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    check-cast v0, Ljava/util/GregorianCalendar;

    #@1d
    .line 2215
    .restart local v0    # "gc":Ljava/util/GregorianCalendar;
    :cond_1
    const/4 v2, 0x7

    #@1e
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@21
    move-result v2

    #@22
    const/4 v3, 0x2

    #@23
    invoke-virtual {v0, v1, v3, v2}, Ljava/util/GregorianCalendar;->setWeekDate(III)V

    #@26
    .line 2216
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@29
    move-result v2

    #@2a
    return v2
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 854
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    #@3
    move-result v0

    #@4
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@6
    long-to-int v1, v2

    #@7
    xor-int/2addr v0, v1

    #@8
    return v0
.end method

.method public isLeapYear(I)Z
    .locals 6
    .param p1, "year"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 808
    and-int/lit8 v4, p1, 0x3

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 809
    return v3

    #@7
    .line 812
    :cond_0
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@9
    if-le p1, v4, :cond_3

    #@b
    .line 813
    rem-int/lit8 v4, p1, 0x64

    #@d
    if-nez v4, :cond_1

    #@f
    rem-int/lit16 v4, p1, 0x190

    #@11
    if-nez v4, :cond_2

    #@13
    :cond_1
    :goto_0
    return v2

    #@14
    :cond_2
    move v2, v3

    #@15
    goto :goto_0

    #@16
    .line 815
    :cond_3
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@18
    if-ge p1, v4, :cond_4

    #@1a
    .line 816
    return v2

    #@1b
    .line 821
    :cond_4
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@1d
    iget v5, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@1f
    if-ne v4, v5, :cond_7

    #@21
    .line 822
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@23
    invoke-direct {p0, v4, v5}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@26
    move-result-object v0

    #@27
    .line 823
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@2a
    move-result v4

    #@2b
    const/4 v5, 0x3

    #@2c
    if-ge v4, v5, :cond_6

    #@2e
    const/4 v1, 0x1

    #@2f
    .line 827
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v1, "gregorian":Z
    :goto_1
    if-eqz v1, :cond_5

    #@31
    rem-int/lit8 v4, p1, 0x64

    #@33
    if-nez v4, :cond_5

    #@35
    rem-int/lit16 v4, p1, 0x190

    #@37
    if-nez v4, :cond_9

    #@39
    :cond_5
    :goto_2
    return v2

    #@3a
    .line 823
    .end local v1    # "gregorian":Z
    .restart local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_6
    const/4 v1, 0x0

    #@3b
    .restart local v1    # "gregorian":Z
    goto :goto_1

    #@3c
    .line 825
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "gregorian":Z
    :cond_7
    iget v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@3e
    if-ne p1, v4, :cond_8

    #@40
    const/4 v1, 0x1

    #@41
    .restart local v1    # "gregorian":Z
    goto :goto_1

    #@42
    .end local v1    # "gregorian":Z
    :cond_8
    const/4 v1, 0x0

    #@43
    .restart local v1    # "gregorian":Z
    goto :goto_1

    #@44
    :cond_9
    move v2, v3

    #@45
    .line 827
    goto :goto_2
.end method

.method public final isWeekDateSupported()Z
    .locals 1

    #@0
    .prologue
    .line 1995
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public roll(II)V
    .locals 48
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    .line 1134
    if-nez p2, :cond_0

    #@2
    .line 1135
    return-void

    #@3
    .line 1138
    :cond_0
    if-ltz p1, :cond_1

    #@5
    const/16 v43, 0xf

    #@7
    move/from16 v0, p1

    #@9
    move/from16 v1, v43

    #@b
    if-lt v0, v1, :cond_2

    #@d
    .line 1139
    :cond_1
    new-instance v43, Ljava/lang/IllegalArgumentException;

    #@f
    invoke-direct/range {v43 .. v43}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12
    throw v43

    #@13
    .line 1143
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@16
    .line 1145
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    #@19
    move-result v23

    #@1a
    .line 1146
    .local v23, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    #@1d
    move-result v22

    #@1e
    .line 1148
    .local v22, "max":I
    packed-switch p1, :pswitch_data_0

    #@21
    .line 1465
    :cond_3
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@24
    move-result v43

    #@25
    move/from16 v0, v43

    #@27
    move/from16 v1, p2

    #@29
    move/from16 v2, v23

    #@2b
    move/from16 v3, v22

    #@2d
    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    #@30
    move-result v43

    #@31
    move-object/from16 v0, p0

    #@33
    move/from16 v1, p1

    #@35
    move/from16 v2, v43

    #@37
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@3a
    .line 1131
    return-void

    #@3b
    .line 1164
    :pswitch_1
    add-int/lit8 v35, v22, 0x1

    #@3d
    .line 1165
    .local v35, "unit":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@40
    move-result v16

    #@41
    .line 1166
    .local v16, "h":I
    add-int v43, v16, p2

    #@43
    rem-int v31, v43, v35

    #@45
    .line 1167
    .local v31, "nh":I
    if-gez v31, :cond_4

    #@47
    .line 1168
    add-int v31, v31, v35

    #@49
    .line 1170
    :cond_4
    move-object/from16 v0, p0

    #@4b
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@4d
    move-wide/from16 v44, v0

    #@4f
    sub-int v43, v31, v16

    #@51
    const v46, 0x36ee80

    #@54
    mul-int v43, v43, v46

    #@56
    move/from16 v0, v43

    #@58
    int-to-long v0, v0

    #@59
    move-wide/from16 v46, v0

    #@5b
    add-long v44, v44, v46

    #@5d
    move-wide/from16 v0, v44

    #@5f
    move-object/from16 v2, p0

    #@61
    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    #@63
    .line 1176
    move-object/from16 v0, p0

    #@65
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@67
    move-object/from16 v43, v0

    #@69
    move-object/from16 v0, p0

    #@6b
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@6d
    move-wide/from16 v44, v0

    #@6f
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    #@72
    move-result-object v46

    #@73
    invoke-virtual/range {v43 .. v46}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@76
    move-result-object v6

    #@77
    .line 1177
    .local v6, "d":Lsun/util/calendar/CalendarDate;
    const/16 v43, 0x5

    #@79
    move-object/from16 v0, p0

    #@7b
    move/from16 v1, v43

    #@7d
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@80
    move-result v43

    #@81
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    #@84
    move-result v44

    #@85
    move/from16 v0, v43

    #@87
    move/from16 v1, v44

    #@89
    if-eq v0, v1, :cond_8

    #@8b
    .line 1178
    const/16 v43, 0x1

    #@8d
    move-object/from16 v0, p0

    #@8f
    move/from16 v1, v43

    #@91
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@94
    move-result v43

    #@95
    .line 1179
    const/16 v44, 0x2

    #@97
    move-object/from16 v0, p0

    #@99
    move/from16 v1, v44

    #@9b
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@9e
    move-result v44

    #@9f
    add-int/lit8 v44, v44, 0x1

    #@a1
    .line 1180
    const/16 v45, 0x5

    #@a3
    move-object/from16 v0, p0

    #@a5
    move/from16 v1, v45

    #@a7
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@aa
    move-result v45

    #@ab
    .line 1178
    move/from16 v0, v43

    #@ad
    move/from16 v1, v44

    #@af
    move/from16 v2, v45

    #@b1
    invoke-virtual {v6, v0, v1, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    #@b4
    .line 1181
    const/16 v43, 0xa

    #@b6
    move/from16 v0, p1

    #@b8
    move/from16 v1, v43

    #@ba
    if-ne v0, v1, :cond_7

    #@bc
    .line 1182
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@be
    if-nez v43, :cond_6

    #@c0
    const/16 v43, 0x9

    #@c2
    move-object/from16 v0, p0

    #@c4
    move/from16 v1, v43

    #@c6
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@c9
    move-result v43

    #@ca
    const/16 v44, 0x1

    #@cc
    move/from16 v0, v43

    #@ce
    move/from16 v1, v44

    #@d0
    if-ne v0, v1, :cond_5

    #@d2
    const/16 v43, 0x1

    #@d4
    :goto_1
    if-nez v43, :cond_6

    #@d6
    new-instance v43, Ljava/lang/AssertionError;

    #@d8
    invoke-direct/range {v43 .. v43}, Ljava/lang/AssertionError;-><init>()V

    #@db
    throw v43

    #@dc
    :cond_5
    const/16 v43, 0x0

    #@de
    goto :goto_1

    #@df
    .line 1183
    :cond_6
    const/16 v43, 0xc

    #@e1
    move/from16 v0, v43

    #@e3
    invoke-virtual {v6, v0}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    #@e6
    .line 1185
    :cond_7
    move-object/from16 v0, p0

    #@e8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@ea
    move-object/from16 v43, v0

    #@ec
    move-object/from16 v0, v43

    #@ee
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@f1
    move-result-wide v44

    #@f2
    move-wide/from16 v0, v44

    #@f4
    move-object/from16 v2, p0

    #@f6
    iput-wide v0, v2, Ljava/util/GregorianCalendar;->time:J

    #@f8
    .line 1187
    :cond_8
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getHours()I

    #@fb
    move-result v17

    #@fc
    .line 1188
    .local v17, "hourOfDay":I
    rem-int v43, v17, v35

    #@fe
    move-object/from16 v0, p0

    #@100
    move/from16 v1, p1

    #@102
    move/from16 v2, v43

    #@104
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@107
    .line 1189
    const/16 v43, 0xa

    #@109
    move/from16 v0, p1

    #@10b
    move/from16 v1, v43

    #@10d
    if-ne v0, v1, :cond_9

    #@10f
    .line 1190
    const/16 v43, 0xb

    #@111
    move-object/from16 v0, p0

    #@113
    move/from16 v1, v43

    #@115
    move/from16 v2, v17

    #@117
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@11a
    .line 1197
    :goto_2
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    #@11d
    move-result v42

    #@11e
    .line 1198
    .local v42, "zoneOffset":I
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    #@121
    move-result v34

    #@122
    .line 1199
    .local v34, "saving":I
    sub-int v43, v42, v34

    #@124
    const/16 v44, 0xf

    #@126
    move-object/from16 v0, p0

    #@128
    move/from16 v1, v44

    #@12a
    move/from16 v2, v43

    #@12c
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@12f
    .line 1200
    const/16 v43, 0x10

    #@131
    move-object/from16 v0, p0

    #@133
    move/from16 v1, v43

    #@135
    move/from16 v2, v34

    #@137
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@13a
    .line 1201
    return-void

    #@13b
    .line 1192
    .end local v34    # "saving":I
    .end local v42    # "zoneOffset":I
    :cond_9
    div-int/lit8 v43, v17, 0xc

    #@13d
    const/16 v44, 0x9

    #@13f
    move-object/from16 v0, p0

    #@141
    move/from16 v1, v44

    #@143
    move/from16 v2, v43

    #@145
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@148
    .line 1193
    rem-int/lit8 v43, v17, 0xc

    #@14a
    const/16 v44, 0xa

    #@14c
    move-object/from16 v0, p0

    #@14e
    move/from16 v1, v44

    #@150
    move/from16 v2, v43

    #@152
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@155
    goto :goto_2

    #@156
    .line 1210
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local v16    # "h":I
    .end local v17    # "hourOfDay":I
    .end local v31    # "nh":I
    .end local v35    # "unit":I
    :pswitch_2
    move-object/from16 v0, p0

    #@158
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@15a
    move-object/from16 v43, v0

    #@15c
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@15f
    move-result v43

    #@160
    move-object/from16 v0, p0

    #@162
    move/from16 v1, v43

    #@164
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@167
    move-result v43

    #@168
    if-nez v43, :cond_c

    #@16a
    .line 1211
    const/16 v43, 0x2

    #@16c
    move-object/from16 v0, p0

    #@16e
    move/from16 v1, v43

    #@170
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@173
    move-result v43

    #@174
    add-int v43, v43, p2

    #@176
    rem-int/lit8 v24, v43, 0xc

    #@178
    .line 1212
    .local v24, "mon":I
    if-gez v24, :cond_a

    #@17a
    .line 1213
    add-int/lit8 v24, v24, 0xc

    #@17c
    .line 1215
    :cond_a
    const/16 v43, 0x2

    #@17e
    move-object/from16 v0, p0

    #@180
    move/from16 v1, v43

    #@182
    move/from16 v2, v24

    #@184
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@187
    .line 1220
    move-object/from16 v0, p0

    #@189
    move/from16 v1, v24

    #@18b
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->monthLength(I)I

    #@18e
    move-result v25

    #@18f
    .line 1221
    .local v25, "monthLen":I
    const/16 v43, 0x5

    #@191
    move-object/from16 v0, p0

    #@193
    move/from16 v1, v43

    #@195
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@198
    move-result v43

    #@199
    move/from16 v0, v43

    #@19b
    move/from16 v1, v25

    #@19d
    if-le v0, v1, :cond_b

    #@19f
    .line 1222
    const/16 v43, 0x5

    #@1a1
    move-object/from16 v0, p0

    #@1a3
    move/from16 v1, v43

    #@1a5
    move/from16 v2, v25

    #@1a7
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@1aa
    .line 1238
    :cond_b
    :goto_3
    return-void

    #@1ab
    .line 1227
    .end local v24    # "mon":I
    .end local v25    # "monthLen":I
    :cond_c
    const/16 v43, 0x2

    #@1ad
    move-object/from16 v0, p0

    #@1af
    move/from16 v1, v43

    #@1b1
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@1b4
    move-result v43

    #@1b5
    add-int/lit8 v41, v43, 0x1

    #@1b7
    .line 1228
    .local v41, "yearLength":I
    const/16 v43, 0x2

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    move/from16 v1, v43

    #@1bd
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1c0
    move-result v43

    #@1c1
    add-int v43, v43, p2

    #@1c3
    rem-int v24, v43, v41

    #@1c5
    .line 1229
    .restart local v24    # "mon":I
    if-gez v24, :cond_d

    #@1c7
    .line 1230
    add-int v24, v24, v41

    #@1c9
    .line 1232
    :cond_d
    const/16 v43, 0x2

    #@1cb
    move-object/from16 v0, p0

    #@1cd
    move/from16 v1, v43

    #@1cf
    move/from16 v2, v24

    #@1d1
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@1d4
    .line 1233
    const/16 v43, 0x5

    #@1d6
    move-object/from16 v0, p0

    #@1d8
    move/from16 v1, v43

    #@1da
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@1dd
    move-result v25

    #@1de
    .line 1234
    .restart local v25    # "monthLen":I
    const/16 v43, 0x5

    #@1e0
    move-object/from16 v0, p0

    #@1e2
    move/from16 v1, v43

    #@1e4
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@1e7
    move-result v43

    #@1e8
    move/from16 v0, v43

    #@1ea
    move/from16 v1, v25

    #@1ec
    if-le v0, v1, :cond_b

    #@1ee
    .line 1235
    const/16 v43, 0x5

    #@1f0
    move-object/from16 v0, p0

    #@1f2
    move/from16 v1, v43

    #@1f4
    move/from16 v2, v25

    #@1f6
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@1f9
    goto :goto_3

    #@1fa
    .line 1243
    .end local v24    # "mon":I
    .end local v25    # "monthLen":I
    .end local v41    # "yearLength":I
    :pswitch_3
    move-object/from16 v0, p0

    #@1fc
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@1fe
    move-object/from16 v43, v0

    #@200
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@203
    move-result v40

    #@204
    .line 1244
    .local v40, "y":I
    const/16 v43, 0x3

    #@206
    move-object/from16 v0, p0

    #@208
    move/from16 v1, v43

    #@20a
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@20d
    move-result v22

    #@20e
    .line 1245
    const/16 v43, 0x7

    #@210
    move-object/from16 v0, p0

    #@212
    move/from16 v1, v43

    #@214
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@217
    move-result v43

    #@218
    const/16 v44, 0x7

    #@21a
    move-object/from16 v0, p0

    #@21c
    move/from16 v1, v44

    #@21e
    move/from16 v2, v43

    #@220
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@223
    .line 1246
    const/16 v43, 0x3

    #@225
    move-object/from16 v0, p0

    #@227
    move/from16 v1, v43

    #@229
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@22c
    move-result v38

    #@22d
    .line 1247
    .local v38, "woy":I
    add-int v36, v38, p2

    #@22f
    .line 1248
    .local v36, "value":I
    move-object/from16 v0, p0

    #@231
    move/from16 v1, v40

    #@233
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@236
    move-result v43

    #@237
    if-nez v43, :cond_10

    #@239
    .line 1251
    move/from16 v0, v36

    #@23b
    move/from16 v1, v23

    #@23d
    if-le v0, v1, :cond_e

    #@23f
    move/from16 v0, v36

    #@241
    move/from16 v1, v22

    #@243
    if-ge v0, v1, :cond_e

    #@245
    .line 1252
    const/16 v43, 0x3

    #@247
    move-object/from16 v0, p0

    #@249
    move/from16 v1, v43

    #@24b
    move/from16 v2, v36

    #@24d
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@250
    .line 1253
    return-void

    #@251
    .line 1255
    :cond_e
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@254
    move-result-wide v14

    #@255
    .line 1257
    .local v14, "fd":J
    sub-int v43, v38, v23

    #@257
    mul-int/lit8 v43, v43, 0x7

    #@259
    move/from16 v0, v43

    #@25b
    int-to-long v0, v0

    #@25c
    move-wide/from16 v44, v0

    #@25e
    sub-long v8, v14, v44

    #@260
    .line 1258
    .local v8, "day1":J
    move-object/from16 v0, p0

    #@262
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@264
    move-object/from16 v43, v0

    #@266
    move-object/from16 v0, v43

    #@268
    invoke-virtual {v0, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    #@26b
    move-result v43

    #@26c
    move/from16 v0, v43

    #@26e
    move/from16 v1, v40

    #@270
    if-eq v0, v1, :cond_f

    #@272
    .line 1259
    add-int/lit8 v23, v23, 0x1

    #@274
    .line 1263
    :cond_f
    const/16 v43, 0x3

    #@276
    move-object/from16 v0, p0

    #@278
    move/from16 v1, v43

    #@27a
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@27d
    move-result v43

    #@27e
    sub-int v43, v22, v43

    #@280
    mul-int/lit8 v43, v43, 0x7

    #@282
    move/from16 v0, v43

    #@284
    int-to-long v0, v0

    #@285
    move-wide/from16 v44, v0

    #@287
    add-long v14, v14, v44

    #@289
    .line 1264
    move-object/from16 v0, p0

    #@28b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@28d
    move-object/from16 v43, v0

    #@28f
    move-object/from16 v0, v43

    #@291
    invoke-virtual {v0, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    #@294
    move-result v43

    #@295
    move/from16 v0, v43

    #@297
    move/from16 v1, v40

    #@299
    if-eq v0, v1, :cond_3

    #@29b
    .line 1265
    add-int/lit8 v22, v22, -0x1

    #@29d
    goto/16 :goto_0

    #@29f
    .line 1271
    .end local v8    # "day1":J
    .end local v14    # "fd":J
    :cond_10
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@2a2
    move-result-wide v14

    #@2a3
    .line 1273
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    #@2a5
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@2a7
    move/from16 v43, v0

    #@2a9
    move-object/from16 v0, p0

    #@2ab
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    #@2ad
    move/from16 v44, v0

    #@2af
    move/from16 v0, v43

    #@2b1
    move/from16 v1, v44

    #@2b3
    if-ne v0, v1, :cond_13

    #@2b5
    .line 1274
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@2b8
    move-result-object v4

    #@2b9
    .line 1280
    .local v4, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_4
    sub-int v43, v38, v23

    #@2bb
    mul-int/lit8 v43, v43, 0x7

    #@2bd
    move/from16 v0, v43

    #@2bf
    int-to-long v0, v0

    #@2c0
    move-wide/from16 v44, v0

    #@2c2
    sub-long v8, v14, v44

    #@2c4
    .line 1282
    .restart local v8    # "day1":J
    invoke-virtual {v4, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    #@2c7
    move-result v43

    #@2c8
    move/from16 v0, v43

    #@2ca
    move/from16 v1, v40

    #@2cc
    if-eq v0, v1, :cond_11

    #@2ce
    .line 1283
    add-int/lit8 v23, v23, 0x1

    #@2d0
    .line 1287
    :cond_11
    sub-int v43, v22, v38

    #@2d2
    mul-int/lit8 v43, v43, 0x7

    #@2d4
    move/from16 v0, v43

    #@2d6
    int-to-long v0, v0

    #@2d7
    move-wide/from16 v44, v0

    #@2d9
    add-long v14, v14, v44

    #@2db
    .line 1288
    move-object/from16 v0, p0

    #@2dd
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@2df
    move-wide/from16 v44, v0

    #@2e1
    cmp-long v43, v14, v44

    #@2e3
    if-ltz v43, :cond_15

    #@2e5
    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@2e7
    .line 1289
    :goto_5
    invoke-virtual {v4, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    #@2ea
    move-result v43

    #@2eb
    move/from16 v0, v43

    #@2ed
    move/from16 v1, v40

    #@2ef
    if-eq v0, v1, :cond_12

    #@2f1
    .line 1290
    add-int/lit8 v22, v22, -0x1

    #@2f3
    .line 1294
    :cond_12
    move/from16 v0, v38

    #@2f5
    move/from16 v1, p2

    #@2f7
    move/from16 v2, v23

    #@2f9
    move/from16 v3, v22

    #@2fb
    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    #@2fe
    move-result v43

    #@2ff
    add-int/lit8 v36, v43, -0x1

    #@301
    .line 1295
    mul-int/lit8 v43, v36, 0x7

    #@303
    move/from16 v0, v43

    #@305
    int-to-long v0, v0

    #@306
    move-wide/from16 v44, v0

    #@308
    add-long v44, v44, v8

    #@30a
    move-object/from16 v0, p0

    #@30c
    move-wide/from16 v1, v44

    #@30e
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@311
    move-result-object v5

    #@312
    .line 1296
    .local v5, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@315
    move-result v43

    #@316
    add-int/lit8 v43, v43, -0x1

    #@318
    const/16 v44, 0x2

    #@31a
    move-object/from16 v0, p0

    #@31c
    move/from16 v1, v44

    #@31e
    move/from16 v2, v43

    #@320
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@323
    .line 1297
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@326
    move-result v43

    #@327
    const/16 v44, 0x5

    #@329
    move-object/from16 v0, p0

    #@32b
    move/from16 v1, v44

    #@32d
    move/from16 v2, v43

    #@32f
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@332
    .line 1298
    return-void

    #@333
    .line 1275
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v8    # "day1":J
    :cond_13
    move-object/from16 v0, p0

    #@335
    iget v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    #@337
    move/from16 v43, v0

    #@339
    move/from16 v0, v40

    #@33b
    move/from16 v1, v43

    #@33d
    if-ne v0, v1, :cond_14

    #@33f
    .line 1276
    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@341
    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto/16 :goto_4

    #@343
    .line 1278
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_14
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@346
    move-result-object v4

    #@347
    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto/16 :goto_4

    #@349
    .line 1288
    .restart local v8    # "day1":J
    :cond_15
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@34c
    move-result-object v4

    #@34d
    goto :goto_5

    #@34e
    .line 1303
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v8    # "day1":J
    .end local v14    # "fd":J
    .end local v36    # "value":I
    .end local v38    # "woy":I
    .end local v40    # "y":I
    :pswitch_4
    move-object/from16 v0, p0

    #@350
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@352
    move-object/from16 v43, v0

    #@354
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@357
    move-result v43

    #@358
    move-object/from16 v0, p0

    #@35a
    move/from16 v1, v43

    #@35c
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@35f
    move-result v18

    #@360
    .line 1305
    .local v18, "isCutoverYear":Z
    const/16 v43, 0x7

    #@362
    move-object/from16 v0, p0

    #@364
    move/from16 v1, v43

    #@366
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@369
    move-result v43

    #@36a
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@36d
    move-result v44

    #@36e
    sub-int v11, v43, v44

    #@370
    .line 1306
    .local v11, "dow":I
    if-gez v11, :cond_16

    #@372
    .line 1307
    add-int/lit8 v11, v11, 0x7

    #@374
    .line 1310
    :cond_16
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@377
    move-result-wide v14

    #@378
    .line 1313
    .restart local v14    # "fd":J
    if-eqz v18, :cond_19

    #@37a
    .line 1314
    move-object/from16 v0, p0

    #@37c
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@37e
    move-object/from16 v43, v0

    #@380
    move-object/from16 v0, p0

    #@382
    move-object/from16 v1, v43

    #@384
    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@387
    move-result-wide v26

    #@388
    .line 1315
    .local v26, "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    #@38b
    move-result v30

    #@38c
    .line 1322
    .local v30, "monthLength":I
    :goto_6
    move-object/from16 v0, p0

    #@38e
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@390
    move-object/from16 v43, v0

    #@392
    const-wide/16 v44, 0x6

    #@394
    add-long v44, v44, v26

    #@396
    .line 1323
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@399
    move-result v43

    #@39a
    .line 1322
    move-wide/from16 v0, v44

    #@39c
    move/from16 v2, v43

    #@39e
    invoke-static {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@3a1
    move-result-wide v28

    #@3a2
    .line 1326
    .local v28, "monthDay1st":J
    sub-long v44, v28, v26

    #@3a4
    move-wide/from16 v0, v44

    #@3a6
    long-to-int v0, v0

    #@3a7
    move/from16 v43, v0

    #@3a9
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@3ac
    move-result v44

    #@3ad
    move/from16 v0, v43

    #@3af
    move/from16 v1, v44

    #@3b1
    if-lt v0, v1, :cond_17

    #@3b3
    .line 1327
    const-wide/16 v44, 0x7

    #@3b5
    sub-long v28, v28, v44

    #@3b7
    .line 1329
    :cond_17
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@3ba
    move-result v22

    #@3bb
    .line 1332
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@3be
    move-result v43

    #@3bf
    const/16 v44, 0x1

    #@3c1
    move/from16 v0, v43

    #@3c3
    move/from16 v1, p2

    #@3c5
    move/from16 v2, v44

    #@3c7
    move/from16 v3, v22

    #@3c9
    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    #@3cc
    move-result v43

    #@3cd
    add-int/lit8 v36, v43, -0x1

    #@3cf
    .line 1335
    .restart local v36    # "value":I
    mul-int/lit8 v43, v36, 0x7

    #@3d1
    move/from16 v0, v43

    #@3d3
    int-to-long v0, v0

    #@3d4
    move-wide/from16 v44, v0

    #@3d6
    add-long v44, v44, v28

    #@3d8
    int-to-long v0, v11

    #@3d9
    move-wide/from16 v46, v0

    #@3db
    add-long v32, v44, v46

    #@3dd
    .line 1339
    .local v32, "nfd":J
    cmp-long v43, v32, v26

    #@3df
    if-gez v43, :cond_1a

    #@3e1
    .line 1340
    move-wide/from16 v32, v26

    #@3e3
    .line 1345
    :cond_18
    :goto_7
    if-eqz v18, :cond_1b

    #@3e5
    .line 1348
    move-object/from16 v0, p0

    #@3e7
    move-wide/from16 v1, v32

    #@3e9
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@3ec
    move-result-object v5

    #@3ed
    .line 1349
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@3f0
    move-result v7

    #@3f1
    .line 1353
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v7, "dayOfMonth":I
    :goto_8
    const/16 v43, 0x5

    #@3f3
    move-object/from16 v0, p0

    #@3f5
    move/from16 v1, v43

    #@3f7
    invoke-virtual {v0, v1, v7}, Ljava/util/GregorianCalendar;->set(II)V

    #@3fa
    .line 1354
    return-void

    #@3fb
    .line 1317
    .end local v7    # "dayOfMonth":I
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v36    # "value":I
    :cond_19
    const/16 v43, 0x5

    #@3fd
    move-object/from16 v0, p0

    #@3ff
    move/from16 v1, v43

    #@401
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@404
    move-result v43

    #@405
    move/from16 v0, v43

    #@407
    int-to-long v0, v0

    #@408
    move-wide/from16 v44, v0

    #@40a
    sub-long v44, v14, v44

    #@40c
    const-wide/16 v46, 0x1

    #@40e
    add-long v26, v44, v46

    #@410
    .line 1318
    .restart local v26    # "month1":J
    move-object/from16 v0, p0

    #@412
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@414
    move-object/from16 v43, v0

    #@416
    move-object/from16 v0, p0

    #@418
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@41a
    move-object/from16 v44, v0

    #@41c
    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@41f
    move-result v30

    #@420
    .restart local v30    # "monthLength":I
    goto/16 :goto_6

    #@422
    .line 1341
    .restart local v28    # "monthDay1st":J
    .restart local v32    # "nfd":J
    .restart local v36    # "value":I
    :cond_1a
    move/from16 v0, v30

    #@424
    int-to-long v0, v0

    #@425
    move-wide/from16 v44, v0

    #@427
    add-long v44, v44, v26

    #@429
    cmp-long v43, v32, v44

    #@42b
    if-ltz v43, :cond_18

    #@42d
    .line 1342
    move/from16 v0, v30

    #@42f
    int-to-long v0, v0

    #@430
    move-wide/from16 v44, v0

    #@432
    add-long v44, v44, v26

    #@434
    const-wide/16 v46, 0x1

    #@436
    sub-long v32, v44, v46

    #@438
    goto :goto_7

    #@439
    .line 1351
    :cond_1b
    sub-long v44, v32, v26

    #@43b
    move-wide/from16 v0, v44

    #@43d
    long-to-int v0, v0

    #@43e
    move/from16 v43, v0

    #@440
    add-int/lit8 v7, v43, 0x1

    #@442
    .restart local v7    # "dayOfMonth":I
    goto :goto_8

    #@443
    .line 1359
    .end local v7    # "dayOfMonth":I
    .end local v11    # "dow":I
    .end local v14    # "fd":J
    .end local v18    # "isCutoverYear":Z
    .end local v26    # "month1":J
    .end local v28    # "monthDay1st":J
    .end local v30    # "monthLength":I
    .end local v32    # "nfd":J
    .end local v36    # "value":I
    :pswitch_5
    move-object/from16 v0, p0

    #@445
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@447
    move-object/from16 v43, v0

    #@449
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@44c
    move-result v43

    #@44d
    move-object/from16 v0, p0

    #@44f
    move/from16 v1, v43

    #@451
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@454
    move-result v43

    #@455
    if-nez v43, :cond_1c

    #@457
    .line 1360
    move-object/from16 v0, p0

    #@459
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@45b
    move-object/from16 v43, v0

    #@45d
    move-object/from16 v0, p0

    #@45f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@461
    move-object/from16 v44, v0

    #@463
    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@466
    move-result v22

    #@467
    goto/16 :goto_0

    #@469
    .line 1365
    :cond_1c
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@46c
    move-result-wide v14

    #@46d
    .line 1366
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    #@46f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@471
    move-object/from16 v43, v0

    #@473
    move-object/from16 v0, p0

    #@475
    move-object/from16 v1, v43

    #@477
    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@47a
    move-result-wide v26

    #@47b
    .line 1370
    .restart local v26    # "month1":J
    sub-long v44, v14, v26

    #@47d
    move-wide/from16 v0, v44

    #@47f
    long-to-int v0, v0

    #@480
    move/from16 v43, v0

    #@482
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    #@485
    move-result v44

    #@486
    add-int/lit8 v44, v44, -0x1

    #@488
    const/16 v45, 0x0

    #@48a
    move/from16 v0, v43

    #@48c
    move/from16 v1, p2

    #@48e
    move/from16 v2, v45

    #@490
    move/from16 v3, v44

    #@492
    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    #@495
    move-result v36

    #@496
    .line 1371
    .restart local v36    # "value":I
    move/from16 v0, v36

    #@498
    int-to-long v0, v0

    #@499
    move-wide/from16 v44, v0

    #@49b
    add-long v44, v44, v26

    #@49d
    move-object/from16 v0, p0

    #@49f
    move-wide/from16 v1, v44

    #@4a1
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@4a4
    move-result-object v5

    #@4a5
    .line 1372
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-boolean v43, Ljava/util/GregorianCalendar;->-assertionsDisabled:Z

    #@4a7
    if-nez v43, :cond_1e

    #@4a9
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@4ac
    move-result v43

    #@4ad
    add-int/lit8 v43, v43, -0x1

    #@4af
    const/16 v44, 0x2

    #@4b1
    move-object/from16 v0, p0

    #@4b3
    move/from16 v1, v44

    #@4b5
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@4b8
    move-result v44

    #@4b9
    move/from16 v0, v43

    #@4bb
    move/from16 v1, v44

    #@4bd
    if-ne v0, v1, :cond_1d

    #@4bf
    const/16 v43, 0x1

    #@4c1
    :goto_9
    if-nez v43, :cond_1e

    #@4c3
    new-instance v43, Ljava/lang/AssertionError;

    #@4c5
    invoke-direct/range {v43 .. v43}, Ljava/lang/AssertionError;-><init>()V

    #@4c8
    throw v43

    #@4c9
    :cond_1d
    const/16 v43, 0x0

    #@4cb
    goto :goto_9

    #@4cc
    .line 1373
    :cond_1e
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@4cf
    move-result v43

    #@4d0
    const/16 v44, 0x5

    #@4d2
    move-object/from16 v0, p0

    #@4d4
    move/from16 v1, v44

    #@4d6
    move/from16 v2, v43

    #@4d8
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@4db
    .line 1374
    return-void

    #@4dc
    .line 1379
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v14    # "fd":J
    .end local v26    # "month1":J
    .end local v36    # "value":I
    :pswitch_6
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@4df
    move-result v22

    #@4e0
    .line 1380
    move-object/from16 v0, p0

    #@4e2
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@4e4
    move-object/from16 v43, v0

    #@4e6
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@4e9
    move-result v43

    #@4ea
    move-object/from16 v0, p0

    #@4ec
    move/from16 v1, v43

    #@4ee
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@4f1
    move-result v43

    #@4f2
    if-eqz v43, :cond_3

    #@4f4
    .line 1385
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@4f7
    move-result-wide v14

    #@4f8
    .line 1386
    .restart local v14    # "fd":J
    const/16 v43, 0x6

    #@4fa
    move-object/from16 v0, p0

    #@4fc
    move/from16 v1, v43

    #@4fe
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@501
    move-result v43

    #@502
    move/from16 v0, v43

    #@504
    int-to-long v0, v0

    #@505
    move-wide/from16 v44, v0

    #@507
    sub-long v44, v14, v44

    #@509
    const-wide/16 v46, 0x1

    #@50b
    add-long v20, v44, v46

    #@50d
    .line 1387
    .local v20, "jan1":J
    sub-long v44, v14, v20

    #@50f
    move-wide/from16 v0, v44

    #@511
    long-to-int v0, v0

    #@512
    move/from16 v43, v0

    #@514
    add-int/lit8 v43, v43, 0x1

    #@516
    move/from16 v0, v43

    #@518
    move/from16 v1, p2

    #@51a
    move/from16 v2, v23

    #@51c
    move/from16 v3, v22

    #@51e
    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    #@521
    move-result v36

    #@522
    .line 1388
    .restart local v36    # "value":I
    move/from16 v0, v36

    #@524
    int-to-long v0, v0

    #@525
    move-wide/from16 v44, v0

    #@527
    add-long v44, v44, v20

    #@529
    const-wide/16 v46, 0x1

    #@52b
    sub-long v44, v44, v46

    #@52d
    move-object/from16 v0, p0

    #@52f
    move-wide/from16 v1, v44

    #@531
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@534
    move-result-object v5

    #@535
    .line 1389
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@538
    move-result v43

    #@539
    add-int/lit8 v43, v43, -0x1

    #@53b
    const/16 v44, 0x2

    #@53d
    move-object/from16 v0, p0

    #@53f
    move/from16 v1, v44

    #@541
    move/from16 v2, v43

    #@543
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@546
    .line 1390
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@549
    move-result v43

    #@54a
    const/16 v44, 0x5

    #@54c
    move-object/from16 v0, p0

    #@54e
    move/from16 v1, v44

    #@550
    move/from16 v2, v43

    #@552
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@555
    .line 1391
    return-void

    #@556
    .line 1396
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v14    # "fd":J
    .end local v20    # "jan1":J
    .end local v36    # "value":I
    :pswitch_7
    move-object/from16 v0, p0

    #@558
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@55a
    move-object/from16 v43, v0

    #@55c
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@55f
    move-result v43

    #@560
    move-object/from16 v0, p0

    #@562
    move/from16 v1, v43

    #@564
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@567
    move-result v43

    #@568
    if-nez v43, :cond_1f

    #@56a
    .line 1399
    const/16 v43, 0x3

    #@56c
    move-object/from16 v0, p0

    #@56e
    move/from16 v1, v43

    #@570
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@573
    move-result v37

    #@574
    .line 1400
    .local v37, "weekOfYear":I
    const/16 v43, 0x1

    #@576
    move/from16 v0, v37

    #@578
    move/from16 v1, v43

    #@57a
    if-le v0, v1, :cond_1f

    #@57c
    const/16 v43, 0x34

    #@57e
    move/from16 v0, v37

    #@580
    move/from16 v1, v43

    #@582
    if-ge v0, v1, :cond_1f

    #@584
    .line 1401
    const/16 v43, 0x3

    #@586
    move-object/from16 v0, p0

    #@588
    move/from16 v1, v43

    #@58a
    move/from16 v2, v37

    #@58c
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@58f
    .line 1402
    const/16 v22, 0x7

    #@591
    .line 1403
    goto/16 :goto_0

    #@593
    .line 1411
    .end local v37    # "weekOfYear":I
    :cond_1f
    rem-int/lit8 p2, p2, 0x7

    #@595
    .line 1412
    if-nez p2, :cond_20

    #@597
    .line 1413
    return-void

    #@598
    .line 1415
    :cond_20
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@59b
    move-result-wide v14

    #@59c
    .line 1416
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    #@59e
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@5a0
    move-object/from16 v43, v0

    #@5a2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@5a5
    move-result v43

    #@5a6
    move/from16 v0, v43

    #@5a8
    invoke-static {v14, v15, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    #@5ab
    move-result-wide v12

    #@5ac
    .line 1417
    .local v12, "dowFirst":J
    move/from16 v0, p2

    #@5ae
    int-to-long v0, v0

    #@5af
    move-wide/from16 v44, v0

    #@5b1
    add-long v14, v14, v44

    #@5b3
    .line 1418
    cmp-long v43, v14, v12

    #@5b5
    if-gez v43, :cond_22

    #@5b7
    .line 1419
    const-wide/16 v44, 0x7

    #@5b9
    add-long v14, v14, v44

    #@5bb
    .line 1423
    :cond_21
    :goto_a
    move-object/from16 v0, p0

    #@5bd
    invoke-direct {v0, v14, v15}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    #@5c0
    move-result-object v5

    #@5c1
    .line 1424
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@5c4
    move-result v43

    #@5c5
    if-gtz v43, :cond_23

    #@5c7
    const/16 v43, 0x0

    #@5c9
    :goto_b
    const/16 v44, 0x0

    #@5cb
    move-object/from16 v0, p0

    #@5cd
    move/from16 v1, v44

    #@5cf
    move/from16 v2, v43

    #@5d1
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@5d4
    .line 1425
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    #@5d7
    move-result v43

    #@5d8
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@5db
    move-result v44

    #@5dc
    add-int/lit8 v44, v44, -0x1

    #@5de
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@5e1
    move-result v45

    #@5e2
    move-object/from16 v0, p0

    #@5e4
    move/from16 v1, v43

    #@5e6
    move/from16 v2, v44

    #@5e8
    move/from16 v3, v45

    #@5ea
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->set(III)V

    #@5ed
    .line 1426
    return-void

    #@5ee
    .line 1420
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_22
    const-wide/16 v44, 0x7

    #@5f0
    add-long v44, v44, v12

    #@5f2
    cmp-long v43, v14, v44

    #@5f4
    if-ltz v43, :cond_21

    #@5f6
    .line 1421
    const-wide/16 v44, 0x7

    #@5f8
    sub-long v14, v14, v44

    #@5fa
    goto :goto_a

    #@5fb
    .line 1424
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_23
    const/16 v43, 0x1

    #@5fd
    goto :goto_b

    #@5fe
    .line 1431
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v12    # "dowFirst":J
    .end local v14    # "fd":J
    :pswitch_8
    const/16 v23, 0x1

    #@600
    .line 1432
    move-object/from16 v0, p0

    #@602
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@604
    move-object/from16 v43, v0

    #@606
    invoke-virtual/range {v43 .. v43}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@609
    move-result v43

    #@60a
    move-object/from16 v0, p0

    #@60c
    move/from16 v1, v43

    #@60e
    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    #@611
    move-result v43

    #@612
    if-nez v43, :cond_25

    #@614
    .line 1433
    const/16 v43, 0x5

    #@616
    move-object/from16 v0, p0

    #@618
    move/from16 v1, v43

    #@61a
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@61d
    move-result v10

    #@61e
    .line 1434
    .local v10, "dom":I
    move-object/from16 v0, p0

    #@620
    iget-object v0, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    #@622
    move-object/from16 v43, v0

    #@624
    move-object/from16 v0, p0

    #@626
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@628
    move-object/from16 v44, v0

    #@62a
    invoke-virtual/range {v43 .. v44}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@62d
    move-result v30

    #@62e
    .line 1435
    .restart local v30    # "monthLength":I
    rem-int/lit8 v19, v30, 0x7

    #@630
    .line 1436
    .local v19, "lastDays":I
    div-int/lit8 v22, v30, 0x7

    #@632
    .line 1437
    add-int/lit8 v43, v10, -0x1

    #@634
    rem-int/lit8 v39, v43, 0x7

    #@636
    .line 1438
    .local v39, "x":I
    move/from16 v0, v39

    #@638
    move/from16 v1, v19

    #@63a
    if-ge v0, v1, :cond_24

    #@63c
    .line 1439
    add-int/lit8 v22, v22, 0x1

    #@63e
    .line 1441
    :cond_24
    const/16 v43, 0x7

    #@640
    move-object/from16 v0, p0

    #@642
    move/from16 v1, v43

    #@644
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@647
    move-result v43

    #@648
    const/16 v44, 0x7

    #@64a
    move-object/from16 v0, p0

    #@64c
    move/from16 v1, v44

    #@64e
    move/from16 v2, v43

    #@650
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@653
    goto/16 :goto_0

    #@655
    .line 1446
    .end local v10    # "dom":I
    .end local v19    # "lastDays":I
    .end local v30    # "monthLength":I
    .end local v39    # "x":I
    :cond_25
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    #@658
    move-result-wide v14

    #@659
    .line 1447
    .restart local v14    # "fd":J
    move-object/from16 v0, p0

    #@65b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@65d
    move-object/from16 v43, v0

    #@65f
    move-object/from16 v0, p0

    #@661
    move-object/from16 v1, v43

    #@663
    invoke-direct {v0, v1, v14, v15}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    #@666
    move-result-wide v26

    #@667
    .line 1448
    .restart local v26    # "month1":J
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    #@66a
    move-result v30

    #@66b
    .line 1449
    .restart local v30    # "monthLength":I
    rem-int/lit8 v19, v30, 0x7

    #@66d
    .line 1450
    .restart local v19    # "lastDays":I
    div-int/lit8 v22, v30, 0x7

    #@66f
    .line 1451
    sub-long v44, v14, v26

    #@671
    move-wide/from16 v0, v44

    #@673
    long-to-int v0, v0

    #@674
    move/from16 v43, v0

    #@676
    rem-int/lit8 v39, v43, 0x7

    #@678
    .line 1452
    .restart local v39    # "x":I
    move/from16 v0, v39

    #@67a
    move/from16 v1, v19

    #@67c
    if-ge v0, v1, :cond_26

    #@67e
    .line 1453
    add-int/lit8 v22, v22, 0x1

    #@680
    .line 1455
    :cond_26
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@683
    move-result v43

    #@684
    move/from16 v0, v43

    #@686
    move/from16 v1, p2

    #@688
    move/from16 v2, v23

    #@68a
    move/from16 v3, v22

    #@68c
    invoke-static {v0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    #@68f
    move-result v43

    #@690
    add-int/lit8 v36, v43, -0x1

    #@692
    .line 1456
    .restart local v36    # "value":I
    mul-int/lit8 v43, v36, 0x7

    #@694
    move/from16 v0, v43

    #@696
    int-to-long v0, v0

    #@697
    move-wide/from16 v44, v0

    #@699
    add-long v44, v44, v26

    #@69b
    move/from16 v0, v39

    #@69d
    int-to-long v0, v0

    #@69e
    move-wide/from16 v46, v0

    #@6a0
    add-long v14, v44, v46

    #@6a2
    .line 1457
    move-object/from16 v0, p0

    #@6a4
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    #@6a6
    move-wide/from16 v44, v0

    #@6a8
    cmp-long v43, v14, v44

    #@6aa
    if-ltz v43, :cond_27

    #@6ac
    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    #@6ae
    .line 1458
    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    :goto_c
    sget-object v43, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@6b0
    move-object/from16 v0, v43

    #@6b2
    invoke-virtual {v4, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@6b5
    move-result-object v5

    #@6b6
    check-cast v5, Lsun/util/calendar/BaseCalendar$Date;

    #@6b8
    .line 1459
    .restart local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v4, v5, v14, v15}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@6bb
    .line 1460
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@6be
    move-result v43

    #@6bf
    const/16 v44, 0x5

    #@6c1
    move-object/from16 v0, p0

    #@6c3
    move/from16 v1, v44

    #@6c5
    move/from16 v2, v43

    #@6c7
    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@6ca
    .line 1461
    return-void

    #@6cb
    .line 1457
    .end local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_27
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    #@6ce
    move-result-object v4

    #@6cf
    .restart local v4    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_c

    #@6d0
    .line 1148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public roll(IZ)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 1084
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    #@6
    .line 1083
    return-void

    #@7
    .line 1084
    :cond_0
    const/4 v0, -0x1

    #@8
    goto :goto_0
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 745
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    .line 746
    .local v0, "cutoverTime":J
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 747
    return-void

    #@b
    .line 751
    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    #@e
    .line 752
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    #@11
    .line 744
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 2
    .param p1, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 1975
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@3
    .line 1977
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@5
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@8
    .line 1978
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@a
    if-eqz v0, :cond_0

    #@c
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@e
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    #@10
    if-eq v0, v1, :cond_0

    #@12
    .line 1979
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    #@14
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@17
    .line 1974
    :cond_0
    return-void
.end method

.method public setWeekDate(III)V
    .locals 9
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x7

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 2143
    if-lt p3, v5, :cond_0

    #@7
    if-le p3, v6, :cond_1

    #@9
    .line 2144
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v4, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v5, "invalid dayOfWeek: "

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v4

    #@1f
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v3

    #@23
    .line 2149
    :cond_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@26
    move-result-object v2

    #@27
    check-cast v2, Ljava/util/GregorianCalendar;

    #@29
    .line 2150
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    #@2c
    .line 2151
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->get(I)I

    #@2f
    move-result v1

    #@30
    .line 2152
    .local v1, "era":I
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    #@33
    .line 2153
    const-string/jumbo v3, "GMT"

    #@36
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@39
    move-result-object v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@3d
    .line 2154
    invoke-virtual {v2, v4, v1}, Ljava/util/GregorianCalendar;->set(II)V

    #@40
    .line 2155
    invoke-virtual {v2, v5, p1}, Ljava/util/GregorianCalendar;->set(II)V

    #@43
    .line 2156
    invoke-virtual {v2, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    #@46
    .line 2157
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@49
    move-result v3

    #@4a
    invoke-virtual {v2, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    #@4d
    .line 2158
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@50
    move-result v3

    #@51
    sub-int v0, p3, v3

    #@53
    .line 2159
    .local v0, "days":I
    if-gez v0, :cond_2

    #@55
    .line 2160
    add-int/lit8 v0, v0, 0x7

    #@57
    .line 2162
    :cond_2
    add-int/lit8 v3, p2, -0x1

    #@59
    mul-int/lit8 v3, v3, 0x7

    #@5b
    add-int/2addr v0, v3

    #@5c
    .line 2163
    if-eqz v0, :cond_4

    #@5e
    .line 2164
    const/4 v3, 0x6

    #@5f
    invoke-virtual {v2, v3, v0}, Ljava/util/GregorianCalendar;->add(II)V

    #@62
    .line 2169
    :goto_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    #@65
    move-result v3

    #@66
    if-nez v3, :cond_6

    #@68
    .line 2170
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getWeekYear()I

    #@6b
    move-result v3

    #@6c
    if-ne v3, p1, :cond_3

    #@6e
    .line 2171
    invoke-virtual {v2, v7}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@71
    move-result v3

    #@72
    if-eq v3, p2, :cond_5

    #@74
    .line 2173
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@76
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@79
    throw v3

    #@7a
    .line 2166
    :cond_4
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->complete()V

    #@7d
    goto :goto_0

    #@7e
    .line 2172
    :cond_5
    invoke-virtual {v2, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@81
    move-result v3

    #@82
    if-ne v3, p3, :cond_3

    #@84
    .line 2176
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@87
    move-result v3

    #@88
    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    #@8b
    .line 2177
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@8e
    move-result v3

    #@8f
    invoke-virtual {p0, v5, v3}, Ljava/util/GregorianCalendar;->set(II)V

    #@92
    .line 2178
    invoke-virtual {v2, v8}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@95
    move-result v3

    #@96
    invoke-virtual {p0, v8, v3}, Ljava/util/GregorianCalendar;->set(II)V

    #@99
    .line 2179
    const/4 v3, 0x5

    #@9a
    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    #@9d
    move-result v3

    #@9e
    const/4 v4, 0x5

    #@9f
    invoke-virtual {p0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    #@a2
    .line 2183
    invoke-virtual {p0, v7, p2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    #@a5
    .line 2184
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    #@a8
    .line 2142
    return-void
.end method
