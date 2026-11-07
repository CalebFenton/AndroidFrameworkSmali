.class public Landroid/text/format/Time;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/format/Time$TimeCalculator;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o DAYS_PER_MONTH:[I

.field public static final whitelist EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final whitelist FRIDAY:I = 0x5

.field public static final whitelist HOUR:I = 0x3

.field public static final whitelist MINUTE:I = 0x2

.field public static final whitelist MONDAY:I = 0x1

.field public static final whitelist MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final whitelist MONTH:I = 0x5

.field public static final whitelist MONTH_DAY:I = 0x4

.field public static final whitelist SATURDAY:I = 0x6

.field public static final whitelist SECOND:I = 0x1

.field public static final whitelist SUNDAY:I = 0x0

.field public static final whitelist THURSDAY:I = 0x4

.field public static final whitelist TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final whitelist TUESDAY:I = 0x2

.field public static final whitelist WEDNESDAY:I = 0x3

.field public static final whitelist WEEK_DAY:I = 0x7

.field public static final whitelist WEEK_NUM:I = 0x9

.field public static final whitelist YEAR:I = 0x6

.field public static final whitelist YEAR_DAY:I = 0x8

.field private static final greylist-max-o Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final greylist-max-o Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final greylist-max-o Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final greylist-max-o sThursdayOffset:[I


# instance fields
.field public whitelist allDay:Z

.field private greylist-max-o calculator:Landroid/text/format/Time$TimeCalculator;

.field public whitelist gmtoff:J

.field public whitelist hour:I

.field public whitelist isDst:I

.field public whitelist minute:I

.field public whitelist month:I

.field public whitelist monthDay:I

.field public whitelist second:I

.field public whitelist timezone:Ljava/lang/String;

.field public whitelist weekDay:I

.field public whitelist year:I

.field public whitelist yearDay:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 251
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    .line 876
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    return-void

    :array_12
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

    :array_2e
    .array-data 4
        -0x3
        0x3
        0x2
        0x1
        0x0
        -0x1
        -0x2
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public constructor whitelist <init>(Landroid/text/format/Time;)V
    .registers 3
    .param p1, "other"    # Landroid/text/format/Time;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 197
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    if-eqz p1, :cond_9

    .line 177
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    .line 178
    return-void

    .line 175
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezoneId is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o checkChar(Ljava/lang/String;IC)V
    .registers 10
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "spos"    # I
    .param p3, "expected"    # C

    .line 495
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 496
    .local v0, "c":C
    if-ne v0, p3, :cond_7

    .line 501
    return-void

    .line 497
    :cond_7
    new-instance v1, Landroid/util/TimeFormatException;

    .line 499
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Object;

    move-result-object v2

    .line 497
    const-string v3, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .registers 4
    .param p0, "a"    # Landroid/text/format/Time;
    .param p1, "b"    # Landroid/text/format/Time;

    .line 338
    if-eqz p0, :cond_1f

    .line 340
    if-eqz p1, :cond_17

    .line 343
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 344
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 346
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-static {v0, v1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    move-result v0

    return v0

    .line 341
    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "b == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "a == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getChar(Ljava/lang/String;II)I
    .registers 7
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spos"    # I
    .param p2, "mul"    # I

    .line 504
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 505
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 506
    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v1

    mul-int/2addr v1, p2

    return v1

    .line 508
    :cond_10
    new-instance v1, Landroid/util/TimeFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parse error at pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist getCurrentTimezone()Ljava/lang/String;
    .registers 1

    .line 686
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getJulianDay(JJ)I
    .registers 15
    .param p0, "millis"    # J
    .param p2, "gmtoffSeconds"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    .line 982
    .local v0, "offsetMillis":J
    add-long v2, p0, v0

    .line 983
    .local v2, "adjustedMillis":J
    const-wide/32 v4, 0x5265c00

    div-long v6, v2, v4

    .line 985
    .local v6, "julianDay":J
    const-wide/16 v8, 0x0

    cmp-long v10, v2, v8

    if-gez v10, :cond_19

    rem-long v4, v2, v4

    cmp-long v4, v4, v8

    if-eqz v4, :cond_19

    .line 986
    const-wide/16 v4, 0x1

    sub-long/2addr v6, v4

    .line 988
    :cond_19
    const-wide/32 v4, 0x253d8c

    add-long/2addr v4, v6

    long-to-int v4, v4

    return v4
.end method

.method public static whitelist getJulianMondayFromWeeksSinceEpoch(I)I
    .registers 3
    .param p0, "week"    # I

    .line 1064
    mul-int/lit8 v0, p0, 0x7

    const v1, 0x253d89

    add-int/2addr v0, v1

    return v0
.end method

.method public static whitelist getWeeksSinceEpochFromJulianDay(II)I
    .registers 5
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    .line 1045
    rsub-int/lit8 v0, p1, 0x4

    .line 1046
    .local v0, "diff":I
    if-gez v0, :cond_6

    .line 1047
    add-int/lit8 v0, v0, 0x7

    .line 1049
    :cond_6
    const v1, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v1, v0

    .line 1050
    .local v1, "refDay":I
    sub-int v2, p0, v1

    div-int/lit8 v2, v2, 0x7

    return v2
.end method

.method private greylist-max-o initialize(Ljava/lang/String;)V
    .registers 3
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 201
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 202
    const/16 v0, 0x7b2

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 203
    const/4 v0, 0x1

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 209
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    .line 210
    return-void
.end method

.method public static whitelist isEpoch(Landroid/text/format/Time;)Z
    .registers 6
    .param p0, "time"    # Landroid/text/format/Time;

    .line 955
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 956
    .local v1, "millis":J
    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    const v4, 0x253d8c    # 3.419992E-39f

    if-ne v3, v4, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method private greylist-max-o parse3339Internal(Ljava/lang/String;)Z
    .registers 15
    .param p1, "s"    # Ljava/lang/String;

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 556
    .local v0, "len":I
    const/16 v1, 0xa

    if-lt v0, v1, :cond_12b

    .line 559
    const/4 v2, 0x0

    .line 562
    .local v2, "inUtc":Z
    const/16 v3, 0x3e8

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 563
    .local v3, "n":I
    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-static {p1, v6, v5}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 564
    const/4 v5, 0x2

    invoke-static {p1, v5, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 565
    const/4 v5, 0x3

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 566
    iput v3, p0, Landroid/text/format/Time;->year:I

    .line 568
    const/4 v5, 0x4

    const/16 v7, 0x2d

    invoke-direct {p0, p1, v5, v7}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 571
    const/4 v5, 0x5

    invoke-static {p1, v5, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 572
    const/4 v5, 0x6

    invoke-static {p1, v5, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v5

    add-int/2addr v3, v5

    .line 573
    const/4 v5, -0x1

    add-int/2addr v3, v5

    .line 574
    iput v3, p0, Landroid/text/format/Time;->month:I

    .line 576
    const/4 v8, 0x7

    invoke-direct {p0, p1, v8, v7}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 579
    const/16 v7, 0x8

    invoke-static {p1, v7, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 580
    const/16 v7, 0x9

    invoke-static {p1, v7, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v3, v7

    .line 581
    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    .line 583
    const/16 v7, 0x13

    if-lt v0, v7, :cond_118

    .line 585
    const/16 v7, 0x54

    invoke-direct {p0, p1, v1, v7}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 586
    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    .line 589
    const/16 v7, 0xb

    invoke-static {p1, v7, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 590
    const/16 v7, 0xc

    invoke-static {p1, v7, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v7

    add-int/2addr v3, v7

    .line 593
    move v7, v3

    .line 595
    .local v7, "hour":I
    const/16 v8, 0xd

    const/16 v9, 0x3a

    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 598
    const/16 v8, 0xe

    invoke-static {p1, v8, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 599
    const/16 v8, 0xf

    invoke-static {p1, v8, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v3, v8

    .line 601
    move v8, v3

    .line 603
    .local v8, "minute":I
    const/16 v10, 0x10

    invoke-direct {p0, p1, v10, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 606
    const/16 v9, 0x11

    invoke-static {p1, v9, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 607
    const/16 v9, 0x12

    invoke-static {p1, v9, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v3, v9

    .line 608
    iput v3, p0, Landroid/text/format/Time;->second:I

    .line 612
    const/16 v9, 0x13

    .line 613
    .local v9, "tzIndex":I
    if-ge v9, v0, :cond_a9

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-ne v10, v11, :cond_a9

    .line 615
    :cond_9c
    add-int/2addr v9, v6

    .line 616
    if-ge v9, v0, :cond_a9

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_9c

    .line 619
    :cond_a9
    const/4 v10, 0x0

    .line 620
    .local v10, "offset":I
    if-le v0, v9, :cond_10e

    .line 621
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 624
    .local v11, "c":C
    sparse-switch v11, :sswitch_data_134

    .line 636
    new-instance v1, Landroid/util/TimeFormatException;

    .line 638
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 636
    const-string v5, "Unexpected character 0x%02d at position %d.  Expected + or -"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :sswitch_cb
    const/4 v10, 0x0

    .line 628
    goto :goto_d1

    .line 630
    :sswitch_cd
    const/4 v10, 0x1

    .line 631
    goto :goto_d1

    .line 633
    :sswitch_cf
    const/4 v10, -0x1

    .line 634
    nop

    .line 640
    :goto_d1
    const/4 v2, 0x1

    .line 642
    if-eqz v10, :cond_10e

    .line 643
    add-int/lit8 v12, v9, 0x6

    if-lt v0, v12, :cond_f8

    .line 650
    add-int/lit8 v12, v9, 0x1

    invoke-static {p1, v12, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    .line 651
    add-int/lit8 v12, v9, 0x2

    invoke-static {p1, v12, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v12

    add-int/2addr v3, v12

    .line 652
    mul-int/2addr v3, v10

    .line 653
    add-int/2addr v7, v3

    .line 656
    add-int/lit8 v12, v9, 0x4

    invoke-static {p1, v12, v1}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 657
    .end local v3    # "n":I
    .local v1, "n":I
    add-int/lit8 v3, v9, 0x5

    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v3

    add-int/2addr v1, v3

    .line 658
    mul-int/2addr v1, v10

    .line 659
    add-int/2addr v8, v1

    move v3, v1

    goto :goto_10e

    .line 644
    .end local v1    # "n":I
    .restart local v3    # "n":I
    :cond_f8
    new-instance v1, Landroid/util/TimeFormatException;

    add-int/lit8 v4, v9, 0x6

    .line 646
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    .line 645
    const-string v5, "Unexpected length; should be %d characters"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 662
    .end local v11    # "c":C
    :cond_10e
    :goto_10e
    iput v7, p0, Landroid/text/format/Time;->hour:I

    .line 663
    iput v8, p0, Landroid/text/format/Time;->minute:I

    .line 665
    if-eqz v10, :cond_117

    .line 666
    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 668
    .end local v7    # "hour":I
    .end local v8    # "minute":I
    .end local v9    # "tzIndex":I
    .end local v10    # "offset":I
    :cond_117
    goto :goto_120

    .line 669
    :cond_118
    iput-boolean v6, p0, Landroid/text/format/Time;->allDay:Z

    .line 670
    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 671
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 672
    iput v4, p0, Landroid/text/format/Time;->second:I

    .line 675
    :goto_120
    iput v4, p0, Landroid/text/format/Time;->weekDay:I

    .line 676
    iput v4, p0, Landroid/text/format/Time;->yearDay:I

    .line 677
    iput v5, p0, Landroid/text/format/Time;->isDst:I

    .line 678
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    .line 679
    return v2

    .line 557
    .end local v2    # "inUtc":Z
    .end local v3    # "n":I
    :cond_12b
    new-instance v1, Landroid/util/TimeFormatException;

    const-string v2, "String too short --- expected at least 10 characters."

    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_134
    .sparse-switch
        0x2b -> :sswitch_cf
        0x2d -> :sswitch_cd
        0x5a -> :sswitch_cb
    .end sparse-switch
.end method

.method private greylist-max-o parseInternal(Ljava/lang/String;)Z
    .registers 12
    .param p1, "s"    # Ljava/lang/String;

    .line 424
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 425
    .local v0, "len":I
    const-string v1, "String is too short: \""

    const/16 v2, 0x8

    if-lt v0, v2, :cond_b8

    .line 430
    const/4 v3, 0x0

    .line 433
    .local v3, "inUtc":Z
    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-static {p1, v5, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    .line 434
    .local v4, "n":I
    const/16 v6, 0x64

    const/4 v7, 0x1

    invoke-static {p1, v7, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v4, v6

    .line 435
    const/4 v6, 0x2

    const/16 v8, 0xa

    invoke-static {p1, v6, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v4, v6

    .line 436
    const/4 v6, 0x3

    invoke-static {p1, v6, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v4, v6

    .line 437
    iput v4, p0, Landroid/text/format/Time;->year:I

    .line 440
    const/4 v6, 0x4

    invoke-static {p1, v6, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    .line 441
    const/4 v6, 0x5

    invoke-static {p1, v6, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v6

    add-int/2addr v4, v6

    .line 442
    const/4 v6, -0x1

    add-int/2addr v4, v6

    .line 443
    iput v4, p0, Landroid/text/format/Time;->month:I

    .line 446
    const/4 v9, 0x6

    invoke-static {p1, v9, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v4

    .line 447
    const/4 v9, 0x7

    invoke-static {p1, v9, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v9

    add-int/2addr v4, v9

    .line 448
    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 450
    if-le v0, v2, :cond_a5

    .line 451
    const/16 v9, 0xf

    if-lt v0, v9, :cond_88

    .line 457
    const/16 v1, 0x54

    invoke-direct {p0, p1, v2, v1}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 458
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    .line 461
    const/16 v1, 0x9

    invoke-static {p1, v1, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 462
    .end local v4    # "n":I
    .local v1, "n":I
    invoke-static {p1, v8, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 463
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 466
    const/16 v2, 0xb

    invoke-static {p1, v2, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 467
    const/16 v2, 0xc

    invoke-static {p1, v2, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    add-int/2addr v1, v2

    .line 468
    iput v1, p0, Landroid/text/format/Time;->minute:I

    .line 471
    const/16 v2, 0xd

    invoke-static {p1, v2, v8}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v1

    .line 472
    const/16 v2, 0xe

    invoke-static {p1, v2, v7}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    move-result v2

    add-int v4, v1, v2

    .line 473
    .end local v1    # "n":I
    .restart local v4    # "n":I
    iput v4, p0, Landroid/text/format/Time;->second:I

    .line 475
    if-le v0, v9, :cond_ad

    .line 477
    const/16 v1, 0x5a

    invoke-direct {p0, p1, v9, v1}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    .line 478
    const/4 v3, 0x1

    goto :goto_ad

    .line 452
    :cond_88
    new-instance v2, Landroid/util/TimeFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\" If there are more than 8 characters there must be at least 15."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 481
    :cond_a5
    iput-boolean v7, p0, Landroid/text/format/Time;->allDay:Z

    .line 482
    iput v5, p0, Landroid/text/format/Time;->hour:I

    .line 483
    iput v5, p0, Landroid/text/format/Time;->minute:I

    .line 484
    iput v5, p0, Landroid/text/format/Time;->second:I

    .line 487
    :cond_ad
    :goto_ad
    iput v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 488
    iput v5, p0, Landroid/text/format/Time;->yearDay:I

    .line 489
    iput v6, p0, Landroid/text/format/Time;->isDst:I

    .line 490
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    .line 491
    return v3

    .line 426
    .end local v3    # "inUtc":Z
    .end local v4    # "n":I
    :cond_b8
    new-instance v2, Landroid/util/TimeFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" Expected at least 8 characters."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist after(Landroid/text/format/Time;)Z
    .registers 3
    .param p1, "that"    # Landroid/text/format/Time;

    .line 868
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist before(Landroid/text/format/Time;)Z
    .registers 3
    .param p1, "that"    # Landroid/text/format/Time;

    .line 852
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist clear(Ljava/lang/String;)V
    .registers 4
    .param p1, "timezoneId"    # Ljava/lang/String;

    .line 302
    if-eqz p1, :cond_1f

    .line 305
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 306
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 307
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 308
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 309
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 310
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 311
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 312
    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 313
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 314
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 315
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 316
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 317
    return-void

    .line 303
    :cond_1f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "timezone is null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist format(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "format"    # Ljava/lang/String;

    .line 357
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 358
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist format2445()Ljava/lang/String;
    .registers 3

    .line 777
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 778
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-boolean v1, p0, Landroid/text/format/Time;->allDay:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist format3339(Z)Ljava/lang/String;
    .registers 10
    .param p1, "allDay"    # Z

    .line 925
    if-eqz p1, :cond_9

    .line 926
    const-string v0, "%Y-%m-%d"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 927
    :cond_9
    const-string v0, "UTC"

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 928
    const-string v0, "%Y-%m-%dT%H:%M:%S.000Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 930
    :cond_1a
    const-string v0, "%Y-%m-%dT%H:%M:%S.000"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, "base":Ljava/lang/String;
    iget-wide v1, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_2b

    const-string v1, "-"

    goto :goto_2d

    :cond_2b
    const-string v1, "+"

    .line 932
    .local v1, "sign":Ljava/lang/String;
    :goto_2d
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 933
    .local v2, "offset":I
    rem-int/lit16 v3, v2, 0xe10

    div-int/lit8 v3, v3, 0x3c

    .line 934
    .local v3, "minutes":I
    div-int/lit16 v4, v2, 0xe10

    .line 936
    .local v4, "hours":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v0, v1, v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%s%s%02d:%02d"

    invoke-static {v5, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public whitelist getActualMaximum(I)I
    .registers 6
    .param p1, "field"    # I

    .line 262
    const/16 v0, 0x3b

    packed-switch p1, :pswitch_data_64

    .line 292
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad field="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :pswitch_1e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WEEK_NUM not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :pswitch_26
    iget v0, p0, Landroid/text/format/Time;->year:I

    .line 287
    .local v0, "y":I
    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_37

    rem-int/lit8 v1, v0, 0x64

    if-nez v1, :cond_34

    rem-int/lit16 v1, v0, 0x190

    if-nez v1, :cond_37

    :cond_34
    const/16 v1, 0x16d

    goto :goto_39

    :cond_37
    const/16 v1, 0x16c

    :goto_39
    return v1

    .line 283
    .end local v0    # "y":I
    :pswitch_3a
    const/4 v0, 0x6

    return v0

    .line 281
    :pswitch_3c
    const/16 v0, 0x7f5

    return v0

    .line 279
    :pswitch_3f
    const/16 v0, 0xb

    return v0

    .line 270
    :pswitch_42
    sget-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    iget v1, p0, Landroid/text/format/Time;->month:I

    aget v0, v0, v1

    .line 271
    .local v0, "n":I
    const/16 v1, 0x1c

    if-eq v0, v1, :cond_4d

    .line 272
    return v0

    .line 274
    :cond_4d
    iget v2, p0, Landroid/text/format/Time;->year:I

    .line 275
    .local v2, "y":I
    rem-int/lit8 v3, v2, 0x4

    if-nez v3, :cond_5d

    rem-int/lit8 v3, v2, 0x64

    if-nez v3, :cond_5b

    rem-int/lit16 v3, v2, 0x190

    if-nez v3, :cond_5d

    :cond_5b
    const/16 v1, 0x1d

    :cond_5d
    return v1

    .line 268
    .end local v0    # "n":I
    .end local v2    # "y":I
    :pswitch_5e
    const/16 v0, 0x17

    return v0

    .line 266
    :pswitch_61
    return v0

    .line 264
    :pswitch_62
    return v0

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_62
        :pswitch_61
        :pswitch_5e
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_3a
        :pswitch_26
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist getWeekNumber()I
    .registers 7

    .line 900
    iget v0, p0, Landroid/text/format/Time;->yearDay:I

    sget-object v1, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v2, p0, Landroid/text/format/Time;->weekDay:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 903
    .local v0, "closestThursday":I
    const/4 v1, 0x1

    if-ltz v0, :cond_14

    const/16 v2, 0x16c

    if-gt v0, v2, :cond_14

    .line 904
    div-int/lit8 v2, v0, 0x7

    add-int/2addr v2, v1

    return v2

    .line 908
    :cond_14
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 909
    .local v2, "temp":Landroid/text/format/Time;
    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    sget-object v4, Landroid/text/format/Time;->sThursdayOffset:[I

    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    aget v4, v4, v5

    add-int/2addr v3, v4

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 910
    invoke-virtual {v2, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 911
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    div-int/lit8 v3, v3, 0x7

    add-int/2addr v3, v1

    return v3
.end method

.method public whitelist normalize(Z)J
    .registers 5
    .param p1, "ignoreDst"    # Z

    .line 231
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 232
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 233
    .local v0, "timeInMillis":J
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 234
    return-wide v0
.end method

.method public whitelist parse(Ljava/lang/String;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 410
    if-eqz p1, :cond_10

    .line 413
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 414
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 415
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 411
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist parse3339(Ljava/lang/String;)Z
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .line 544
    if-eqz p1, :cond_10

    .line 547
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 548
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 549
    const/4 v0, 0x1

    return v0

    .line 551
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 545
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "time string is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist set(III)V
    .registers 6
    .param p1, "monthDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 828
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 829
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 830
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 831
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    .line 832
    iput p2, p0, Landroid/text/format/Time;->month:I

    .line 833
    iput p3, p0, Landroid/text/format/Time;->year:I

    .line 834
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 835
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 836
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 837
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 838
    return-void
.end method

.method public whitelist set(IIIIII)V
    .registers 9
    .param p1, "second"    # I
    .param p2, "minute"    # I
    .param p3, "hour"    # I
    .param p4, "monthDay"    # I
    .param p5, "month"    # I
    .param p6, "year"    # I

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 805
    iput p1, p0, Landroid/text/format/Time;->second:I

    .line 806
    iput p2, p0, Landroid/text/format/Time;->minute:I

    .line 807
    iput p3, p0, Landroid/text/format/Time;->hour:I

    .line 808
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    .line 809
    iput p5, p0, Landroid/text/format/Time;->month:I

    .line 810
    iput p6, p0, Landroid/text/format/Time;->year:I

    .line 811
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 812
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 813
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 814
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 815
    return-void
.end method

.method public whitelist set(J)V
    .registers 5
    .param p1, "millis"    # J

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 765
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 766
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    .line 767
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 768
    return-void
.end method

.method public whitelist set(Landroid/text/format/Time;)V
    .registers 4
    .param p1, "that"    # Landroid/text/format/Time;

    .line 785
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 786
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    .line 787
    iget v0, p1, Landroid/text/format/Time;->second:I

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 788
    iget v0, p1, Landroid/text/format/Time;->minute:I

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 789
    iget v0, p1, Landroid/text/format/Time;->hour:I

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 790
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 791
    iget v0, p1, Landroid/text/format/Time;->month:I

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 792
    iget v0, p1, Landroid/text/format/Time;->year:I

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 793
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    .line 794
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 795
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    iput v0, p0, Landroid/text/format/Time;->isDst:I

    .line 796
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    .line 797
    return-void
.end method

.method public whitelist setJulianDay(I)J
    .registers 7
    .param p1, "julianDay"    # I

    .line 1015
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 1016
    .local v0, "millis":J
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1020
    iget-wide v2, p0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 1021
    .local v2, "approximateDay":I
    sub-int v3, p1, v2

    .line 1022
    .local v3, "diff":I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v4, v3

    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 1025
    const/4 v4, 0x0

    iput v4, p0, Landroid/text/format/Time;->hour:I

    .line 1026
    iput v4, p0, Landroid/text/format/Time;->minute:I

    .line 1027
    iput v4, p0, Landroid/text/format/Time;->second:I

    .line 1028
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1029
    return-wide v0
.end method

.method public whitelist setToNow()V
    .registers 3

    .line 693
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 694
    return-void
.end method

.method public whitelist switchTimezone(Ljava/lang/String;)V
    .registers 3
    .param p1, "timezone"    # Ljava/lang/String;

    .line 245
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 246
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    .line 248
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public whitelist toMillis(Z)J
    .registers 4
    .param p1, "ignoreDst"    # Z

    .line 752
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 753
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 368
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, "calculator":Landroid/text/format/Time$TimeCalculator;
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    .line 370
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
