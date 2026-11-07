.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api AD:I = 0x1

.field public static final whitelist test-api BC:I = 0x0

.field static final greylist-max-o BCE:I = 0x0

.field static final greylist-max-o CE:I = 0x1

.field static final greylist-max-o DEFAULT_GREGORIAN_CUTOVER:J = -0xb1d069b5400L

.field private static final greylist-max-o EPOCH_OFFSET:I = 0xaf93b

.field private static final greylist-max-o EPOCH_YEAR:I = 0x7b2

.field static final greylist-max-o LEAP_MONTH_LENGTH:[I

.field static final greylist-max-o LEAST_MAX_VALUES:[I

.field static final greylist-max-o MAX_VALUES:[I

.field static final greylist-max-o MIN_VALUES:[I

.field static final greylist-max-o MONTH_LENGTH:[I

.field private static final greylist-max-o ONE_DAY:J = 0x5265c00L

.field private static final greylist-max-o ONE_HOUR:I = 0x36ee80

.field private static final greylist-max-o ONE_MINUTE:I = 0xea60

.field private static final greylist-max-o ONE_SECOND:I = 0x3e8

.field private static final greylist-max-o ONE_WEEK:J = 0x240c8400L

.field private static final greylist-max-o gcal:Lsun/util/calendar/Gregorian;

.field private static greylist-max-o jcal:Lsun/util/calendar/JulianCalendar; = null

.field private static greylist-max-o jeras:[Lsun/util/calendar/Era; = null

.field static final whitelist serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient greylist-max-o cachedFixedDate:J

.field private transient greylist-max-o calsys:Lsun/util/calendar/BaseCalendar;

.field private transient greylist-max-o cdate:Lsun/util/calendar/BaseCalendar$Date;

.field private transient greylist-max-o gdate:Lsun/util/calendar/BaseCalendar$Date;

.field private greylist-max-o gregorianCutover:J

.field private transient greylist-max-o gregorianCutoverDate:J

.field private transient greylist-max-o gregorianCutoverYear:I

.field private transient greylist-max-o gregorianCutoverYearJulian:I

.field private transient greylist-max-o originalFields:[I

.field private transient greylist-max-o zoneOffsets:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 331
    nop

    .line 401
    const/16 v0, 0xc

    new-array v1, v0, [I

    fill-array-data v1, :array_30

    sput-object v1, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    .line 403
    new-array v0, v0, [I

    fill-array-data v0, :array_4c

    sput-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    .line 440
    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_68

    sput-object v1, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    .line 459
    new-array v1, v0, [I

    fill-array-data v1, :array_8e

    sput-object v1, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    .line 478
    new-array v0, v0, [I

    fill-array-data v0, :array_b4

    sput-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    .line 505
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 504
    return-void

    nop

    :array_30
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

    :array_4c
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

    :array_68
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

    :array_8e
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

    :array_b4
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

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 593
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 594
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    .line 595
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 642
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "dayOfMonth":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "dayOfMonth":I
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 643
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIII)V
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .line 660
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "dayOfMonth":I
    .end local p4    # "hourOfDay":I
    .end local p5    # "minute":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "dayOfMonth":I
    .local v4, "hourOfDay":I
    .local v5, "minute":I
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 661
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 15
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 680
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "dayOfMonth":I
    .end local p4    # "hourOfDay":I
    .end local p5    # "minute":I
    .end local p6    # "second":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "dayOfMonth":I
    .local v4, "hourOfDay":I
    .local v5, "minute":I
    .local v6, "second":I
    invoke-direct/range {v0 .. v7}, Ljava/util/GregorianCalendar;-><init>(IIIIIII)V

    .line 681
    return-void
.end method

.method constructor greylist-max-o <init>(IIIIIII)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "millis"    # I

    .line 701
    invoke-direct {p0}, Ljava/util/Calendar;-><init>()V

    .line 529
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 534
    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 541
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 547
    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2255
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 702
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 703
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 704
    const/4 v1, 0x2

    invoke-virtual {p0, v1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 705
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 709
    const/16 v1, 0xa

    const/16 v2, 0xc

    if-lt p4, v2, :cond_46

    const/16 v3, 0x17

    if-gt p4, v3, :cond_46

    .line 713
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 714
    add-int/lit8 v0, p4, -0xc

    invoke-virtual {p0, v1, v0}, Ljava/util/GregorianCalendar;->internalSet(II)V

    goto :goto_49

    .line 718
    :cond_46
    invoke-virtual {p0, v1, p4}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 721
    :goto_49
    const/16 v0, 0x600

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 723
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 724
    invoke-virtual {p0, v2, p5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 725
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 728
    const/16 v0, 0xe

    invoke-virtual {p0, v0, p7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 729
    return-void
.end method

.method constructor greylist-max-o <init>(J)V
    .registers 3
    .param p1, "milliseconds"    # J

    .line 745
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 746
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 747
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 615
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setZoneShared(Z)V

    .line 617
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 605
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 606
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 627
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 529
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 534
    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 541
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 547
    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2255
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 628
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v0, p1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 629
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 630
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "flag"    # Z

    .line 739
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 529
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 534
    const-wide/32 v0, 0x8d0c8

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 541
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 547
    iput v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2255
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 740
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 741
    return-void
.end method

.method private greylist-max-o actualMonthLength()I
    .registers 11

    .line 3267
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 3268
    .local v0, "year":I
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v0, v1, :cond_17

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v0, v1, :cond_17

    .line 3269
    iget-object v1, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v2}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v1

    return v1

    .line 3271
    :cond_17
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 3272
    .local v1, "date":Lsun/util/calendar/BaseCalendar$Date;
    iget-object v2, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v2, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    .line 3273
    .local v2, "fd":J
    invoke-direct {p0, v1, v2, v3}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v4

    .line 3274
    .local v4, "month1":J
    iget-object v6, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v6, v1}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v4

    .line 3275
    .local v6, "next1":J
    iget-wide v8, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_3b

    .line 3276
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8

    .line 3278
    :cond_3b
    iget-object v8, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v9, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v8, v9, :cond_49

    .line 3279
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v9, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v8, v9}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v1

    .line 3281
    :cond_49
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v8, v1, v6, v7}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3282
    invoke-direct {p0, v1, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v6

    .line 3283
    sub-long v8, v6, v4

    long-to-int v8, v8

    return v8
.end method

.method private greylist-max-o adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I
    .registers 8
    .param p1, "standardTimeInZone"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;
    .param p4, "dstOffset"    # I

    .line 2953
    if-eqz p4, :cond_11

    .line 2956
    new-instance v0, Ljava/util/Date;

    int-to-long v1, p4

    sub-long v1, p1, v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2957
    const/4 p4, 0x0

    .line 2960
    :cond_11
    return p4
.end method

.method private greylist-max-o adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J
    .registers 13
    .param p1, "tzMask"    # I
    .param p2, "utcTimeInMillis"    # J
    .param p4, "zone"    # Ljava/util/TimeZone;

    .line 2851
    const/4 v0, 0x0

    .line 2852
    .local v0, "zoneOffset":I
    const/4 v1, 0x0

    .line 2856
    .local v1, "dstOffset":I
    const v2, 0x18000

    const/16 v3, 0xf

    if-eq p1, v2, :cond_44

    .line 2857
    iget-object v2, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    if-nez v2, :cond_12

    .line 2858
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2860
    :cond_12
    invoke-static {p1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2861
    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    goto :goto_21

    :cond_1d
    invoke-virtual {p4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 2869
    .local v2, "gmtOffset":I
    :goto_21
    int-to-long v4, v2

    sub-long v4, p2, v4

    .line 2872
    .local v4, "standardTimeInZone":J
    instance-of v6, p4, Llibcore/util/ZoneInfo;

    if-eqz v6, :cond_31

    .line 2874
    move-object v6, p4

    check-cast v6, Llibcore/util/ZoneInfo;

    .line 2875
    .local v6, "zoneInfo":Llibcore/util/ZoneInfo;
    iget-object v7, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v6, v4, v5, v7}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    .line 2876
    .end local v6    # "zoneInfo":Llibcore/util/ZoneInfo;
    goto :goto_36

    .line 2877
    :cond_31
    iget-object v6, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {p4, v4, v5, v6}, Ljava/util/TimeZone;->getOffsets(J[I)I

    .line 2879
    :goto_36
    iget-object v6, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v7, 0x0

    aget v0, v6, v7

    .line 2880
    iget-object v6, p0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v7, 0x1

    aget v1, v6, v7

    .line 2883
    invoke-direct {p0, v4, v5, p4, v1}, Ljava/util/GregorianCalendar;->adjustDstOffsetForInvalidWallClock(JLjava/util/TimeZone;I)I

    move-result v1

    .line 2888
    .end local v2    # "gmtOffset":I
    .end local v4    # "standardTimeInZone":J
    :cond_44
    if-eqz p1, :cond_5c

    .line 2889
    invoke-static {p1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2890
    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 2892
    :cond_50
    const/16 v2, 0x10

    invoke-static {p1, v2}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 2893
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    .line 2898
    :cond_5c
    int-to-long v2, v0

    sub-long v2, p2, v2

    .line 2899
    .local v2, "standardTimeInZone":J
    int-to-long v4, v1

    sub-long v4, v2, v4

    return-wide v4
.end method

.method private greylist-max-o computeFields(II)I
    .registers 35
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    .line 2303
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 2304
    .local v3, "zoneOffset":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 2305
    .local v4, "tz":Ljava/util/TimeZone;
    iget-object v5, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/4 v6, 0x2

    if-nez v5, :cond_14

    .line 2306
    new-array v5, v6, [I

    iput-object v5, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 2308
    :cond_14
    const v5, 0x18000

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v5, :cond_43

    .line 2309
    instance-of v9, v4, Llibcore/util/ZoneInfo;

    if-eqz v9, :cond_2b

    .line 2313
    move-object v9, v4

    check-cast v9, Llibcore/util/ZoneInfo;

    .line 2314
    .local v9, "zoneInfo":Llibcore/util/ZoneInfo;
    iget-wide v10, v0, Ljava/util/GregorianCalendar;->time:J

    iget-object v12, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v9, v10, v11, v12}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    move-result v3

    .line 2316
    .end local v9    # "zoneInfo":Llibcore/util/ZoneInfo;
    goto :goto_43

    .line 2317
    :cond_2b
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->time:J

    invoke-virtual {v4, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 2318
    iget-object v9, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    aput v10, v9, v7

    .line 2319
    iget-object v9, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    iget-object v10, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v10, v10, v7

    sub-int v10, v3, v10

    aput v10, v9, v8

    .line 2322
    :cond_43
    :goto_43
    const/16 v9, 0x10

    const/16 v10, 0xf

    if-eqz v2, :cond_6f

    .line 2323
    invoke-static {v2, v10}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 2324
    iget-object v11, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v7

    .line 2326
    :cond_57
    invoke-static {v2, v9}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_65

    .line 2327
    iget-object v11, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v8

    .line 2329
    :cond_65
    iget-object v11, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v11, v11, v7

    iget-object v12, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v12, v12, v8

    add-int v3, v11, v12

    .line 2335
    :cond_6f
    int-to-long v11, v3

    const-wide/32 v13, 0x5265c00

    div-long/2addr v11, v13

    .line 2336
    .local v11, "fixedDate":J
    const v15, 0x5265c00

    rem-int v15, v3, v15

    .line 2337
    .local v15, "timeOfDay":I
    move-wide/from16 v16, v13

    iget-wide v13, v0, Ljava/util/GregorianCalendar;->time:J

    div-long v13, v13, v16

    add-long/2addr v11, v13

    .line 2338
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->time:J

    rem-long v13, v13, v16

    long-to-int v13, v13

    add-int/2addr v15, v13

    .line 2339
    int-to-long v13, v15

    cmp-long v13, v13, v16

    const-wide/16 v18, 0x1

    if-ltz v13, :cond_94

    .line 2340
    int-to-long v13, v15

    sub-long v13, v13, v16

    long-to-int v13, v13

    .line 2341
    .end local v15    # "timeOfDay":I
    .local v13, "timeOfDay":I
    add-long v11, v11, v18

    goto :goto_9e

    .line 2343
    .end local v13    # "timeOfDay":I
    .restart local v15    # "timeOfDay":I
    :cond_94
    :goto_94
    if-gez v15, :cond_9d

    .line 2344
    int-to-long v13, v15

    add-long v13, v13, v16

    long-to-int v15, v13

    .line 2345
    sub-long v11, v11, v18

    goto :goto_94

    .line 2343
    :cond_9d
    move v13, v15

    .line 2348
    .end local v15    # "timeOfDay":I
    .restart local v13    # "timeOfDay":I
    :goto_9e
    const-wide/32 v14, 0xaf93b

    add-long/2addr v11, v14

    .line 2350
    const/4 v14, 0x1

    .line 2352
    .local v14, "era":I
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v9, v11, v9

    if-ltz v9, :cond_ce

    .line 2354
    nop

    .line 2356
    nop

    .line 2371
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    cmp-long v9, v11, v9

    if-eqz v9, :cond_ba

    .line 2372
    sget-object v9, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    iget-object v10, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v9, v10, v11, v12}, Lsun/util/calendar/Gregorian;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2373
    iput-wide v11, v0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 2376
    :cond_ba
    iget-object v9, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v9

    .line 2377
    .local v9, "year":I
    if-gtz v9, :cond_c5

    .line 2378
    rsub-int/lit8 v9, v9, 0x1

    .line 2379
    const/4 v14, 0x0

    .line 2381
    :cond_c5
    sget-object v10, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    iput-object v10, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2382
    iget-object v10, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    iput-object v10, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2383
    goto :goto_fb

    .line 2386
    .end local v9    # "year":I
    :cond_ce
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v9

    iput-object v9, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2387
    sget-object v9, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v10}, Lsun/util/calendar/JulianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/JulianCalendar$Date;

    move-result-object v9

    iput-object v9, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 2388
    sget-object v9, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    iget-object v10, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v9, v10, v11, v12}, Lsun/util/calendar/JulianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2389
    iget-object v9, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/BaseCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v9

    .line 2390
    .local v9, "e":Lsun/util/calendar/Era;
    sget-object v10, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    aget-object v10, v10, v7

    if-ne v9, v10, :cond_f4

    .line 2391
    const/4 v14, 0x0

    .line 2393
    :cond_f4
    iget-object v10, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v10

    move v9, v10

    .line 2397
    .local v9, "year":I
    :goto_fb
    invoke-virtual {v0, v7, v14}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2398
    invoke-virtual {v0, v8, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2399
    or-int/lit8 v10, v1, 0x3

    .line 2401
    .local v10, "mask":I
    move/from16 v17, v5

    iget-object v5, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    sub-int/2addr v5, v8

    .line 2402
    .local v5, "month":I
    iget-object v15, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v15

    .line 2405
    .local v15, "dayOfMonth":I
    move/from16 v21, v8

    and-int/lit16 v8, v1, 0xa4

    if-eqz v8, :cond_12b

    .line 2407
    invoke-virtual {v0, v6, v5}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2408
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v15}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2409
    iget-object v6, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v6

    const/4 v8, 0x7

    invoke-virtual {v0, v8, v6}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2410
    or-int/lit16 v10, v10, 0xa4

    .line 2413
    :cond_12b
    and-int/lit16 v6, v1, 0x7e00

    if-eqz v6, :cond_183

    .line 2415
    const/16 v6, 0x9

    const/16 v8, 0xb

    if-eqz v13, :cond_166

    .line 2416
    const v26, 0x36ee80

    div-int v7, v13, v26

    .line 2417
    .local v7, "hours":I
    invoke-virtual {v0, v8, v7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2418
    div-int/lit8 v8, v7, 0xc

    invoke-virtual {v0, v6, v8}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2419
    rem-int/lit8 v6, v7, 0xc

    const/16 v8, 0xa

    invoke-virtual {v0, v8, v6}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2420
    rem-int v6, v13, v26

    .line 2421
    .local v6, "r":I
    const v25, 0xea60

    div-int v8, v6, v25

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v8}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2422
    rem-int v6, v6, v25

    .line 2423
    div-int/lit16 v2, v6, 0x3e8

    const/16 v8, 0xd

    invoke-virtual {v0, v8, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2424
    rem-int/lit16 v2, v6, 0x3e8

    const/16 v8, 0xe

    invoke-virtual {v0, v8, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2425
    .end local v6    # "r":I
    .end local v7    # "hours":I
    goto :goto_181

    .line 2426
    :cond_166
    const/4 v2, 0x0

    invoke-virtual {v0, v8, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2427
    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2428
    const/16 v8, 0xa

    invoke-virtual {v0, v8, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2429
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2430
    const/16 v8, 0xd

    invoke-virtual {v0, v8, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2431
    const/16 v8, 0xe

    invoke-virtual {v0, v8, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2433
    :goto_181
    or-int/lit16 v10, v10, 0x7e00

    .line 2437
    :cond_183
    and-int v2, v1, v17

    if-eqz v2, :cond_19d

    .line 2438
    iget-object v2, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    const/16 v22, 0x0

    aget v2, v2, v22

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2439
    iget-object v2, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    aget v2, v2, v21

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2440
    or-int v10, v10, v17

    .line 2443
    :cond_19d
    and-int/lit16 v2, v1, 0x158

    if-eqz v2, :cond_35b

    .line 2444
    iget-object v2, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    .line 2445
    .local v2, "normalizedYear":I
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v7, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    move/from16 v8, v21

    invoke-virtual {v6, v2, v8, v8, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v6

    .line 2446
    .local v6, "fixedDateJan1":J
    move/from16 v16, v9

    .end local v9    # "year":I
    .local v16, "year":I
    sub-long v8, v11, v6

    long-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    .line 2447
    .local v8, "dayOfYear":I
    move/from16 v17, v3

    move-object v9, v4

    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .local v9, "tz":Ljava/util/TimeZone;
    .local v17, "zoneOffset":I
    int-to-long v3, v15

    sub-long v3, v11, v3

    add-long v3, v3, v18

    .line 2448
    .local v3, "fixedDateMonth1":J
    const/16 v20, 0x0

    .line 2449
    .local v20, "cutoverGap":I
    iget-object v1, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    move-wide/from16 v22, v3

    .end local v3    # "fixedDateMonth1":J
    .local v22, "fixedDateMonth1":J
    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v1, v3, :cond_1cd

    iget v1, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_1cf

    :cond_1cd
    iget v1, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 2450
    .local v1, "cutoverYear":I
    :goto_1cf
    add-int/lit8 v3, v15, -0x1

    .line 2453
    .local v3, "relativeDayOfMonth":I
    if-ne v2, v1, :cond_20b

    .line 2455
    iget v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    move/from16 v24, v1

    .end local v1    # "cutoverYear":I
    .local v24, "cutoverYear":I
    iget v1, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v4, v1, :cond_1f2

    .line 2459
    iget-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v1, v11, v12}, Ljava/util/GregorianCalendar;->getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v6

    .line 2460
    move v1, v3

    .end local v3    # "relativeDayOfMonth":I
    .local v1, "relativeDayOfMonth":I
    iget-wide v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v11, v3

    if-ltz v3, :cond_1ef

    .line 2461
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v3, v11, v12}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v3

    .end local v22    # "fixedDateMonth1":J
    .local v3, "fixedDateMonth1":J
    goto :goto_1f5

    .line 2460
    .end local v3    # "fixedDateMonth1":J
    .restart local v22    # "fixedDateMonth1":J
    :cond_1ef
    move-wide/from16 v3, v22

    goto :goto_1f5

    .line 2455
    .end local v1    # "relativeDayOfMonth":I
    .local v3, "relativeDayOfMonth":I
    :cond_1f2
    move v1, v3

    .end local v3    # "relativeDayOfMonth":I
    .restart local v1    # "relativeDayOfMonth":I
    move-wide/from16 v3, v22

    .line 2464
    .end local v22    # "fixedDateMonth1":J
    .local v3, "fixedDateMonth1":J
    :goto_1f5
    move-wide/from16 v22, v3

    .end local v3    # "fixedDateMonth1":J
    .restart local v22    # "fixedDateMonth1":J
    sub-long v3, v11, v6

    long-to-int v3, v3

    const/16 v21, 0x1

    add-int/lit8 v3, v3, 0x1

    .line 2465
    .local v3, "realDayOfYear":I
    sub-int v20, v8, v3

    .line 2466
    move v8, v3

    .line 2467
    move/from16 v25, v3

    .end local v3    # "realDayOfYear":I
    .local v25, "realDayOfYear":I
    sub-long v3, v11, v22

    long-to-int v3, v3

    move v1, v3

    move-wide v3, v6

    move-wide/from16 v6, v22

    .end local v1    # "relativeDayOfMonth":I
    .local v3, "relativeDayOfMonth":I
    goto :goto_211

    .line 2453
    .end local v24    # "cutoverYear":I
    .end local v25    # "realDayOfYear":I
    .local v1, "cutoverYear":I
    :cond_20b
    move/from16 v24, v1

    move v1, v3

    .end local v3    # "relativeDayOfMonth":I
    .local v1, "relativeDayOfMonth":I
    .restart local v24    # "cutoverYear":I
    move-wide v3, v6

    move-wide/from16 v6, v22

    .line 2469
    .end local v22    # "fixedDateMonth1":J
    .local v3, "fixedDateJan1":J
    .local v6, "fixedDateMonth1":J
    :goto_211
    move/from16 v22, v1

    .end local v1    # "relativeDayOfMonth":I
    .local v22, "relativeDayOfMonth":I
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v8}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2470
    div-int/lit8 v1, v22, 0x7

    const/16 v21, 0x1

    add-int/lit8 v1, v1, 0x1

    move/from16 v23, v5

    .end local v5    # "month":I
    .local v23, "month":I
    const/16 v5, 0x8

    invoke-virtual {v0, v5, v1}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2472
    invoke-direct {v0, v3, v4, v11, v12}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v1

    .line 2476
    .local v1, "weekOfYear":I
    if-nez v1, :cond_2af

    .line 2484
    move-wide/from16 v25, v6

    .end local v6    # "fixedDateMonth1":J
    .local v25, "fixedDateMonth1":J
    sub-long v5, v3, v18

    .line 2485
    .local v5, "fixedDec31":J
    const-wide/16 v27, 0x16d

    sub-long v27, v3, v27

    .line 2486
    .local v27, "prevJan1":J
    add-int/lit8 v7, v24, 0x1

    if-le v2, v7, :cond_24d

    .line 2487
    add-int/lit8 v7, v2, -0x1

    invoke-static {v7}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_248

    .line 2488
    sub-long v27, v27, v18

    move-wide/from16 v30, v3

    move/from16 v29, v8

    move-wide/from16 v7, v27

    goto/16 :goto_2a7

    .line 2487
    :cond_248
    move-wide/from16 v30, v3

    move/from16 v29, v8

    goto :goto_2a5

    .line 2490
    :cond_24d
    iget v7, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-gt v2, v7, :cond_267

    .line 2491
    add-int/lit8 v7, v2, -0x1

    invoke-static {v7}, Lsun/util/calendar/CalendarUtils;->isJulianLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_262

    .line 2492
    sub-long v27, v27, v18

    move-wide/from16 v30, v3

    move/from16 v29, v8

    move-wide/from16 v7, v27

    goto :goto_2a7

    .line 2491
    :cond_262
    move-wide/from16 v30, v3

    move/from16 v29, v8

    goto :goto_2a5

    .line 2495
    :cond_267
    iget-object v7, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2497
    .local v7, "calForJan1":Lsun/util/calendar/BaseCalendar;
    invoke-direct {v0, v5, v6}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v18

    move-wide/from16 v30, v3

    .end local v3    # "fixedDateJan1":J
    .local v30, "fixedDateJan1":J
    invoke-virtual/range {v18 .. v18}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 2498
    .local v3, "prevYear":I
    iget v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne v3, v4, :cond_291

    .line 2499
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .line 2500
    .end local v7    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .local v4, "calForJan1":Lsun/util/calendar/BaseCalendar;
    sget-object v7, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    if-ne v4, v7, :cond_28a

    .line 2501
    move/from16 v29, v8

    const/4 v7, 0x0

    const/4 v8, 0x1

    .end local v8    # "dayOfYear":I
    .local v29, "dayOfYear":I
    invoke-virtual {v4, v3, v8, v8, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v27

    move-wide/from16 v7, v27

    goto :goto_2a7

    .line 2506
    .end local v29    # "dayOfYear":I
    .restart local v8    # "dayOfYear":I
    :cond_28a
    move/from16 v29, v8

    .end local v8    # "dayOfYear":I
    .restart local v29    # "dayOfYear":I
    iget-wide v7, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 2507
    .end local v27    # "prevJan1":J
    .local v7, "prevJan1":J
    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_2a7

    .line 2509
    .end local v4    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v29    # "dayOfYear":I
    .local v7, "calForJan1":Lsun/util/calendar/BaseCalendar;
    .restart local v8    # "dayOfYear":I
    .restart local v27    # "prevJan1":J
    :cond_291
    move-object v4, v7

    move/from16 v29, v8

    .end local v7    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v8    # "dayOfYear":I
    .restart local v4    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .restart local v29    # "dayOfYear":I
    iget v8, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-gt v3, v8, :cond_2a5

    .line 2510
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v4

    .line 2511
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v4, v3, v8, v8, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v27

    move-wide/from16 v7, v27

    goto :goto_2a7

    .line 2517
    .end local v4    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v29    # "dayOfYear":I
    .end local v30    # "fixedDateJan1":J
    .local v3, "fixedDateJan1":J
    .restart local v8    # "dayOfYear":I
    :cond_2a5
    :goto_2a5
    move-wide/from16 v7, v27

    .end local v3    # "fixedDateJan1":J
    .end local v8    # "dayOfYear":I
    .end local v27    # "prevJan1":J
    .local v7, "prevJan1":J
    .restart local v29    # "dayOfYear":I
    .restart local v30    # "fixedDateJan1":J
    :goto_2a7
    invoke-direct {v0, v7, v8, v5, v6}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v1

    .line 2518
    .end local v5    # "fixedDec31":J
    .end local v7    # "prevJan1":J
    move/from16 v21, v2

    goto/16 :goto_34a

    .line 2519
    .end local v25    # "fixedDateMonth1":J
    .end local v29    # "dayOfYear":I
    .end local v30    # "fixedDateJan1":J
    .restart local v3    # "fixedDateJan1":J
    .restart local v6    # "fixedDateMonth1":J
    .restart local v8    # "dayOfYear":I
    :cond_2af
    move-wide/from16 v30, v3

    move-wide/from16 v25, v6

    move/from16 v29, v8

    .end local v3    # "fixedDateJan1":J
    .end local v6    # "fixedDateMonth1":J
    .end local v8    # "dayOfYear":I
    .restart local v25    # "fixedDateMonth1":J
    .restart local v29    # "dayOfYear":I
    .restart local v30    # "fixedDateJan1":J
    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v2, v3, :cond_318

    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    const/16 v21, 0x1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2c4

    move/from16 v21, v2

    goto :goto_31a

    .line 2536
    :cond_2c4
    iget-object v3, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 2537
    .local v3, "calForJan1":Lsun/util/calendar/BaseCalendar;
    add-int/lit8 v4, v2, 0x1

    .line 2538
    .local v4, "nextYear":I
    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_2d4

    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ge v4, v5, :cond_2d4

    .line 2541
    iget v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 2543
    :cond_2d4
    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne v4, v5, :cond_2dc

    .line 2544
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    .line 2548
    :cond_2dc
    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-gt v4, v5, :cond_2f0

    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    iget v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v5, v6, :cond_2f0

    iget v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v4, v5, :cond_2eb

    goto :goto_2f0

    .line 2556
    :cond_2eb
    iget-wide v5, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 2557
    .local v5, "nextJan1":J
    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_2f6

    .line 2551
    .end local v5    # "nextJan1":J
    :cond_2f0
    :goto_2f0
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v3, v4, v8, v8, v7}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v5

    .line 2560
    .restart local v5    # "nextJan1":J
    :goto_2f6
    const-wide/16 v7, 0x6

    add-long/2addr v7, v5

    .line 2561
    move/from16 v21, v2

    .end local v2    # "normalizedYear":I
    .local v21, "normalizedYear":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v2

    .line 2560
    invoke-static {v7, v8, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v7

    .line 2562
    .local v7, "nextJan1st":J
    move-object/from16 v18, v3

    .end local v3    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .local v18, "calForJan1":Lsun/util/calendar/BaseCalendar;
    sub-long v2, v7, v5

    long-to-int v2, v2

    .line 2563
    .local v2, "ndays":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_34a

    const-wide/16 v27, 0x7

    sub-long v27, v7, v27

    cmp-long v3, v11, v27

    if-ltz v3, :cond_34a

    .line 2565
    const/4 v1, 0x1

    goto :goto_34a

    .line 2519
    .end local v4    # "nextYear":I
    .end local v5    # "nextJan1":J
    .end local v7    # "nextJan1st":J
    .end local v18    # "calForJan1":Lsun/util/calendar/BaseCalendar;
    .end local v21    # "normalizedYear":I
    .local v2, "normalizedYear":I
    :cond_318
    move/from16 v21, v2

    .line 2522
    .end local v2    # "normalizedYear":I
    .restart local v21    # "normalizedYear":I
    :goto_31a
    const/16 v2, 0x34

    if-lt v1, v2, :cond_34a

    .line 2523
    const-wide/16 v2, 0x16d

    add-long v3, v30, v2

    .line 2524
    .local v3, "nextJan1":J
    iget-object v2, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v2

    if-eqz v2, :cond_32c

    .line 2525
    add-long v3, v3, v18

    .line 2527
    :cond_32c
    const-wide/16 v5, 0x6

    add-long/2addr v5, v3

    .line 2528
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v2

    .line 2527
    invoke-static {v5, v6, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v5

    .line 2529
    .local v5, "nextJan1st":J
    sub-long v7, v5, v3

    long-to-int v2, v7

    .line 2530
    .local v2, "ndays":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v2, v7, :cond_349

    const-wide/16 v7, 0x7

    sub-long v7, v5, v7

    cmp-long v7, v11, v7

    if-ltz v7, :cond_349

    .line 2532
    const/4 v1, 0x1

    .line 2534
    .end local v2    # "ndays":I
    .end local v3    # "nextJan1":J
    .end local v5    # "nextJan1st":J
    :cond_349
    nop

    .line 2569
    :cond_34a
    :goto_34a
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2570
    const/4 v2, 0x4

    move-wide/from16 v3, v25

    .end local v25    # "fixedDateMonth1":J
    .local v3, "fixedDateMonth1":J
    invoke-direct {v0, v3, v4, v11, v12}, Ljava/util/GregorianCalendar;->getWeekNumber(JJ)I

    move-result v5

    invoke-virtual {v0, v2, v5}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2571
    or-int/lit16 v10, v10, 0x158

    goto :goto_362

    .line 2443
    .end local v1    # "weekOfYear":I
    .end local v16    # "year":I
    .end local v17    # "zoneOffset":I
    .end local v20    # "cutoverGap":I
    .end local v21    # "normalizedYear":I
    .end local v22    # "relativeDayOfMonth":I
    .end local v23    # "month":I
    .end local v24    # "cutoverYear":I
    .end local v29    # "dayOfYear":I
    .end local v30    # "fixedDateJan1":J
    .local v3, "zoneOffset":I
    .local v4, "tz":Ljava/util/TimeZone;
    .local v5, "month":I
    .local v9, "year":I
    :cond_35b
    move/from16 v17, v3

    move/from16 v23, v5

    move/from16 v16, v9

    move-object v9, v4

    .line 2573
    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .end local v5    # "month":I
    .local v9, "tz":Ljava/util/TimeZone;
    .restart local v16    # "year":I
    .restart local v17    # "zoneOffset":I
    .restart local v23    # "month":I
    :goto_362
    return v10
.end method

.method public static whitelist test-api from(Ljava/time/ZonedDateTime;)Ljava/util/GregorianCalendar;
    .registers 6
    .param p0, "zdt"    # Ljava/time/ZonedDateTime;

    .line 3418
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/time/ZoneId;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 3419
    .local v0, "cal":Ljava/util/GregorianCalendar;
    new-instance v1, Ljava/util/Date;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 3420
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 3421
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 3423
    :try_start_1f
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toEpochSecond()J

    move-result-wide v1

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Ljava/lang/Math;->multiplyExact(JI)J

    move-result-wide v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MILLI_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 3424
    invoke-virtual {p0, v3}, Ljava/time/ZonedDateTime;->get(Ljava/time/temporal/TemporalField;)I

    move-result v3

    int-to-long v3, v3

    .line 3423
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V
    :try_end_37
    .catch Ljava/lang/ArithmeticException; {:try_start_1f .. :try_end_37} :catch_39

    .line 3427
    nop

    .line 3428
    return-object v0

    .line 3425
    :catch_39
    move-exception v1

    .line 3426
    .local v1, "ex":Ljava/lang/ArithmeticException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private greylist-max-o getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;
    .registers 5
    .param p1, "fd"    # J

    .line 3220
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_d

    :cond_9
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 3221
    .local v0, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_d
    sget-object v1, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    .line 3222
    .local v1, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0, v1, p1, p2}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 3223
    return-object v1
.end method

.method private greylist-max-o getCurrentFixedDate()J
    .registers 3

    .line 3332
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v0, v1, :cond_9

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    goto :goto_11

    :cond_9
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    :goto_11
    return-wide v0
.end method

.method private greylist-max-o getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .registers 3

    .line 3130
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ge v0, v1, :cond_9

    .line 3131
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    return-object v0

    .line 3133
    :cond_9
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getFixedDate(Lsun/util/calendar/BaseCalendar;II)J
    .registers 27
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    .line 2976
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 2977
    .local v3, "month":I
    const/4 v4, 0x2

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_32

    .line 2980
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 2983
    const/16 v5, 0xb

    if-le v3, v5, :cond_1e

    .line 2984
    div-int/lit8 v5, v3, 0xc

    add-int v5, p2, v5

    .line 2985
    .end local p2    # "year":I
    .local v5, "year":I
    rem-int/lit8 v3, v3, 0xc

    goto :goto_34

    .line 2986
    .end local v5    # "year":I
    .restart local p2    # "year":I
    :cond_1e
    if-gez v3, :cond_2f

    .line 2987
    new-array v5, v6, [I

    .line 2988
    .local v5, "rem":[I
    const/16 v7, 0xc

    invoke-static {v3, v7, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v7

    add-int v7, p2, v7

    .line 2989
    .end local p2    # "year":I
    .local v7, "year":I
    const/4 v8, 0x0

    aget v3, v5, v8

    move v5, v7

    goto :goto_34

    .line 2986
    .end local v5    # "rem":[I
    .end local v7    # "year":I
    .restart local p2    # "year":I
    :cond_2f
    move/from16 v5, p2

    goto :goto_34

    .line 2977
    :cond_32
    move/from16 v5, p2

    .line 2995
    .end local p2    # "year":I
    .local v5, "year":I
    :goto_34
    add-int/lit8 v7, v3, 0x1

    .line 2996
    sget-object v8, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v1, v8, :cond_3d

    iget-object v8, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_3e

    :cond_3d
    const/4 v8, 0x0

    .line 2995
    :goto_3e
    invoke-virtual {v1, v5, v7, v6, v8}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v7

    .line 2997
    .local v7, "fixedDate":J
    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v4

    const-wide/16 v11, 0x6

    const-wide/16 v13, 0x1

    const/4 v15, 0x7

    if-eqz v4, :cond_d9

    .line 2999
    const/4 v4, 0x5

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v16

    if-eqz v16, :cond_63

    .line 3006
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_13a

    .line 3009
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 3010
    sub-long/2addr v7, v13

    goto/16 :goto_13a

    .line 3013
    :cond_63
    const/4 v4, 0x4

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v16

    if-eqz v16, :cond_a0

    .line 3014
    add-long v13, v7, v11

    .line 3015
    move/from16 v16, v6

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    .line 3014
    invoke-static {v13, v14, v6}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v13

    .line 3018
    .local v13, "firstDayOfWeek":J
    sub-long v17, v13, v7

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v6

    const-wide/16 v19, 0x7

    int-to-long v9, v6

    cmp-long v6, v17, v9

    if-ltz v6, :cond_85

    .line 3019
    sub-long v13, v13, v19

    .line 3021
    :cond_85
    invoke-static {v2, v15}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_94

    .line 3022
    add-long/2addr v11, v13

    .line 3023
    invoke-virtual {v0, v15}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    .line 3022
    invoke-static {v11, v12, v6}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v13

    .line 3028
    :cond_94
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v4, v15

    int-to-long v9, v4

    add-long v7, v13, v9

    .line 3029
    .end local v13    # "firstDayOfWeek":J
    goto/16 :goto_13a

    .line 3031
    :cond_a0
    invoke-static {v2, v15}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 3032
    invoke-virtual {v0, v15}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    .local v4, "dayOfWeek":I
    goto :goto_af

    .line 3034
    .end local v4    # "dayOfWeek":I
    :cond_ab
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v4

    .line 3040
    .restart local v4    # "dayOfWeek":I
    :goto_af
    const/16 v6, 0x8

    invoke-static {v2, v6}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v9

    if-eqz v9, :cond_bc

    .line 3041
    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    .local v6, "dowim":I
    goto :goto_bd

    .line 3043
    .end local v6    # "dowim":I
    :cond_bc
    const/4 v6, 0x1

    .line 3045
    .restart local v6    # "dowim":I
    :goto_bd
    if-ltz v6, :cond_c9

    .line 3046
    mul-int/lit8 v9, v6, 0x7

    int-to-long v9, v9

    add-long/2addr v9, v7

    sub-long/2addr v9, v13

    invoke-static {v9, v10, v4}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v7

    goto :goto_d8

    .line 3051
    :cond_c9
    invoke-direct {v0, v3, v5}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v9

    add-int/lit8 v10, v6, 0x1

    mul-int/2addr v10, v15

    add-int/2addr v9, v10

    .line 3053
    .local v9, "lastDate":I
    int-to-long v10, v9

    add-long/2addr v10, v7

    sub-long/2addr v10, v13

    invoke-static {v10, v11, v4}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v7

    .line 3056
    .end local v4    # "dayOfWeek":I
    .end local v6    # "dowim":I
    .end local v9    # "lastDate":I
    :goto_d8
    goto :goto_13a

    .line 3059
    :cond_d9
    const-wide/16 v19, 0x7

    iget v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne v5, v4, :cond_f1

    sget-object v4, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v1, v4, :cond_f1

    iget-wide v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_f1

    iget v4, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v4, v6, :cond_f1

    .line 3065
    iget-wide v7, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 3068
    :cond_f1
    const/4 v4, 0x6

    invoke-static {v2, v4}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_100

    .line 3070
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    int-to-long v9, v4

    add-long/2addr v7, v9

    .line 3071
    sub-long/2addr v7, v13

    goto :goto_13a

    .line 3073
    :cond_100
    add-long v9, v7, v11

    .line 3074
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v4

    .line 3073
    invoke-static {v9, v10, v4}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v9

    .line 3077
    .local v9, "firstDayOfWeek":J
    sub-long v16, v9, v7

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    move-wide/from16 v21, v11

    int-to-long v11, v4

    cmp-long v4, v16, v11

    if-ltz v4, :cond_119

    .line 3078
    sub-long v9, v9, v19

    .line 3080
    :cond_119
    invoke-static {v2, v15}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 3081
    invoke-virtual {v0, v15}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    .line 3082
    .restart local v4    # "dayOfWeek":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    if-eq v4, v6, :cond_12f

    .line 3083
    add-long v11, v9, v21

    invoke-static {v11, v12, v4}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v9

    .line 3087
    .end local v4    # "dayOfWeek":I
    :cond_12f
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    int-to-long v11, v4

    sub-long/2addr v11, v13

    mul-long v11, v11, v19

    add-long v7, v9, v11

    .line 3091
    .end local v9    # "firstDayOfWeek":J
    :cond_13a
    :goto_13a
    return-wide v7
.end method

.method private greylist-max-o getFixedDateJan1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 3155
    nop

    .line 3157
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-eq v0, v1, :cond_10

    .line 3158
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v0, p2, v0

    if-ltz v0, :cond_10

    .line 3163
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    return-wide v0

    .line 3167
    :cond_10
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v0

    .line 3168
    .local v0, "juliancal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v3, v2}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 3181
    nop

    .line 3183
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 3184
    .local v0, "gCutover":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v1

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1d

    .line 3185
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v1

    if-ne v1, v4, :cond_1d

    .line 3187
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p2, v4

    add-long/2addr v4, v2

    return-wide v4

    .line 3192
    :cond_1d
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    if-ne v1, v5, :cond_4e

    .line 3194
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v1

    .line 3195
    .local v1, "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v2, v3, :cond_4b

    .line 3196
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_4b

    .line 3198
    sget-object v2, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 3199
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v5

    .line 3198
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v4, v6}, Lsun/util/calendar/JulianCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v2

    .local v2, "fixedDateMonth1":J
    goto :goto_4d

    .line 3204
    .end local v2    # "fixedDateMonth1":J
    :cond_4b
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 3206
    .end local v1    # "jLastDate":Lsun/util/calendar/BaseCalendar$Date;
    .restart local v2    # "fixedDateMonth1":J
    :goto_4d
    goto :goto_56

    .line 3208
    .end local v2    # "fixedDateMonth1":J
    :cond_4e
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v4, v1

    sub-long v4, p2, v4

    add-long/2addr v2, v4

    .line 3211
    .restart local v2    # "fixedDateMonth1":J
    :goto_56
    return-wide v2
.end method

.method private greylist-max-o getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 3

    .line 3231
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized greylist-max-o getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;
    .registers 2

    const-class v0, Ljava/util/GregorianCalendar;

    monitor-enter v0

    .line 3117
    :try_start_3
    sget-object v1, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    if-nez v1, :cond_19

    .line 3118
    const-string v1, "julian"

    invoke-static {v1}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/JulianCalendar;

    sput-object v1, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    .line 3119
    sget-object v1, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;

    invoke-virtual {v1}, Lsun/util/calendar/JulianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v1

    sput-object v1, Ljava/util/GregorianCalendar;->jeras:[Lsun/util/calendar/Era;

    .line 3121
    :cond_19
    sget-object v1, Ljava/util/GregorianCalendar;->jcal:Lsun/util/calendar/JulianCalendar;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    monitor-exit v0

    return-object v1

    .line 3116
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private greylist-max-o getLastJulianDate()Lsun/util/calendar/BaseCalendar$Date;
    .registers 5

    .line 3239
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o getNormalizedCalendar()Ljava/util/GregorianCalendar;
    .registers 3

    .line 3101
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isFullyNormalized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3102
    move-object v0, p0

    .local v0, "gc":Ljava/util/GregorianCalendar;
    goto :goto_15

    .line 3105
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    :cond_8
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 3106
    .restart local v0    # "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 3107
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    .line 3109
    :goto_15
    return-object v0
.end method

.method private static greylist-max-o getRolledValue(IIII)I
    .registers 6
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 3339
    nop

    .line 3340
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 3341
    .local v0, "range":I
    rem-int/2addr p1, v0

    .line 3342
    add-int v1, p0, p1

    .line 3343
    .local v1, "n":I
    if-le v1, p3, :cond_c

    .line 3344
    sub-int/2addr v1, v0

    goto :goto_f

    .line 3345
    :cond_c
    if-ge v1, p2, :cond_f

    .line 3346
    add-int/2addr v1, v0

    .line 3348
    :cond_f
    :goto_f
    nop

    .line 3349
    return v1
.end method

.method private greylist-max-o getWeekNumber(JJ)I
    .registers 10
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    .line 2588
    const-wide/16 v0, 0x6

    add-long/2addr v0, p1

    .line 2589
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v2

    .line 2588
    invoke-static {v0, v1, v2}, Lsun/util/calendar/Gregorian;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    .line 2590
    .local v0, "fixedDay1st":J
    sub-long v2, v0, p1

    long-to-int v2, v2

    .line 2591
    .local v2, "ndays":I
    nop

    .line 2592
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_18

    .line 2593
    const-wide/16 v3, 0x7

    sub-long/2addr v0, v3

    .line 2595
    :cond_18
    sub-long v3, p3, v0

    long-to-int v3, v3

    .line 2596
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_22

    .line 2597
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 2599
    :cond_22
    const/4 v4, 0x7

    invoke-static {v3, v4}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private greylist-max-o getYearOffsetInMillis()J
    .registers 7

    .line 1959
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x18

    int-to-long v0, v0

    .line 1960
    .local v0, "t":J
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1961
    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    .line 1962
    const/16 v4, 0xc

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 1963
    mul-long/2addr v0, v2

    .line 1964
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 1965
    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 1966
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    .line 1967
    const/16 v4, 0xf

    invoke-virtual {p0, v4}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 1966
    return-wide v2
.end method

.method private greylist-max-o internalGetEra()I
    .registers 3

    .line 3357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0
.end method

.method private greylist-max-o isCutoverYear(I)Z
    .registers 4
    .param p1, "normalizedYear"    # I

    .line 3141
    iget-object v0, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v1, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-ne v0, v1, :cond_9

    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    goto :goto_b

    :cond_9
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 3142
    .local v0, "cutoverYear":I
    :goto_b
    if-ne p1, v0, :cond_f

    const/4 v1, 0x1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method private greylist-max-o monthLength(I)I
    .registers 4
    .param p1, "month"    # I

    .line 3259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3260
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_d

    .line 3261
    rsub-int/lit8 v0, v0, 0x1

    .line 3263
    :cond_d
    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;->monthLength(II)I

    move-result v1

    return v1
.end method

.method private greylist-max-o monthLength(II)I
    .registers 4
    .param p1, "month"    # I
    .param p2, "year"    # I

    .line 3249
    invoke-virtual {p0, p2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_f

    :cond_b
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    :goto_f
    return v0
.end method

.method private greylist-max-o pinDayOfMonth()V
    .registers 5

    .line 3313
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3315
    .local v0, "year":I
    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v2, 0x5

    if-gt v0, v1, :cond_18

    iget v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge v0, v1, :cond_f

    goto :goto_18

    .line 3318
    :cond_f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v1

    .line 3319
    .local v1, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v3

    .local v3, "monthLen":I
    goto :goto_21

    .line 3316
    .end local v1    # "gc":Ljava/util/GregorianCalendar;
    .end local v3    # "monthLen":I
    :cond_18
    :goto_18
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v3

    .line 3321
    .restart local v3    # "monthLen":I
    :goto_21
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    .line 3322
    .local v1, "dom":I
    if-le v1, v3, :cond_2a

    .line 3323
    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 3325
    :cond_2a
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3366
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3367
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-nez v0, :cond_17

    .line 3368
    sget-object v0, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 3369
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->cachedFixedDate:J

    .line 3371
    :cond_17
    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    .line 3372
    return-void
.end method

.method private greylist-max-o setGregorianChange(J)V
    .registers 9
    .param p1, "cutoverTime"    # J

    .line 777
    iput-wide p1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 778
    const-wide/32 v0, 0x5265c00

    invoke-static {p1, p2, v0, v1}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0xaf93b

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 786
    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    if-nez v0, :cond_1f

    .line 787
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 790
    :cond_1f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 793
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v3

    iput v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    .line 795
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    .line 796
    .local v3, "julianCal":Lsun/util/calendar/BaseCalendar;
    sget-object v4, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 797
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    sub-long/2addr v4, v1

    invoke-virtual {v3, v0, v4, v5}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 798
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    iput v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    .line 800
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->time:J

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v1, v1, v4

    if-gez v1, :cond_4d

    .line 803
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->setUnnormalized()V

    .line 805
    :cond_4d
    return-void
.end method

.method private greylist-max-o yearLength()I
    .registers 3

    .line 3299
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v0

    .line 3300
    .local v0, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v1

    if-nez v1, :cond_d

    .line 3301
    rsub-int/lit8 v0, v0, 0x1

    .line 3303
    :cond_d
    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;->yearLength(I)I

    move-result v1

    return v1
.end method

.method private greylist-max-o yearLength(I)I
    .registers 3
    .param p1, "year"    # I

    .line 3291
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method


# virtual methods
.method public whitelist test-api add(II)V
    .registers 15
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 923
    if-nez p2, :cond_3

    .line 924
    return-void

    .line 927
    :cond_3
    if-ltz p1, :cond_125

    const/16 v0, 0xf

    if-ge p1, v0, :cond_125

    .line 932
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 934
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3e

    .line 935
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 936
    .local v2, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v3

    if-ne v3, v1, :cond_2a

    .line 937
    add-int/2addr v2, p2

    .line 938
    if-lez v2, :cond_21

    .line 939
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_39

    .line 941
    :cond_21
    rsub-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 943
    invoke-virtual {p0, v0, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_39

    .line 947
    :cond_2a
    sub-int/2addr v2, p2

    .line 948
    if-lez v2, :cond_31

    .line 949
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_39

    .line 951
    :cond_31
    rsub-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 953
    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 956
    :goto_39
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    .line 957
    .end local v2    # "year":I
    goto/16 :goto_124

    :cond_3e
    const/4 v2, 0x2

    const/16 v3, 0xc

    if-ne p1, v2, :cond_95

    .line 958
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    add-int/2addr v4, p2

    .line 959
    .local v4, "month":I
    invoke-virtual {p0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v5

    .line 962
    .local v5, "year":I
    if-ltz v4, :cond_51

    .line 963
    div-int/lit8 v3, v4, 0xc

    .local v3, "y_amount":I
    goto :goto_56

    .line 965
    .end local v3    # "y_amount":I
    :cond_51
    add-int/lit8 v6, v4, 0x1

    div-int/2addr v6, v3

    add-int/lit8 v3, v6, -0x1

    .line 967
    .restart local v3    # "y_amount":I
    :goto_56
    if-eqz v3, :cond_7d

    .line 968
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v6

    if-ne v6, v1, :cond_6e

    .line 969
    add-int/2addr v5, v3

    .line 970
    if-lez v5, :cond_65

    .line 971
    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_7d

    .line 973
    :cond_65
    rsub-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 975
    invoke-virtual {p0, v0, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_7d

    .line 979
    :cond_6e
    sub-int/2addr v5, v3

    .line 980
    if-lez v5, :cond_75

    .line 981
    invoke-virtual {p0, v1, v5}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_7d

    .line 983
    :cond_75
    rsub-int/lit8 v6, v5, 0x1

    invoke-virtual {p0, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 985
    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 990
    :cond_7d
    :goto_7d
    if-ltz v4, :cond_85

    .line 991
    rem-int/lit8 v0, v4, 0xc

    invoke-virtual {p0, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_90

    .line 994
    :cond_85
    rem-int/lit8 v4, v4, 0xc

    .line 995
    if-gez v4, :cond_8b

    .line 996
    add-int/lit8 v4, v4, 0xc

    .line 998
    :cond_8b
    add-int/lit8 v0, v4, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1000
    :goto_90
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->pinDayOfMonth()V

    .line 1001
    .end local v3    # "y_amount":I
    .end local v4    # "month":I
    .end local v5    # "year":I
    goto/16 :goto_124

    :cond_95
    if-nez p1, :cond_a7

    .line 1002
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    add-int/2addr v2, p2

    .line 1003
    .local v2, "era":I
    if-gez v2, :cond_9f

    .line 1004
    const/4 v2, 0x0

    .line 1006
    :cond_9f
    if-le v2, v1, :cond_a2

    .line 1007
    const/4 v2, 0x1

    .line 1009
    :cond_a2
    invoke-virtual {p0, v0, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1010
    .end local v2    # "era":I
    goto/16 :goto_124

    .line 1011
    :cond_a7
    int-to-long v0, p2

    .line 1012
    .local v0, "delta":J
    const-wide/16 v4, 0x0

    .line 1013
    .local v4, "timeOfDay":J
    const-wide/16 v6, 0x3e8

    packed-switch p1, :pswitch_data_12c

    goto :goto_ca

    .line 1030
    :pswitch_b0
    goto :goto_ca

    .line 1026
    :pswitch_b1
    mul-long/2addr v0, v6

    .line 1027
    goto :goto_ca

    .line 1022
    :pswitch_b3
    const-wide/32 v8, 0xea60

    mul-long/2addr v0, v8

    .line 1023
    goto :goto_ca

    .line 1018
    :pswitch_b8
    const-wide/32 v8, 0x36ee80

    mul-long/2addr v0, v8

    .line 1019
    goto :goto_ca

    .line 1049
    :pswitch_bd
    div-int/lit8 v2, p2, 0x2

    int-to-long v0, v2

    .line 1050
    rem-int/lit8 v2, p2, 0x2

    mul-int/2addr v2, v3

    int-to-long v4, v2

    goto :goto_ca

    .line 1044
    :pswitch_c5
    goto :goto_ca

    .line 1038
    :pswitch_c6
    const-wide/16 v8, 0x7

    mul-long/2addr v0, v8

    .line 1039
    nop

    .line 1056
    :goto_ca
    const/16 v2, 0xa

    if-lt p1, v2, :cond_d5

    .line 1057
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    add-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1058
    return-void

    .line 1067
    :cond_d5
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    .line 1068
    .local v8, "fd":J
    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v10, v2

    add-long/2addr v4, v10

    .line 1069
    const-wide/16 v10, 0x3c

    mul-long/2addr v4, v10

    .line 1070
    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    .line 1071
    mul-long/2addr v4, v10

    .line 1072
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    .line 1073
    mul-long/2addr v4, v6

    .line 1074
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v4, v2

    .line 1075
    const-wide/32 v2, 0x5265c00

    cmp-long v6, v4, v2

    const-wide/16 v10, 0x1

    if-ltz v6, :cond_108

    .line 1076
    add-long/2addr v8, v10

    .line 1077
    sub-long/2addr v4, v2

    goto :goto_110

    .line 1078
    :cond_108
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_110

    .line 1079
    sub-long/2addr v8, v10

    .line 1080
    add-long/2addr v4, v2

    .line 1083
    :cond_110
    :goto_110
    add-long/2addr v8, v0

    .line 1086
    const-wide/32 v6, 0xaf93b

    sub-long v6, v8, v6

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    .line 1090
    .local v6, "utcTime":J
    const/4 v2, 0x0

    .line 1093
    .local v2, "tzMask":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {p0, v2, v6, v7, v3}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v10

    .line 1096
    .local v10, "millis":J
    invoke-virtual {p0, v10, v11}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1099
    .end local v0    # "delta":J
    .end local v2    # "tzMask":I
    .end local v4    # "timeOfDay":J
    .end local v6    # "utcTime":J
    .end local v8    # "fd":J
    .end local v10    # "millis":J
    :goto_124
    return-void

    .line 928
    :cond_125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    nop

    :pswitch_data_12c
    .packed-switch 0x3
        :pswitch_c6
        :pswitch_c6
        :pswitch_c5
        :pswitch_c5
        :pswitch_c5
        :pswitch_c6
        :pswitch_bd
        :pswitch_b8
        :pswitch_b8
        :pswitch_b3
        :pswitch_b1
        :pswitch_b0
    .end packed-switch
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 1973
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1975
    .local v0, "other":Ljava/util/GregorianCalendar;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1976
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_29

    .line 1977
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_25

    .line 1978
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_29

    .line 1980
    :cond_25
    iget-object v1, v0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1983
    :cond_29
    :goto_29
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 1984
    iput-object v1, v0, Ljava/util/GregorianCalendar;->zoneOffsets:[I

    .line 1985
    return-object v0
.end method

.method protected whitelist test-api computeFields()V
    .registers 4

    .line 2269
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isPartiallyNormalized()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2271
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v0

    .line 2272
    .local v0, "mask":I
    not-int v1, v0

    const v2, 0x1ffff

    and-int/2addr v1, v2

    .line 2275
    .local v1, "fieldMask":I
    if-nez v1, :cond_15

    iget-object v2, p0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    if-nez v2, :cond_1f

    .line 2276
    :cond_15
    const v2, 0x18000

    and-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v2

    or-int/2addr v0, v2

    .line 2278
    nop

    .line 2280
    .end local v1    # "fieldMask":I
    :cond_1f
    goto :goto_27

    .line 2281
    .end local v0    # "mask":I
    :cond_20
    const v0, 0x1ffff

    .line 2282
    .restart local v0    # "mask":I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->computeFields(II)I

    .line 2285
    :goto_27
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 2286
    return-void
.end method

.method protected whitelist test-api computeTime()V
    .registers 21

    .line 2614
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v1

    const/16 v2, 0x11

    if-nez v1, :cond_3d

    .line 2615
    iget-object v1, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    if-nez v1, :cond_12

    .line 2616
    new-array v1, v2, [I

    iput-object v1, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    .line 2618
    :cond_12
    const/4 v1, 0x0

    .local v1, "field":I
    :goto_13
    if-ge v1, v2, :cond_3d

    .line 2619
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 2620
    .local v3, "value":I
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 2622
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v4

    if-lt v3, v4, :cond_2c

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v4

    if-gt v3, v4, :cond_2c

    goto :goto_36

    .line 2623
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2626
    :cond_36
    :goto_36
    iget-object v4, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    aput v3, v4, v1

    .line 2618
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 2632
    .end local v1    # "field":I
    :cond_3d
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->selectFields()I

    move-result v1

    .line 2637
    .local v1, "fieldMask":I
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v4

    goto :goto_4f

    :cond_4d
    const/16 v4, 0x7b2

    .line 2639
    .local v4, "year":I
    :goto_4f
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v5

    .line 2640
    .local v5, "era":I
    if-nez v5, :cond_58

    .line 2641
    rsub-int/lit8 v4, v4, 0x1

    goto :goto_5a

    .line 2642
    :cond_58
    if-ne v5, v3, :cond_20e

    .line 2651
    :goto_5a
    const/4 v6, 0x0

    if-gtz v4, :cond_68

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->isSet(I)Z

    move-result v7

    if-nez v7, :cond_68

    .line 2652
    or-int/lit8 v1, v1, 0x1

    .line 2653
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->setFieldsComputed(I)V

    .line 2658
    :cond_68
    const-wide/16 v7, 0x0

    .line 2659
    .local v7, "timeOfDay":J
    const/16 v3, 0xb

    invoke-static {v1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v9

    const/16 v10, 0xc

    if-eqz v9, :cond_7b

    .line 2660
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v11, v3

    add-long/2addr v7, v11

    goto :goto_92

    .line 2662
    :cond_7b
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v11, v3

    add-long/2addr v7, v11

    .line 2664
    const/16 v3, 0x9

    invoke-static {v1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v9

    if-eqz v9, :cond_92

    .line 2665
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    mul-int/2addr v3, v10

    int-to-long v11, v3

    add-long/2addr v7, v11

    .line 2668
    :cond_92
    :goto_92
    const-wide/16 v11, 0x3c

    mul-long/2addr v7, v11

    .line 2669
    invoke-virtual {v0, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 2670
    mul-long/2addr v7, v11

    .line 2671
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 2672
    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 2673
    const/16 v3, 0xe

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v7, v9

    .line 2677
    const-wide/32 v9, 0x5265c00

    div-long v11, v7, v9

    .line 2678
    .local v11, "fixedDate":J
    rem-long/2addr v7, v9

    .line 2679
    :goto_b5
    const-wide/16 v13, 0x0

    cmp-long v3, v7, v13

    if-gez v3, :cond_c0

    .line 2680
    add-long/2addr v7, v9

    .line 2681
    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    goto :goto_b5

    .line 2687
    :cond_c0
    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-le v4, v3, :cond_e6

    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-le v4, v3, :cond_e6

    .line 2688
    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-direct {v0, v3, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 2689
    .local v13, "gfd":J
    move-wide v15, v9

    iget-wide v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v13, v9

    if-ltz v3, :cond_dc

    .line 2690
    move-wide v9, v13

    .line 2691
    .end local v11    # "fixedDate":J
    .local v9, "fixedDate":J
    move-wide/from16 v17, v15

    move-wide v15, v7

    goto/16 :goto_16a

    .line 2693
    .end local v9    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_dc
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    invoke-direct {v0, v3, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v9

    add-long/2addr v9, v11

    .local v9, "jfd":J
    goto :goto_116

    .line 2687
    .end local v9    # "jfd":J
    .end local v13    # "gfd":J
    :cond_e6
    move-wide v15, v9

    .line 2694
    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ge v4, v3, :cond_106

    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge v4, v3, :cond_106

    .line 2695
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    invoke-direct {v0, v3, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v9

    add-long/2addr v9, v11

    .line 2696
    .restart local v9    # "jfd":J
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v9, v13

    if-gez v3, :cond_104

    .line 2697
    move-wide v11, v9

    .line 2698
    move-wide/from16 v17, v15

    move-wide v15, v7

    goto/16 :goto_16a

    .line 2700
    :cond_104
    move-wide v13, v9

    .restart local v13    # "gfd":J
    goto :goto_116

    .line 2702
    .end local v9    # "jfd":J
    .end local v13    # "gfd":J
    :cond_106
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    invoke-direct {v0, v3, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v9

    add-long/2addr v9, v11

    .line 2703
    .restart local v9    # "jfd":J
    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-direct {v0, v3, v4, v1}, Ljava/util/GregorianCalendar;->getFixedDate(Lsun/util/calendar/BaseCalendar;II)J

    move-result-wide v13

    add-long/2addr v13, v11

    .line 2710
    .restart local v13    # "gfd":J
    :goto_116
    const/4 v3, 0x6

    invoke-static {v1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v3

    if-nez v3, :cond_128

    const/4 v3, 0x3

    invoke-static {v1, v3}, Ljava/util/GregorianCalendar;->isFieldSet(II)Z

    move-result v3

    if-eqz v3, :cond_125

    goto :goto_128

    :cond_125
    move-wide/from16 v17, v15

    goto :goto_13b

    .line 2711
    :cond_128
    :goto_128
    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    move-wide/from16 v17, v15

    iget v15, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v3, v15, :cond_133

    .line 2712
    move-wide v11, v9

    .line 2713
    move-wide v15, v7

    goto :goto_16a

    .line 2714
    :cond_133
    iget v3, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne v4, v3, :cond_13b

    .line 2715
    move-wide v11, v13

    .line 2716
    move-wide v15, v7

    move-wide v9, v11

    goto :goto_16a

    .line 2720
    :cond_13b
    :goto_13b
    move-wide v15, v7

    .end local v7    # "timeOfDay":J
    .local v15, "timeOfDay":J
    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v6, v13, v6

    if-ltz v6, :cond_15b

    .line 2721
    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v6, v9, v6

    if-ltz v6, :cond_14b

    .line 2722
    move-wide v6, v13

    move-wide v9, v6

    .end local v11    # "fixedDate":J
    .local v6, "fixedDate":J
    goto :goto_16a

    .line 2727
    .end local v6    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_14b
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    sget-object v7, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    if-eq v6, v7, :cond_158

    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    if-nez v6, :cond_156

    goto :goto_158

    .line 2730
    :cond_156
    move-wide v6, v9

    .end local v11    # "fixedDate":J
    .restart local v6    # "fixedDate":J
    goto :goto_16a

    .line 2728
    .end local v6    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_158
    :goto_158
    move-wide v6, v13

    move-wide v9, v6

    .end local v11    # "fixedDate":J
    .restart local v6    # "fixedDate":J
    goto :goto_16a

    .line 2734
    .end local v6    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_15b
    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v6, v9, v6

    if-gez v6, :cond_163

    .line 2735
    move-wide v6, v9

    .end local v11    # "fixedDate":J
    .restart local v6    # "fixedDate":J
    goto :goto_16a

    .line 2738
    .end local v6    # "fixedDate":J
    .restart local v11    # "fixedDate":J
    :cond_163
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v6

    if-eqz v6, :cond_204

    .line 2743
    move-wide v6, v9

    .line 2749
    .end local v11    # "fixedDate":J
    .end local v13    # "gfd":J
    .local v9, "fixedDate":J
    :goto_16a
    const-wide/32 v6, 0xaf93b

    sub-long v6, v9, v6

    mul-long v6, v6, v17

    add-long/2addr v6, v15

    .line 2764
    .local v6, "millis":J
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    .line 2766
    .local v8, "zone":Ljava/util/TimeZone;
    const v11, 0x18000

    and-int/2addr v11, v1

    .line 2768
    .local v11, "tzMask":I
    invoke-direct {v0, v11, v6, v7, v8}, Ljava/util/GregorianCalendar;->adjustForZoneAndDaylightSavingsTime(IJLjava/util/TimeZone;)J

    move-result-wide v6

    .line 2772
    iput-wide v6, v0, Ljava/util/GregorianCalendar;->time:J

    .line 2774
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getSetStateFields()I

    move-result v12

    or-int/2addr v12, v1

    invoke-direct {v0, v12, v11}, Ljava/util/GregorianCalendar;->computeFields(II)I

    move-result v12

    .line 2776
    .local v12, "mask":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v13

    if-nez v13, :cond_1fc

    .line 2777
    const/4 v13, 0x0

    .local v13, "field":I
    :goto_190
    if-ge v13, v2, :cond_1f7

    .line 2778
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->isExternallySet(I)Z

    move-result v14

    if-nez v14, :cond_199

    .line 2779
    goto :goto_1a3

    .line 2781
    :cond_199
    iget-object v14, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    aget v14, v14, v13

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    if-ne v14, v2, :cond_1a8

    .line 2777
    :goto_1a3
    add-int/lit8 v13, v13, 0x1

    const/16 v2, 0x11

    goto :goto_190

    .line 2782
    :cond_1a8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    aget v14, v14, v13

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v14, " -> "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2784
    .local v2, "s":Ljava/lang/String;
    iget-object v14, v0, Ljava/util/GregorianCalendar;->originalFields:[I

    iget-object v3, v0, Ljava/util/GregorianCalendar;->fields:[I

    move/from16 v18, v1

    .end local v1    # "fieldMask":I
    .local v18, "fieldMask":I
    iget-object v1, v0, Ljava/util/GregorianCalendar;->fields:[I

    array-length v1, v1

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "year":I
    .local v19, "year":I
    invoke-static {v14, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2785
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v13}, Ljava/util/GregorianCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2777
    .end local v2    # "s":Ljava/lang/String;
    .end local v18    # "fieldMask":I
    .end local v19    # "year":I
    .restart local v1    # "fieldMask":I
    .restart local v4    # "year":I
    :cond_1f7
    move/from16 v18, v1

    move/from16 v19, v4

    .end local v1    # "fieldMask":I
    .end local v4    # "year":I
    .restart local v18    # "fieldMask":I
    .restart local v19    # "year":I
    goto :goto_200

    .line 2776
    .end local v13    # "field":I
    .end local v18    # "fieldMask":I
    .end local v19    # "year":I
    .restart local v1    # "fieldMask":I
    .restart local v4    # "year":I
    :cond_1fc
    move/from16 v18, v1

    move/from16 v19, v4

    .line 2789
    .end local v1    # "fieldMask":I
    .end local v4    # "year":I
    .restart local v18    # "fieldMask":I
    .restart local v19    # "year":I
    :goto_200
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->setFieldsNormalized(I)V

    .line 2790
    return-void

    .line 2739
    .end local v6    # "millis":J
    .end local v8    # "zone":Ljava/util/TimeZone;
    .end local v12    # "mask":I
    .end local v18    # "fieldMask":I
    .end local v19    # "year":I
    .restart local v1    # "fieldMask":I
    .restart local v4    # "year":I
    .local v9, "jfd":J
    .local v11, "fixedDate":J
    .local v13, "gfd":J
    :cond_204
    move/from16 v18, v1

    .end local v1    # "fieldMask":I
    .restart local v18    # "fieldMask":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "the specified date doesn\'t exist"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2647
    .end local v9    # "jfd":J
    .end local v11    # "fixedDate":J
    .end local v13    # "gfd":J
    .end local v15    # "timeOfDay":J
    .end local v18    # "fieldMask":I
    .restart local v1    # "fieldMask":I
    :cond_20e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid era"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 878
    instance-of v0, p1, Ljava/util/GregorianCalendar;

    if-eqz v0, :cond_17

    .line 879
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-object v2, p1

    check-cast v2, Ljava/util/GregorianCalendar;

    iget-wide v2, v2, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 878
    :goto_18
    return v0
.end method

.method public whitelist test-api getActualMaximum(I)I
    .registers 20
    .param p1, "field"    # I

    .line 1725
    move-object/from16 v0, p0

    move/from16 v1, p1

    const v2, 0x1fe81

    .line 1728
    .local v2, "fieldsForFixedMax":I
    const/4 v3, 0x1

    shl-int v4, v3, v1

    const v5, 0x1fe81

    and-int/2addr v4, v5

    if-eqz v4, :cond_15

    .line 1729
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v3

    return v3

    .line 1732
    :cond_15
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v4

    .line 1733
    .local v4, "gc":Ljava/util/GregorianCalendar;
    iget-object v5, v4, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    .line 1734
    .local v5, "date":Lsun/util/calendar/BaseCalendar$Date;
    iget-object v6, v4, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    .line 1735
    .local v6, "cal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v7

    .line 1737
    .local v7, "normalizedYear":I
    const/4 v8, -0x1

    .line 1738
    .local v8, "value":I
    const/4 v9, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x7

    packed-switch v1, :pswitch_data_26e

    .line 1949
    :pswitch_28
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v3, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v3

    .line 1868
    :pswitch_2e
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v10

    .line 1869
    .local v10, "dow":I
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v11

    if-nez v11, :cond_4d

    .line 1870
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lsun/util/calendar/BaseCalendar$Date;

    .line 1871
    .local v9, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v11

    .line 1872
    .local v11, "ndays":I
    invoke-virtual {v9, v3}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1873
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1874
    invoke-virtual {v9}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v3

    .line 1875
    .end local v9    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v3, "dow1":I
    goto :goto_65

    .line 1877
    .end local v3    # "dow1":I
    .end local v11    # "ndays":I
    :cond_4d
    if-ne v4, v0, :cond_56

    .line 1878
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/GregorianCalendar;

    .line 1880
    :cond_56
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v11

    .line 1881
    .restart local v11    # "ndays":I
    invoke-virtual {v4, v9}, Ljava/util/GregorianCalendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v4, v9, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1882
    invoke-virtual {v4, v13}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1884
    .restart local v3    # "dow1":I
    :goto_65
    sub-int v9, v10, v3

    .line 1885
    .local v9, "x":I
    if-gez v9, :cond_6b

    .line 1886
    add-int/lit8 v9, v9, 0x7

    .line 1888
    :cond_6b
    sub-int/2addr v11, v9

    .line 1889
    add-int/lit8 v12, v11, 0x6

    div-int/2addr v12, v13

    .line 1890
    .end local v3    # "dow1":I
    .end local v8    # "value":I
    .end local v9    # "x":I
    .end local v10    # "dow":I
    .end local v11    # "ndays":I
    .local v12, "value":I
    goto/16 :goto_26c

    .line 1772
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :pswitch_71
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v9

    if-nez v9, :cond_7d

    .line 1773
    invoke-virtual {v6, v5}, Lsun/util/calendar/BaseCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v12

    .line 1774
    .end local v8    # "value":I
    .restart local v12    # "value":I
    goto/16 :goto_26c

    .line 1779
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :cond_7d
    iget v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v9, v10, :cond_8c

    .line 1780
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v9

    .line 1781
    .local v9, "cocal":Lsun/util/calendar/BaseCalendar;
    invoke-virtual {v9, v7, v3, v3, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v9

    .line 1782
    .local v9, "jan1":J
    goto :goto_97

    .end local v9    # "jan1":J
    :cond_8c
    iget v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v7, v9, :cond_95

    .line 1783
    invoke-virtual {v6, v7, v3, v3, v12}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v9

    .restart local v9    # "jan1":J
    goto :goto_97

    .line 1785
    .end local v9    # "jan1":J
    :cond_95
    iget-wide v9, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 1788
    .restart local v9    # "jan1":J
    :goto_97
    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v11, v7, v3, v3, v12}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v11

    .line 1789
    .local v11, "nextJan1":J
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v11, v13

    if-gez v3, :cond_a7

    .line 1790
    iget-wide v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    .line 1792
    :cond_a7
    nop

    .line 1794
    nop

    .line 1796
    sub-long v13, v11, v9

    long-to-int v12, v13

    .line 1797
    .end local v8    # "value":I
    .end local v9    # "jan1":J
    .end local v11    # "nextJan1":J
    .restart local v12    # "value":I
    goto/16 :goto_26c

    .line 1755
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :pswitch_ae
    invoke-virtual {v6, v5}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v12

    .line 1756
    .end local v8    # "value":I
    .restart local v12    # "value":I
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-eqz v3, :cond_26c

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v3

    if-ne v3, v12, :cond_c0

    .line 1757
    goto/16 :goto_26c

    .line 1761
    :cond_c0
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    .line 1762
    .local v8, "fd":J
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v3, v8, v13

    if-ltz v3, :cond_cc

    .line 1763
    goto/16 :goto_26c

    .line 1765
    :cond_cc
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v3

    .line 1766
    .local v3, "monthLength":I
    iget-object v13, v4, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v4, v13, v8, v9}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v13

    const-wide/16 v15, 0x1

    int-to-long v10, v3

    add-long/2addr v13, v10

    sub-long/2addr v13, v15

    .line 1768
    .local v13, "monthEnd":J
    invoke-direct {v4, v13, v14}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v10

    .line 1769
    .local v10, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v10}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v12

    .line 1770
    .end local v3    # "monthLength":I
    .end local v8    # "fd":J
    .end local v10    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v13    # "monthEnd":J
    goto/16 :goto_26c

    .line 1830
    .end local v12    # "value":I
    .local v8, "value":I
    :pswitch_e5
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v9

    if-nez v9, :cond_126

    .line 1831
    invoke-virtual {v6, v12}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    .line 1832
    .local v9, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v10

    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v11

    invoke-virtual {v9, v10, v11, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1833
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v3

    .line 1834
    .local v3, "dayOfWeek":I
    invoke-virtual {v6, v9}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v10

    .line 1835
    .local v10, "monthLength":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v11

    sub-int/2addr v3, v11

    .line 1836
    if-gez v3, :cond_10b

    .line 1837
    add-int/lit8 v3, v3, 0x7

    .line 1839
    :cond_10b
    rsub-int/lit8 v11, v3, 0x7

    .line 1840
    .local v11, "nDaysFirstWeek":I
    const/4 v8, 0x3

    .line 1841
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v12

    if-lt v11, v12, :cond_118

    .line 1842
    add-int/lit8 v8, v8, 0x1

    move v12, v8

    goto :goto_119

    .line 1841
    :cond_118
    move v12, v8

    .line 1844
    .end local v8    # "value":I
    .restart local v12    # "value":I
    :goto_119
    add-int/lit8 v8, v11, 0x15

    sub-int/2addr v10, v8

    .line 1845
    if-lez v10, :cond_26c

    .line 1846
    add-int/lit8 v12, v12, 0x1

    .line 1847
    if-le v10, v13, :cond_26c

    .line 1848
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_26c

    .line 1855
    .end local v3    # "dayOfWeek":I
    .end local v9    # "d":Lsun/util/calendar/CalendarDate;
    .end local v10    # "monthLength":I
    .end local v11    # "nDaysFirstWeek":I
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :cond_126
    if-ne v4, v0, :cond_12f

    .line 1856
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Ljava/util/GregorianCalendar;

    .line 1858
    :cond_12f
    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    .line 1859
    .local v9, "y":I
    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    .line 1861
    .local v11, "m":I
    :cond_138
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 1862
    invoke-virtual {v4, v12, v3}, Ljava/util/GregorianCalendar;->add(II)V

    .line 1863
    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-ne v12, v9, :cond_14c

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    if-eq v12, v11, :cond_138

    .line 1864
    .end local v9    # "y":I
    .end local v11    # "m":I
    :cond_14c
    move v12, v8

    goto/16 :goto_26c

    .line 1799
    :pswitch_14f
    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v10

    const/4 v11, 0x6

    if-nez v10, :cond_18f

    .line 1801
    sget-object v10, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v10

    .line 1802
    .local v10, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v12

    invoke-virtual {v10, v12, v3, v3}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1803
    invoke-virtual {v6, v10}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v12

    .line 1805
    .local v12, "dayOfWeek":I
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v13

    sub-int/2addr v12, v13

    .line 1806
    if-gez v12, :cond_170

    .line 1807
    add-int/lit8 v12, v12, 0x7

    .line 1809
    :cond_170
    const/16 v8, 0x34

    .line 1810
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v13

    add-int/2addr v13, v12

    sub-int/2addr v13, v3

    .line 1811
    .local v13, "magic":I
    if-eq v13, v11, :cond_18a

    .line 1812
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->isLeapYear()Z

    move-result v3

    if-eqz v3, :cond_187

    if-eq v13, v9, :cond_186

    const/16 v3, 0xc

    if-ne v13, v3, :cond_187

    :cond_186
    goto :goto_18a

    .line 1951
    .end local v10    # "d":Lsun/util/calendar/CalendarDate;
    .end local v12    # "dayOfWeek":I
    .end local v13    # "magic":I
    :cond_187
    move v12, v8

    goto/16 :goto_26c

    .line 1813
    .restart local v10    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v12    # "dayOfWeek":I
    .restart local v13    # "magic":I
    :cond_18a
    :goto_18a
    add-int/lit8 v3, v8, 0x1

    move v12, v3

    .end local v8    # "value":I
    .local v3, "value":I
    goto/16 :goto_26c

    .line 1818
    .end local v3    # "value":I
    .end local v10    # "d":Lsun/util/calendar/CalendarDate;
    .end local v12    # "dayOfWeek":I
    .end local v13    # "magic":I
    .restart local v8    # "value":I
    :cond_18f
    if-ne v4, v0, :cond_198

    .line 1819
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Ljava/util/GregorianCalendar;

    .line 1821
    :cond_198
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v9

    .line 1822
    .local v9, "maxDayOfYear":I
    invoke-virtual {v4, v11, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1823
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 1824
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v12

    if-eq v3, v12, :cond_1b9

    .line 1825
    add-int/lit8 v3, v9, -0x7

    invoke-virtual {v4, v11, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1826
    invoke-virtual {v4, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    move v12, v3

    .end local v8    # "value":I
    .restart local v3    # "value":I
    goto :goto_1ba

    .line 1824
    .end local v3    # "value":I
    .restart local v8    # "value":I
    :cond_1b9
    move v12, v8

    .line 1828
    .end local v8    # "value":I
    .end local v9    # "maxDayOfYear":I
    .local v12, "value":I
    :goto_1ba
    goto/16 :goto_26c

    .line 1740
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :pswitch_1bc
    const-wide/16 v15, 0x1

    invoke-direct {v4, v7}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v9

    if-nez v9, :cond_1c8

    .line 1741
    const/16 v12, 0xb

    .line 1742
    .end local v8    # "value":I
    .restart local v12    # "value":I
    goto/16 :goto_26c

    .line 1748
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :cond_1c8
    sget-object v9, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    add-int/2addr v7, v3

    invoke-virtual {v9, v7, v3, v3, v12}, Lsun/util/calendar/Gregorian;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v9

    .line 1749
    .local v9, "nextJan1":J
    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v11, v9, v13

    if-ltz v11, :cond_1c8

    .line 1750
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lsun/util/calendar/BaseCalendar$Date;

    .line 1751
    .local v11, "d":Lsun/util/calendar/BaseCalendar$Date;
    sub-long v12, v9, v15

    invoke-virtual {v6, v11, v12, v13}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1752
    invoke-virtual {v11}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v12

    sub-int/2addr v12, v3

    .line 1753
    .end local v8    # "value":I
    .end local v9    # "nextJan1":J
    .end local v11    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .restart local v12    # "value":I
    goto/16 :goto_26c

    .line 1911
    .end local v12    # "value":I
    .restart local v8    # "value":I
    :pswitch_1e7
    const-wide/16 v15, 0x1

    if-ne v4, v0, :cond_1f2

    .line 1912
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v9

    move-object v4, v9

    check-cast v4, Ljava/util/GregorianCalendar;

    .line 1919
    :cond_1f2
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v9

    .line 1921
    .local v9, "current":J
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v11

    if-ne v11, v3, :cond_214

    .line 1922
    const-wide v11, 0x7fffffffffffffffL

    invoke-virtual {v4, v11, v12}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1923
    invoke-virtual {v4, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    .line 1924
    .end local v8    # "value":I
    .restart local v3    # "value":I
    invoke-direct {v4}, Ljava/util/GregorianCalendar;->getYearOffsetInMillis()J

    move-result-wide v11

    .line 1925
    .local v11, "maxEnd":J
    cmp-long v8, v9, v11

    if-lez v8, :cond_212

    .line 1926
    add-int/lit8 v3, v3, -0x1

    .line 1928
    .end local v11    # "maxEnd":J
    :cond_212
    move v12, v3

    goto :goto_26b

    .line 1929
    .end local v3    # "value":I
    .restart local v8    # "value":I
    :cond_214
    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v11

    iget-wide v13, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v3, v11, v13

    if-ltz v3, :cond_221

    .line 1930
    sget-object v3, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_225

    :cond_221
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v3

    .line 1931
    .local v3, "mincal":Lsun/util/calendar/CalendarSystem;
    :goto_225
    const-wide/high16 v11, -0x8000000000000000L

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v3, v11, v12, v13}, Lsun/util/calendar/CalendarSystem;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v11

    .line 1932
    .local v11, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6, v11}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    sub-long/2addr v12, v15

    const-wide/16 v14, 0x18

    mul-long/2addr v12, v14

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 1933
    .local v12, "maxEnd":J
    const-wide/16 v14, 0x3c

    mul-long/2addr v12, v14

    .line 1934
    move-wide/from16 v16, v14

    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMinutes()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 1935
    mul-long v12, v12, v16

    .line 1936
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getSeconds()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 1937
    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 1938
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getMillis()I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v12, v14

    .line 1939
    invoke-virtual {v11}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v8

    .line 1940
    if-gtz v8, :cond_262

    .line 1941
    nop

    .line 1942
    rsub-int/lit8 v8, v8, 0x1

    .line 1944
    :cond_262
    cmp-long v14, v9, v12

    if-gez v14, :cond_26a

    .line 1945
    add-int/lit8 v8, v8, -0x1

    move v12, v8

    goto :goto_26b

    .line 1944
    :cond_26a
    move v12, v8

    .line 1948
    .end local v3    # "mincal":Lsun/util/calendar/CalendarSystem;
    .end local v8    # "value":I
    .end local v9    # "current":J
    .end local v11    # "d":Lsun/util/calendar/CalendarDate;
    .local v12, "value":I
    :goto_26b
    nop

    .line 1951
    :cond_26c
    :goto_26c
    return v12

    nop

    :pswitch_data_26e
    .packed-switch 0x1
        :pswitch_1e7
        :pswitch_1bc
        :pswitch_14f
        :pswitch_e5
        :pswitch_ae
        :pswitch_71
        :pswitch_28
        :pswitch_2e
    .end packed-switch
.end method

.method public whitelist test-api getActualMinimum(I)I
    .registers 8
    .param p1, "field"    # I

    .line 1681
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2c

    .line 1682
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 1683
    .local v0, "gc":Ljava/util/GregorianCalendar;
    iget-object v1, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 1684
    .local v1, "year":I
    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-eq v1, v2, :cond_15

    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v1, v2, :cond_2c

    .line 1685
    :cond_15
    iget-object v2, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v3, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v4, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v2

    .line 1686
    .local v2, "month1":J
    invoke-direct {p0, v2, v3}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v4

    .line 1687
    .local v4, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v5

    return v5

    .line 1690
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v1    # "year":I
    .end local v2    # "month1":J
    .end local v4    # "d":Lsun/util/calendar/BaseCalendar$Date;
    :cond_2c
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 859
    const-string v0, "gregory"

    return-object v0
.end method

.method public whitelist test-api getGreatestMinimum(I)I
    .registers 7
    .param p1, "field"    # I

    .line 1608
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1e

    .line 1609
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getGregorianCutoverDate()Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1610
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v0, v1, v2}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v1

    .line 1611
    .local v1, "mon1":J
    invoke-direct {p0, v1, v2}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 1612
    sget-object v3, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v3, v3, p1

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 1614
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v1    # "mon1":J
    :cond_1e
    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public final whitelist test-api getGregorianChange()Ljava/util/Date;
    .registers 4

    .line 816
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getLeastMaximum(I)I
    .registers 8
    .param p1, "field"    # I

    .line 1638
    packed-switch p1, :pswitch_data_34

    .line 1649
    :pswitch_3
    sget-object v0, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    .line 1640
    :pswitch_8
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1641
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1642
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1643
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1644
    .local v1, "v1":I
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1645
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .line 1646
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->LEAST_MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist test-api getMaximum(I)I
    .registers 8
    .param p1, "field"    # I

    .line 1566
    packed-switch p1, :pswitch_data_3c

    :pswitch_3
    goto :goto_37

    .line 1571
    :pswitch_4
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/16 v1, 0xc8

    if-le v0, v1, :cond_b

    .line 1572
    goto :goto_37

    .line 1575
    :cond_b
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 1576
    .local v0, "gc":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 1577
    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1578
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v1

    .line 1579
    .local v1, "v1":I
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1580
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    .line 1581
    .local v2, "v2":I
    sget-object v3, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v3, v3, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3

    .line 1584
    .end local v0    # "gc":Ljava/util/GregorianCalendar;
    .end local v1    # "v1":I
    .end local v2    # "v2":I
    :goto_37
    sget-object v0, Ljava/util/GregorianCalendar;->MAX_VALUES:[I

    aget v0, v0, p1

    return v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist test-api getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1542
    sget-object v0, Ljava/util/GregorianCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api getTimeZone()Ljava/util/TimeZone;
    .registers 4

    .line 1990
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1992
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1993
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v1, :cond_18

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v2, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v1, v2, :cond_18

    .line 1994
    iget-object v1, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1996
    :cond_18
    return-object v0
.end method

.method public whitelist test-api getWeekYear()I
    .registers 12

    .line 2048
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 2049
    .local v1, "year":I
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->internalGetEra()I

    move-result v2

    if-nez v2, :cond_d

    .line 2050
    rsub-int/lit8 v1, v1, 0x1

    .line 2055
    :cond_d
    iget v2, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    add-int/2addr v2, v0

    if-le v1, v2, :cond_2a

    .line 2056
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    .line 2057
    .local v2, "weekOfYear":I
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    if-nez v3, :cond_25

    .line 2058
    const/16 v0, 0x34

    if-lt v2, v0, :cond_29

    .line 2059
    add-int/lit8 v1, v1, -0x1

    goto :goto_29

    .line 2062
    :cond_25
    if-ne v2, v0, :cond_29

    .line 2063
    add-int/lit8 v1, v1, 0x1

    .line 2066
    :cond_29
    :goto_29
    return v1

    .line 2070
    .end local v2    # "weekOfYear":I
    :cond_2a
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 2071
    .local v3, "dayOfYear":I
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v4

    .line 2072
    .local v4, "maxDayOfYear":I
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v5

    .line 2076
    .local v5, "minimalDays":I
    if-le v3, v5, :cond_3e

    add-int/lit8 v6, v4, -0x6

    if-ge v3, v6, :cond_3e

    .line 2077
    return v1

    .line 2081
    :cond_3e
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/GregorianCalendar;

    .line 2082
    .local v6, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v6, v0}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2085
    const-string v7, "GMT"

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2087
    invoke-virtual {v6, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2088
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->complete()V

    .line 2091
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v7

    const/4 v8, 0x7

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    sub-int/2addr v7, v9

    .line 2092
    .local v7, "delta":I
    if-eqz v7, :cond_69

    .line 2093
    if-gez v7, :cond_66

    .line 2094
    add-int/lit8 v7, v7, 0x7

    .line 2096
    :cond_66
    invoke-virtual {v6, v2, v7}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2098
    :cond_69
    invoke-virtual {v6, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    .line 2099
    .local v9, "minDayOfYear":I
    if-ge v3, v9, :cond_74

    .line 2100
    if-gt v9, v5, :cond_a7

    .line 2101
    add-int/lit8 v1, v1, -0x1

    goto :goto_a7

    .line 2104
    :cond_74
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v6, v0, v10}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2105
    invoke-virtual {v6, v2, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2106
    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->complete()V

    .line 2107
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v10

    invoke-virtual {v6, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    sub-int/2addr v10, v8

    .line 2108
    .local v10, "del":I
    if-eqz v10, :cond_91

    .line 2109
    if-gez v10, :cond_8e

    .line 2110
    add-int/lit8 v10, v10, 0x7

    .line 2112
    :cond_8e
    invoke-virtual {v6, v2, v10}, Ljava/util/GregorianCalendar;->add(II)V

    .line 2114
    :cond_91
    invoke-virtual {v6, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v0

    .line 2115
    .end local v9    # "minDayOfYear":I
    .local v2, "minDayOfYear":I
    if-nez v2, :cond_9b

    .line 2116
    const/4 v2, 0x7

    move v9, v2

    goto :goto_9c

    .line 2115
    :cond_9b
    move v9, v2

    .line 2118
    .end local v2    # "minDayOfYear":I
    .restart local v9    # "minDayOfYear":I
    :goto_9c
    if-lt v9, v5, :cond_a7

    .line 2119
    sub-int v2, v4, v3

    add-int/2addr v2, v0

    .line 2120
    .local v2, "days":I
    rsub-int/lit8 v0, v9, 0x7

    if-gt v2, v0, :cond_a7

    .line 2121
    add-int/lit8 v1, v1, 0x1

    .line 2125
    .end local v2    # "days":I
    .end local v10    # "del":I
    :cond_a7
    :goto_a7
    return v1
.end method

.method public whitelist test-api getWeeksInWeekYear()I
    .registers 6

    .line 2232
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->getNormalizedCalendar()Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 2233
    .local v0, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v1

    .line 2234
    .local v1, "weekYear":I
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    const/4 v3, 0x3

    if-ne v1, v2, :cond_15

    .line 2235
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2

    .line 2239
    :cond_15
    if-ne v0, p0, :cond_1e

    .line 2240
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 2242
    :cond_1e
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v2

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4, v2}, Ljava/util/GregorianCalendar;->setWeekDate(III)V

    .line 2243
    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v2

    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 888
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api isLeapYear(I)Z
    .registers 7
    .param p1, "year"    # I

    .line 829
    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 830
    return v1

    .line 833
    :cond_6
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    const/4 v2, 0x1

    if-le p1, v0, :cond_15

    .line 834
    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_13

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_14

    :cond_13
    move v1, v2

    :cond_14
    return v1

    .line 836
    :cond_15
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ge p1, v0, :cond_1a

    .line 837
    return v2

    .line 842
    :cond_1a
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v0, v3, :cond_31

    .line 843
    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    invoke-direct {p0, v3, v4}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v0

    .line 844
    .local v0, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v3

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2f

    move v3, v2

    goto :goto_30

    :cond_2f
    move v3, v1

    .line 845
    .end local v0    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .local v3, "gregorian":Z
    :goto_30
    goto :goto_39

    .line 846
    .end local v3    # "gregorian":Z
    :cond_31
    iget v0, p0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne p1, v0, :cond_37

    move v0, v2

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    move v3, v0

    .line 848
    .restart local v3    # "gregorian":Z
    :goto_39
    if-eqz v3, :cond_43

    rem-int/lit8 v0, p1, 0x64

    if-nez v0, :cond_43

    rem-int/lit16 v0, p1, 0x190

    if-nez v0, :cond_44

    :cond_43
    move v1, v2

    :cond_44
    return v1
.end method

.method public final whitelist test-api isWeekDateSupported()Z
    .registers 2

    .line 2021
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api roll(II)V
    .registers 26
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 1172
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 1173
    return-void

    .line 1176
    :cond_9
    if-ltz v1, :cond_3c6

    const/16 v3, 0xf

    if-ge v1, v3, :cond_3c6

    .line 1181
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1183
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v4

    .line 1184
    .local v4, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v5

    .line 1186
    .local v5, "max":I
    const/4 v6, 0x0

    const-wide/16 v7, 0x7

    const-wide/16 v9, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x5

    const/4 v14, 0x7

    const/4 v15, 0x1

    packed-switch v1, :pswitch_data_3cc

    goto/16 :goto_3ba

    .line 1202
    :pswitch_29
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    invoke-static {v6, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v6

    .line 1203
    .local v6, "rolledValue":I
    move v7, v6

    .line 1204
    .local v7, "hourOfDay":I
    const/16 v8, 0x9

    const/16 v9, 0xa

    if-ne v1, v9, :cond_40

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v10

    if-ne v10, v15, :cond_40

    .line 1205
    add-int/lit8 v7, v7, 0xc

    .line 1210
    :cond_40
    iget-object v10, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-wide v11, v0, Ljava/util/GregorianCalendar;->time:J

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v10

    .line 1211
    .local v10, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v10, v7}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 1212
    iget-object v11, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v11, v10}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    iput-wide v11, v0, Ljava/util/GregorianCalendar;->time:J

    .line 1215
    const/16 v11, 0xb

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    invoke-virtual {v10}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v13

    if-ne v12, v13, :cond_81

    .line 1216
    if-lez v2, :cond_67

    move v12, v15

    goto :goto_68

    :cond_67
    const/4 v12, -0x1

    :goto_68
    invoke-static {v6, v12, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v7

    .line 1217
    if-ne v1, v9, :cond_76

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    if-ne v12, v15, :cond_76

    .line 1218
    add-int/lit8 v7, v7, 0xc

    .line 1220
    :cond_76
    invoke-virtual {v10, v7}, Lsun/util/calendar/CalendarDate;->setHours(I)Lsun/util/calendar/CalendarDate;

    .line 1221
    iget-object v12, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v12, v10}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v12

    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    .line 1224
    :cond_81
    invoke-virtual {v10}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v7

    .line 1226
    invoke-virtual {v0, v11, v7}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1227
    div-int/lit8 v11, v7, 0xc

    invoke-virtual {v0, v8, v11}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1228
    rem-int/lit8 v8, v7, 0xc

    invoke-virtual {v0, v9, v8}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1231
    invoke-virtual {v10}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v8

    .line 1232
    .local v8, "zoneOffset":I
    invoke-virtual {v10}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v9

    .line 1233
    .local v9, "saving":I
    sub-int v11, v8, v9

    invoke-virtual {v0, v3, v11}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1234
    const/16 v3, 0x10

    invoke-virtual {v0, v3, v9}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 1235
    return-void

    .line 1484
    .end local v6    # "rolledValue":I
    .end local v7    # "hourOfDay":I
    .end local v8    # "zoneOffset":I
    .end local v9    # "saving":I
    .end local v10    # "d":Lsun/util/calendar/CalendarDate;
    :pswitch_a5
    const/4 v4, 0x1

    .line 1485
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_d2

    .line 1486
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 1487
    .local v3, "dom":I
    iget-object v6, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v7, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v6, v7}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    .line 1488
    .local v6, "monthLength":I
    rem-int/lit8 v7, v6, 0x7

    .line 1489
    .local v7, "lastDays":I
    div-int/lit8 v5, v6, 0x7

    .line 1490
    add-int/lit8 v8, v3, -0x1

    rem-int/2addr v8, v14

    .line 1491
    .local v8, "x":I
    if-ge v8, v7, :cond_c9

    .line 1492
    add-int/lit8 v5, v5, 0x1

    .line 1494
    :cond_c9
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v9

    invoke-virtual {v0, v14, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1495
    goto/16 :goto_3ba

    .line 1499
    .end local v3    # "dom":I
    .end local v6    # "monthLength":I
    .end local v7    # "lastDays":I
    .end local v8    # "x":I
    :cond_d2
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v6

    .line 1500
    .local v6, "fd":J
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v3, v6, v7}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v8

    .line 1501
    .local v8, "month1":J
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v3

    .line 1502
    .local v3, "monthLength":I
    rem-int/lit8 v10, v3, 0x7

    .line 1503
    .local v10, "lastDays":I
    div-int/lit8 v5, v3, 0x7

    .line 1504
    sub-long v11, v6, v8

    long-to-int v11, v11

    rem-int/2addr v11, v14

    .line 1505
    .local v11, "x":I
    if-ge v11, v10, :cond_ec

    .line 1506
    add-int/lit8 v5, v5, 0x1

    .line 1508
    :cond_ec
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v12

    invoke-static {v12, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v12

    sub-int/2addr v12, v15

    .line 1509
    .local v12, "value":I
    mul-int/lit8 v14, v12, 0x7

    int-to-long v14, v14

    add-long/2addr v14, v8

    move-wide/from16 v16, v14

    int-to-long v13, v11

    add-long v14, v16, v13

    .line 1510
    .end local v6    # "fd":J
    .local v14, "fd":J
    iget-wide v6, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v6, v14, v6

    if-ltz v6, :cond_107

    sget-object v6, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_10b

    :cond_107
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v6

    .line 1511
    .local v6, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_10b
    sget-object v7, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v7}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v7

    check-cast v7, Lsun/util/calendar/BaseCalendar$Date;

    .line 1512
    .local v7, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v6, v7, v14, v15}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1513
    invoke-virtual {v7}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v13

    move/from16 v16, v3

    const/4 v3, 0x5

    .end local v3    # "monthLength":I
    .local v16, "monthLength":I
    invoke-virtual {v0, v3, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1514
    return-void

    .line 1449
    .end local v6    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v7    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v8    # "month1":J
    .end local v10    # "lastDays":I
    .end local v11    # "x":I
    .end local v12    # "value":I
    .end local v14    # "fd":J
    .end local v16    # "monthLength":I
    :pswitch_121
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_13d

    .line 1452
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    .line 1453
    .local v3, "weekOfYear":I
    if-le v3, v15, :cond_13d

    const/16 v9, 0x34

    if-ge v3, v9, :cond_13d

    .line 1454
    invoke-virtual {v0, v11, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1455
    const/4 v5, 0x7

    .line 1456
    goto/16 :goto_3ba

    .line 1464
    .end local v3    # "weekOfYear":I
    :cond_13d
    rem-int/2addr v2, v14

    .line 1465
    .end local p2    # "amount":I
    .local v2, "amount":I
    if-nez v2, :cond_141

    .line 1466
    return-void

    .line 1468
    :cond_141
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v9

    .line 1469
    .local v9, "fd":J
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-static {v9, v10, v3}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v11

    .line 1470
    .local v11, "dowFirst":J
    int-to-long v13, v2

    add-long/2addr v9, v13

    .line 1471
    cmp-long v3, v9, v11

    if-gez v3, :cond_155

    .line 1472
    add-long/2addr v9, v7

    goto :goto_15c

    .line 1473
    :cond_155
    add-long v13, v11, v7

    cmp-long v3, v9, v13

    if-ltz v3, :cond_15c

    .line 1474
    sub-long/2addr v9, v7

    .line 1476
    :cond_15c
    :goto_15c
    invoke-direct {v0, v9, v10}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v3

    .line 1477
    .local v3, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v7

    if-gtz v7, :cond_168

    move v7, v6

    goto :goto_169

    :cond_168
    move v7, v15

    :goto_169
    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1478
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getYear()I

    move-result v6

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v7

    sub-int/2addr v7, v15

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v8

    invoke-virtual {v0, v6, v7, v8}, Ljava/util/GregorianCalendar;->set(III)V

    .line 1479
    return-void

    .line 1432
    .end local v2    # "amount":I
    .end local v3    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v9    # "fd":J
    .end local v11    # "dowFirst":J
    .restart local p2    # "amount":I
    :pswitch_17d
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    .line 1433
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_18f

    .line 1434
    goto/16 :goto_3ba

    .line 1438
    :cond_18f
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v6

    .line 1439
    .local v6, "fd":J
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    int-to-long v13, v3

    sub-long v13, v6, v13

    add-long/2addr v13, v9

    .line 1440
    .local v13, "jan1":J
    move-wide/from16 v16, v9

    sub-long v9, v6, v13

    long-to-int v3, v9

    add-int/2addr v3, v15

    invoke-static {v3, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v3

    .line 1441
    .local v3, "value":I
    int-to-long v8, v3

    add-long/2addr v8, v13

    sub-long v8, v8, v16

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v8

    .line 1442
    .local v8, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v9

    sub-int/2addr v9, v15

    invoke-virtual {v0, v12, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1443
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v9

    const/4 v10, 0x5

    invoke-virtual {v0, v10, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1444
    return-void

    .line 1412
    .end local v3    # "value":I
    .end local v6    # "fd":J
    .end local v8    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v13    # "jan1":J
    :pswitch_1bf
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_1d5

    .line 1413
    iget-object v3, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v6, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3, v6}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v5

    .line 1414
    goto/16 :goto_3ba

    .line 1418
    :cond_1d5
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v7

    .line 1419
    .local v7, "fd":J
    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v3, v7, v8}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v9

    .line 1423
    .local v9, "month1":J
    sub-long v11, v7, v9

    long-to-int v3, v11

    invoke-direct {v0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v11

    sub-int/2addr v11, v15

    invoke-static {v3, v2, v6, v11}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v3

    .line 1424
    .restart local v3    # "value":I
    int-to-long v11, v3

    add-long/2addr v11, v9

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v6

    .line 1425
    .local v6, "d":Lsun/util/calendar/BaseCalendar$Date;
    nop

    .line 1426
    invoke-virtual {v6}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v0, v12, v11}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1427
    return-void

    .line 1356
    .end local v3    # "value":I
    .end local v6    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v7    # "fd":J
    .end local v9    # "month1":J
    :pswitch_1fb
    move-wide/from16 v16, v9

    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    .line 1358
    .local v3, "isCutoverYear":Z
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    sub-int/2addr v6, v9

    .line 1359
    .local v6, "dow":I
    if-gez v6, :cond_214

    .line 1360
    add-int/lit8 v6, v6, 0x7

    .line 1363
    :cond_214
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v9

    .line 1366
    .local v9, "fd":J
    if-eqz v3, :cond_225

    .line 1367
    iget-object v11, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-direct {v0, v11, v9, v10}, Ljava/util/GregorianCalendar;->getFixedDateMonth1(Lsun/util/calendar/BaseCalendar$Date;J)J

    move-result-wide v11

    .line 1368
    .local v11, "month1":J
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->actualMonthLength()I

    move-result v13

    .local v13, "monthLength":I
    goto :goto_237

    .line 1370
    .end local v11    # "month1":J
    .end local v13    # "monthLength":I
    :cond_225
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    int-to-long v11, v11

    sub-long v11, v9, v11

    add-long v11, v11, v16

    .line 1371
    .restart local v11    # "month1":J
    iget-object v13, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    iget-object v14, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v13, v14}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v13

    .line 1375
    .restart local v13    # "monthLength":I
    :goto_237
    const-wide/16 v18, 0x6

    move-wide/from16 v20, v7

    add-long v7, v11, v18

    .line 1376
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v14

    .line 1375
    invoke-static {v7, v8, v14}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v7

    .line 1379
    .local v7, "monthDay1st":J
    move-wide/from16 v18, v7

    .end local v7    # "monthDay1st":J
    .local v18, "monthDay1st":J
    sub-long v7, v18, v11

    long-to-int v7, v7

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v8

    if-lt v7, v8, :cond_253

    .line 1380
    sub-long v7, v18, v20

    .end local v18    # "monthDay1st":J
    .restart local v7    # "monthDay1st":J
    goto :goto_255

    .line 1379
    .end local v7    # "monthDay1st":J
    .restart local v18    # "monthDay1st":J
    :cond_253
    move-wide/from16 v7, v18

    .line 1382
    .end local v18    # "monthDay1st":J
    .restart local v7    # "monthDay1st":J
    :goto_255
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    .line 1385
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v14

    invoke-static {v14, v2, v15, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v14

    sub-int/2addr v14, v15

    .line 1388
    .local v14, "value":I
    move/from16 v18, v15

    mul-int/lit8 v15, v14, 0x7

    move-wide/from16 v19, v7

    .end local v7    # "monthDay1st":J
    .local v19, "monthDay1st":J
    int-to-long v7, v15

    add-long v7, v19, v7

    move-wide/from16 v21, v7

    int-to-long v7, v6

    add-long v7, v21, v7

    .line 1392
    .local v7, "nfd":J
    cmp-long v15, v7, v11

    if-gez v15, :cond_279

    .line 1393
    move-wide v7, v11

    move/from16 v21, v5

    move v15, v6

    goto :goto_286

    .line 1394
    :cond_279
    move/from16 v21, v5

    move v15, v6

    .end local v5    # "max":I
    .end local v6    # "dow":I
    .local v15, "dow":I
    .local v21, "max":I
    int-to-long v5, v13

    add-long/2addr v5, v11

    cmp-long v5, v7, v5

    if-ltz v5, :cond_286

    .line 1395
    int-to-long v5, v13

    add-long/2addr v5, v11

    sub-long v7, v5, v16

    .line 1398
    :cond_286
    :goto_286
    if-eqz v3, :cond_291

    .line 1401
    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v5

    .line 1402
    .local v5, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v5

    .line 1403
    .local v5, "dayOfMonth":I
    goto :goto_296

    .line 1404
    .end local v5    # "dayOfMonth":I
    :cond_291
    sub-long v5, v7, v11

    long-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    .line 1406
    .restart local v5    # "dayOfMonth":I
    :goto_296
    const/4 v6, 0x5

    invoke-virtual {v0, v6, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1407
    return-void

    .line 1277
    .end local v3    # "isCutoverYear":Z
    .end local v7    # "nfd":J
    .end local v9    # "fd":J
    .end local v11    # "month1":J
    .end local v13    # "monthLength":I
    .end local v14    # "value":I
    .end local v15    # "dow":I
    .end local v19    # "monthDay1st":J
    .end local v21    # "max":I
    .local v5, "max":I
    :pswitch_29b
    move/from16 v18, v15

    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 1278
    .local v3, "y":I
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v5

    .line 1279
    invoke-virtual {v0, v14}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    invoke-virtual {v0, v14, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1280
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    .line 1281
    .local v6, "woy":I
    add-int v7, v6, v2

    .line 1282
    .local v7, "value":I
    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v8

    if-nez v8, :cond_306

    .line 1283
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v8

    .line 1284
    .local v8, "weekYear":I
    if-ne v8, v3, :cond_2f0

    .line 1287
    if-le v7, v4, :cond_2c8

    if-ge v7, v5, :cond_2c8

    .line 1288
    invoke-virtual {v0, v11, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1289
    return-void

    .line 1291
    :cond_2c8
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v9

    .line 1294
    .restart local v9    # "fd":J
    sub-int v12, v6, v4

    mul-int/2addr v12, v14

    int-to-long v12, v12

    sub-long v12, v9, v12

    .line 1295
    .local v12, "day1":J
    iget-object v15, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v15, v12, v13}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v15

    if-eq v15, v3, :cond_2dc

    .line 1296
    add-int/lit8 v4, v4, 0x1

    .line 1300
    :cond_2dc
    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v11

    sub-int v11, v5, v11

    mul-int/2addr v11, v14

    int-to-long v14, v11

    add-long/2addr v9, v14

    .line 1301
    iget-object v11, v0, Ljava/util/GregorianCalendar;->calsys:Lsun/util/calendar/BaseCalendar;

    invoke-virtual {v11, v9, v10}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v11

    if-eq v11, v3, :cond_2ef

    .line 1302
    add-int/lit8 v5, v5, -0x1

    .line 1304
    .end local v9    # "fd":J
    .end local v12    # "day1":J
    :cond_2ef
    goto :goto_2fe

    .line 1307
    :cond_2f0
    if-le v8, v3, :cond_2f8

    .line 1308
    if-gez v2, :cond_2f6

    .line 1309
    add-int/lit8 v2, v2, 0x1

    .line 1311
    .end local p2    # "amount":I
    .restart local v2    # "amount":I
    :cond_2f6
    move v6, v5

    goto :goto_2fe

    .line 1313
    .end local v2    # "amount":I
    .restart local p2    # "amount":I
    :cond_2f8
    if-lez v2, :cond_2fd

    .line 1314
    sub-int v9, v6, v5

    sub-int/2addr v2, v9

    .line 1316
    .end local p2    # "amount":I
    .restart local v2    # "amount":I
    :cond_2fd
    move v6, v4

    .line 1319
    :goto_2fe
    invoke-static {v6, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v9

    invoke-virtual {v0, v1, v9}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1320
    return-void

    .line 1324
    .end local v2    # "amount":I
    .end local v8    # "weekYear":I
    .restart local p2    # "amount":I
    :cond_306
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCurrentFixedDate()J

    move-result-wide v8

    .line 1326
    .local v8, "fd":J
    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    iget v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYearJulian:I

    if-ne v10, v11, :cond_315

    .line 1327
    invoke-direct {v0}, Ljava/util/GregorianCalendar;->getCutoverCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v10

    .local v10, "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_320

    .line 1328
    .end local v10    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_315
    iget v10, v0, Ljava/util/GregorianCalendar;->gregorianCutoverYear:I

    if-ne v3, v10, :cond_31c

    .line 1329
    sget-object v10, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .restart local v10    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_320

    .line 1331
    .end local v10    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_31c
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v10

    .line 1333
    .restart local v10    # "cal":Lsun/util/calendar/BaseCalendar;
    :goto_320
    sub-int v11, v6, v4

    mul-int/2addr v11, v14

    move v13, v14

    int-to-long v14, v11

    sub-long v14, v8, v14

    .line 1335
    .local v14, "day1":J
    invoke-virtual {v10, v14, v15}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v11

    if-eq v11, v3, :cond_32f

    .line 1336
    add-int/lit8 v4, v4, 0x1

    .line 1340
    :cond_32f
    sub-int v11, v5, v6

    mul-int/2addr v11, v13

    int-to-long v12, v11

    add-long/2addr v8, v12

    .line 1341
    iget-wide v11, v0, Ljava/util/GregorianCalendar;->gregorianCutoverDate:J

    cmp-long v11, v8, v11

    if-ltz v11, :cond_33d

    sget-object v11, Ljava/util/GregorianCalendar;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_341

    :cond_33d
    invoke-static {}, Ljava/util/GregorianCalendar;->getJulianCalendarSystem()Lsun/util/calendar/BaseCalendar;

    move-result-object v11

    .line 1342
    .end local v10    # "cal":Lsun/util/calendar/BaseCalendar;
    .local v11, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_341
    invoke-virtual {v11, v8, v9}, Lsun/util/calendar/BaseCalendar;->getYearFromFixedDate(J)I

    move-result v10

    if-eq v10, v3, :cond_349

    .line 1343
    add-int/lit8 v5, v5, -0x1

    .line 1347
    :cond_349
    invoke-static {v6, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1348
    .end local v7    # "value":I
    .local v10, "value":I
    mul-int/lit8 v7, v10, 0x7

    int-to-long v12, v7

    add-long/2addr v12, v14

    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/BaseCalendar$Date;

    move-result-object v7

    .line 1349
    .local v7, "d":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v7}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x2

    invoke-virtual {v0, v13, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1350
    invoke-virtual {v7}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v12

    const/4 v13, 0x5

    invoke-virtual {v0, v13, v12}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1351
    return-void

    .line 1244
    .end local v3    # "y":I
    .end local v6    # "woy":I
    .end local v7    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v8    # "fd":J
    .end local v10    # "value":I
    .end local v11    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v14    # "day1":J
    :pswitch_36a
    move/from16 v18, v15

    iget-object v3, v0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->isCutoverYear(I)Z

    move-result v3

    if-nez v3, :cond_397

    .line 1245
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    add-int/2addr v3, v2

    rem-int/lit8 v3, v3, 0xc

    .line 1246
    .local v3, "mon":I
    if-gez v3, :cond_384

    .line 1247
    add-int/lit8 v3, v3, 0xc

    .line 1249
    :cond_384
    const/4 v13, 0x2

    invoke-virtual {v0, v13, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1254
    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;->monthLength(I)I

    move-result v6

    .line 1255
    .local v6, "monthLen":I
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    if-le v7, v6, :cond_396

    .line 1256
    invoke-virtual {v0, v12, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1258
    .end local v3    # "mon":I
    .end local v6    # "monthLen":I
    :cond_396
    goto :goto_3b8

    .line 1261
    :cond_397
    const/4 v13, 0x2

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 1262
    .local v3, "yearLength":I
    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v6

    add-int/2addr v6, v2

    rem-int/2addr v6, v3

    .line 1263
    .local v6, "mon":I
    if-gez v6, :cond_3a7

    .line 1264
    add-int/2addr v6, v3

    .line 1266
    :cond_3a7
    invoke-virtual {v0, v13, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1267
    const/4 v12, 0x5

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v7

    .line 1268
    .local v7, "monthLen":I
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v8

    if-le v8, v7, :cond_3b8

    .line 1269
    invoke-virtual {v0, v12, v7}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1272
    .end local v3    # "yearLength":I
    .end local v6    # "mon":I
    .end local v7    # "monthLen":I
    :cond_3b8
    :goto_3b8
    return-void

    .line 1197
    :pswitch_3b9
    nop

    .line 1518
    :goto_3ba
    invoke-virtual/range {p0 .. p1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v3

    invoke-static {v3, v2, v4, v5}, Ljava/util/GregorianCalendar;->getRolledValue(IIII)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1519
    return-void

    .line 1177
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_3c6
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_data_3cc
    .packed-switch 0x0
        :pswitch_3b9
        :pswitch_3b9
        :pswitch_36a
        :pswitch_29b
        :pswitch_1fb
        :pswitch_1bf
        :pswitch_17d
        :pswitch_121
        :pswitch_a5
        :pswitch_3b9
        :pswitch_29
        :pswitch_29
        :pswitch_3b9
        :pswitch_3b9
        :pswitch_3b9
    .end packed-switch
.end method

.method public whitelist test-api roll(IZ)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "up"    # Z

    .line 1121
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1122
    return-void
.end method

.method public whitelist test-api setGregorianChange(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .line 766
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 767
    .local v0, "cutoverTime":J
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_b

    .line 768
    return-void

    .line 772
    :cond_b
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 773
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->setGregorianChange(J)V

    .line 774
    return-void
.end method

.method public whitelist test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 4
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 2001
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2003
    iget-object v0, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2004
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eqz v0, :cond_17

    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->gdate:Lsun/util/calendar/BaseCalendar$Date;

    if-eq v0, v1, :cond_17

    .line 2005
    iget-object v0, p0, Ljava/util/GregorianCalendar;->cdate:Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 2007
    :cond_17
    return-void
.end method

.method public whitelist test-api setWeekDate(III)V
    .registers 12
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .line 2169
    const/4 v0, 0x1

    if-lt p3, v0, :cond_8d

    const/4 v1, 0x7

    if-gt p3, v1, :cond_8d

    .line 2175
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/GregorianCalendar;

    .line 2176
    .local v2, "gc":Ljava/util/GregorianCalendar;
    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 2177
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    .line 2178
    .local v4, "era":I
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->clear()V

    .line 2179
    const-string v5, "GMT"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2180
    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2181
    invoke-virtual {v2, v0, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2182
    const/4 v5, 0x3

    invoke-virtual {v2, v5, v0}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2183
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    invoke-virtual {v2, v1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2184
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int v6, p3, v6

    .line 2185
    .local v6, "days":I
    if-gez v6, :cond_3b

    .line 2186
    add-int/lit8 v6, v6, 0x7

    .line 2188
    :cond_3b
    add-int/lit8 v7, p2, -0x1

    mul-int/2addr v7, v1

    add-int/2addr v6, v7

    .line 2189
    if-eqz v6, :cond_46

    .line 2190
    const/4 v7, 0x6

    invoke-virtual {v2, v7, v6}, Ljava/util/GregorianCalendar;->add(II)V

    goto :goto_49

    .line 2192
    :cond_46
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->complete()V

    .line 2195
    :goto_49
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v7

    if-nez v7, :cond_68

    .line 2196
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getWeekYear()I

    move-result v7

    if-ne v7, p1, :cond_62

    .line 2197
    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v7

    if-ne v7, p2, :cond_62

    .line 2198
    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    if-ne v1, p3, :cond_62

    goto :goto_68

    .line 2199
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 2202
    :cond_68
    :goto_68
    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v3, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2203
    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2204
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2205
    const/4 v0, 0x5

    invoke-virtual {v2, v0}, Ljava/util/GregorianCalendar;->internalGet(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 2209
    invoke-virtual {p0, v5, p2}, Ljava/util/GregorianCalendar;->internalSet(II)V

    .line 2210
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 2211
    return-void

    .line 2170
    .end local v2    # "gc":Ljava/util/GregorianCalendar;
    .end local v4    # "era":I
    .end local v6    # "days":I
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid dayOfWeek: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toZonedDateTime()Ljava/time/ZonedDateTime;
    .registers 3

    .line 3389
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 3390
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;

    move-result-object v1

    .line 3389
    invoke-static {v0, v1}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v0

    return-object v0
.end method
