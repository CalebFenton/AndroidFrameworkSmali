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
.field private static final DAYS_PER_MONTH:[I

.field public static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final FRIDAY:I = 0x5

.field public static final HOUR:I = 0x3

.field public static final MINUTE:I = 0x2

.field public static final MONDAY:I = 0x1

.field public static final MONDAY_BEFORE_JULIAN_EPOCH:I = 0x253d89

.field public static final MONTH:I = 0x5

.field public static final MONTH_DAY:I = 0x4

.field public static final SATURDAY:I = 0x6

.field public static final SECOND:I = 0x1

.field public static final SUNDAY:I = 0x0

.field public static final THURSDAY:I = 0x4

.field public static final TIMEZONE_UTC:Ljava/lang/String; = "UTC"

.field public static final TUESDAY:I = 0x2

.field public static final WEDNESDAY:I = 0x3

.field public static final WEEK_DAY:I = 0x7

.field public static final WEEK_NUM:I = 0x9

.field public static final YEAR:I = 0x6

.field public static final YEAR_DAY:I = 0x8

.field private static final Y_M_D:Ljava/lang/String; = "%Y-%m-%d"

.field private static final Y_M_D_T_H_M_S_000:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000"

.field private static final Y_M_D_T_H_M_S_000_Z:Ljava/lang/String; = "%Y-%m-%dT%H:%M:%S.000Z"

.field private static final sThursdayOffset:[I


# instance fields
.field public allDay:Z

.field private calculator:Landroid/text/format/Time$TimeCalculator;

.field public gmtoff:J

.field public hour:I

.field public isDst:I

.field public minute:I

.field public month:I

.field public monthDay:I

.field public second:I

.field public timezone:Ljava/lang/String;

.field public weekDay:I

.field public year:I

.field public yearDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 250
    const/16 v0, 0xc

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    #@9
    .line 876
    const/4 v0, 0x7

    #@a
    new-array v0, v0, [I

    #@c
    fill-array-data v0, :array_1

    #@f
    sput-object v0, Landroid/text/format/Time;->sThursdayOffset:[I

    #@11
    .line 56
    return-void

    #@12
    .line 250
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

    #@2e
    .line 876
    :array_1
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

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 184
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    #@e
    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/text/format/Time;)V
    .locals 1
    .param p1, "other"    # Landroid/text/format/Time;

    #@0
    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 194
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@5
    invoke-direct {p0, v0}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    #@8
    .line 195
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    #@b
    .line 193
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 173
    if-nez p1, :cond_0

    #@5
    .line 174
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "timezoneId is null!"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 176
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->initialize(Ljava/lang/String;)V

    #@11
    .line 172
    return-void
.end method

.method private checkChar(Ljava/lang/String;IC)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "spos"    # I
    .param p3, "expected"    # C

    #@0
    .prologue
    .line 494
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@3
    move-result v0

    #@4
    .line 495
    .local v0, "c":C
    if-eq v0, p3, :cond_0

    #@6
    .line 496
    new-instance v1, Landroid/util/TimeFormatException;

    #@8
    .line 497
    const-string/jumbo v2, "Unexpected character 0x%02d at pos=%d.  Expected 0x%02d (\'%c\')."

    #@b
    .line 496
    const/4 v3, 0x4

    #@c
    new-array v3, v3, [Ljava/lang/Object;

    #@e
    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v4

    #@12
    const/4 v5, 0x0

    #@13
    aput-object v4, v3, v5

    #@15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v4

    #@19
    const/4 v5, 0x1

    #@1a
    aput-object v4, v3, v5

    #@1c
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f
    move-result-object v4

    #@20
    const/4 v5, 0x2

    #@21
    aput-object v4, v3, v5

    #@23
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    #@26
    move-result-object v4

    #@27
    const/4 v5, 0x3

    #@28
    aput-object v4, v3, v5

    #@2a
    .line 496
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    #@31
    throw v1

    #@32
    .line 493
    :cond_0
    return-void
.end method

.method public static compare(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 2
    .param p0, "a"    # Landroid/text/format/Time;
    .param p1, "b"    # Landroid/text/format/Time;

    #@0
    .prologue
    .line 337
    if-nez p0, :cond_0

    #@2
    .line 338
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "a == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 339
    :cond_0
    if-nez p1, :cond_1

    #@d
    .line 340
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    const-string/jumbo v1, "b == null"

    #@12
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 342
    :cond_1
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@18
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@1b
    .line 343
    iget-object v0, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@1d
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@20
    .line 345
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@22
    iget-object v1, p1, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@24
    invoke-static {v0, v1}, Landroid/text/format/Time$TimeCalculator;->compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I

    #@27
    move-result v0

    #@28
    return v0
.end method

.method private static getChar(Ljava/lang/String;II)I
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "spos"    # I
    .param p2, "mul"    # I

    #@0
    .prologue
    .line 503
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    #@3
    move-result v0

    #@4
    .line 504
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 505
    invoke-static {v0}, Ljava/lang/Character;->getNumericValue(C)I

    #@d
    move-result v1

    #@e
    mul-int/2addr v1, p2

    #@f
    return v1

    #@10
    .line 507
    :cond_0
    new-instance v1, Landroid/util/TimeFormatException;

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Parse error at pos="

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-direct {v1, v2}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    #@29
    throw v1
.end method

.method public static getCurrentTimezone()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 685
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getJulianDay(JJ)I
    .locals 8
    .param p0, "millis"    # J
    .param p2, "gmtoff"    # J

    #@0
    .prologue
    .line 975
    const-wide/16 v4, 0x3e8

    #@2
    mul-long v2, p2, v4

    #@4
    .line 976
    .local v2, "offsetMillis":J
    add-long v4, p0, v2

    #@6
    const-wide/32 v6, 0x5265c00

    #@9
    div-long v0, v4, v6

    #@b
    .line 977
    .local v0, "julianDay":J
    long-to-int v4, v0

    #@c
    const v5, 0x253d8c    # 3.419992E-39f

    #@f
    add-int/2addr v4, v5

    #@10
    return v4
.end method

.method public static getJulianMondayFromWeeksSinceEpoch(I)I
    .locals 2
    .param p0, "week"    # I

    #@0
    .prologue
    .line 1053
    mul-int/lit8 v0, p0, 0x7

    #@2
    const v1, 0x253d89

    #@5
    add-int/2addr v0, v1

    #@6
    return v0
.end method

.method public static getWeeksSinceEpochFromJulianDay(II)I
    .locals 3
    .param p0, "julianDay"    # I
    .param p1, "firstDayOfWeek"    # I

    #@0
    .prologue
    .line 1034
    rsub-int/lit8 v0, p1, 0x4

    #@2
    .line 1035
    .local v0, "diff":I
    if-gez v0, :cond_0

    #@4
    .line 1036
    add-int/lit8 v0, v0, 0x7

    #@6
    .line 1038
    :cond_0
    const v2, 0x253d8c    # 3.419992E-39f

    #@9
    sub-int v1, v2, v0

    #@b
    .line 1039
    .local v1, "refDay":I
    sub-int v2, p0, v1

    #@d
    div-int/lit8 v2, v2, 0x7

    #@f
    return v2
.end method

.method private initialize(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezoneId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 200
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@2
    .line 201
    const/16 v0, 0x7b2

    #@4
    iput v0, p0, Landroid/text/format/Time;->year:I

    #@6
    .line 202
    const/4 v0, 0x1

    #@7
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    #@9
    .line 205
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    #@c
    .line 208
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    #@e
    invoke-direct {v0, p1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    #@11
    iput-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@13
    .line 199
    return-void
.end method

.method public static isEpoch(Landroid/text/format/Time;)Z
    .locals 6
    .param p0, "time"    # Landroid/text/format/Time;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 952
    invoke-virtual {p0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    #@4
    move-result-wide v0

    #@5
    .line 953
    .local v0, "millis":J
    const-wide/16 v4, 0x0

    #@7
    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    #@a
    move-result v3

    #@b
    const v4, 0x253d8c    # 3.419992E-39f

    #@e
    if-ne v3, v4, :cond_0

    #@10
    :goto_0
    return v2

    #@11
    :cond_0
    const/4 v2, 0x0

    #@12
    goto :goto_0
.end method

.method private parse3339Internal(Ljava/lang/String;)Z
    .locals 13
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 554
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v3

    #@4
    .line 555
    .local v3, "len":I
    const/16 v8, 0xa

    #@6
    if-ge v3, v8, :cond_0

    #@8
    .line 556
    new-instance v8, Landroid/util/TimeFormatException;

    #@a
    const-string/jumbo v9, "String too short --- expected at least 10 characters."

    #@d
    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    #@10
    throw v8

    #@11
    .line 558
    :cond_0
    const/4 v2, 0x0

    #@12
    .line 561
    .local v2, "inUtc":Z
    const/4 v8, 0x0

    #@13
    const/16 v9, 0x3e8

    #@15
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@18
    move-result v5

    #@19
    .line 562
    .local v5, "n":I
    const/4 v8, 0x1

    #@1a
    const/16 v9, 0x64

    #@1c
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@1f
    move-result v8

    #@20
    add-int/2addr v5, v8

    #@21
    .line 563
    const/4 v8, 0x2

    #@22
    const/16 v9, 0xa

    #@24
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@27
    move-result v8

    #@28
    add-int/2addr v5, v8

    #@29
    .line 564
    const/4 v8, 0x3

    #@2a
    const/4 v9, 0x1

    #@2b
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@2e
    move-result v8

    #@2f
    add-int/2addr v5, v8

    #@30
    .line 565
    iput v5, p0, Landroid/text/format/Time;->year:I

    #@32
    .line 567
    const/4 v8, 0x4

    #@33
    const/16 v9, 0x2d

    #@35
    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    #@38
    .line 570
    const/4 v8, 0x5

    #@39
    const/16 v9, 0xa

    #@3b
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@3e
    move-result v5

    #@3f
    .line 571
    const/4 v8, 0x6

    #@40
    const/4 v9, 0x1

    #@41
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@44
    move-result v8

    #@45
    add-int/2addr v5, v8

    #@46
    .line 572
    add-int/lit8 v5, v5, -0x1

    #@48
    .line 573
    iput v5, p0, Landroid/text/format/Time;->month:I

    #@4a
    .line 575
    const/4 v8, 0x7

    #@4b
    const/16 v9, 0x2d

    #@4d
    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    #@50
    .line 578
    const/16 v8, 0x8

    #@52
    const/16 v9, 0xa

    #@54
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@57
    move-result v5

    #@58
    .line 579
    const/16 v8, 0x9

    #@5a
    const/4 v9, 0x1

    #@5b
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@5e
    move-result v8

    #@5f
    add-int/2addr v5, v8

    #@60
    .line 580
    iput v5, p0, Landroid/text/format/Time;->monthDay:I

    #@62
    .line 582
    const/16 v8, 0x13

    #@64
    if-lt v3, v8, :cond_6

    #@66
    .line 584
    const/16 v8, 0xa

    #@68
    const/16 v9, 0x54

    #@6a
    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    #@6d
    .line 585
    const/4 v8, 0x0

    #@6e
    iput-boolean v8, p0, Landroid/text/format/Time;->allDay:Z

    #@70
    .line 588
    const/16 v8, 0xb

    #@72
    const/16 v9, 0xa

    #@74
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@77
    move-result v5

    #@78
    .line 589
    const/16 v8, 0xc

    #@7a
    const/4 v9, 0x1

    #@7b
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@7e
    move-result v8

    #@7f
    add-int/2addr v5, v8

    #@80
    .line 592
    move v1, v5

    #@81
    .line 594
    .local v1, "hour":I
    const/16 v8, 0xd

    #@83
    const/16 v9, 0x3a

    #@85
    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    #@88
    .line 597
    const/16 v8, 0xe

    #@8a
    const/16 v9, 0xa

    #@8c
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@8f
    move-result v5

    #@90
    .line 598
    const/16 v8, 0xf

    #@92
    const/4 v9, 0x1

    #@93
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@96
    move-result v8

    #@97
    add-int/2addr v5, v8

    #@98
    .line 600
    move v4, v5

    #@99
    .line 602
    .local v4, "minute":I
    const/16 v8, 0x10

    #@9b
    const/16 v9, 0x3a

    #@9d
    invoke-direct {p0, p1, v8, v9}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    #@a0
    .line 605
    const/16 v8, 0x11

    #@a2
    const/16 v9, 0xa

    #@a4
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@a7
    move-result v5

    #@a8
    .line 606
    const/16 v8, 0x12

    #@aa
    const/4 v9, 0x1

    #@ab
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@ae
    move-result v8

    #@af
    add-int/2addr v5, v8

    #@b0
    .line 607
    iput v5, p0, Landroid/text/format/Time;->second:I

    #@b2
    .line 611
    const/16 v7, 0x13

    #@b4
    .local v7, "tzIndex":I
    const/16 v8, 0x13

    #@b6
    .line 612
    if-ge v8, v3, :cond_2

    #@b8
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@bb
    move-result v8

    #@bc
    const/16 v9, 0x2e

    #@be
    if-ne v8, v9, :cond_2

    #@c0
    .line 614
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@c2
    .line 615
    if-ge v7, v3, :cond_2

    #@c4
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@c7
    move-result v8

    #@c8
    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    #@cb
    move-result v8

    #@cc
    if-nez v8, :cond_1

    #@ce
    .line 618
    :cond_2
    const/4 v6, 0x0

    #@cf
    .line 619
    .local v6, "offset":I
    if-le v3, v7, :cond_4

    #@d1
    .line 620
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@d4
    move-result v0

    #@d5
    .line 623
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    #@d8
    .line 635
    new-instance v8, Landroid/util/TimeFormatException;

    #@da
    .line 636
    const-string/jumbo v9, "Unexpected character 0x%02d at position %d.  Expected + or -"

    #@dd
    .line 635
    const/4 v10, 0x2

    #@de
    new-array v10, v10, [Ljava/lang/Object;

    #@e0
    .line 637
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@e3
    move-result-object v11

    #@e4
    const/4 v12, 0x0

    #@e5
    aput-object v11, v10, v12

    #@e7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@ea
    move-result-object v11

    #@eb
    const/4 v12, 0x1

    #@ec
    aput-object v11, v10, v12

    #@ee
    .line 635
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@f1
    move-result-object v9

    #@f2
    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v8

    #@f6
    .line 626
    :sswitch_0
    const/4 v6, 0x0

    #@f7
    .line 639
    :goto_0
    const/4 v2, 0x1

    #@f8
    .line 641
    if-eqz v6, :cond_4

    #@fa
    .line 642
    add-int/lit8 v8, v7, 0x6

    #@fc
    if-ge v3, v8, :cond_3

    #@fe
    .line 643
    new-instance v8, Landroid/util/TimeFormatException;

    #@100
    .line 644
    const-string/jumbo v9, "Unexpected length; should be %d characters"

    #@103
    const/4 v10, 0x1

    #@104
    new-array v10, v10, [Ljava/lang/Object;

    #@106
    .line 645
    add-int/lit8 v11, v7, 0x6

    #@108
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10b
    move-result-object v11

    #@10c
    const/4 v12, 0x0

    #@10d
    aput-object v11, v10, v12

    #@10f
    .line 644
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@112
    move-result-object v9

    #@113
    .line 643
    invoke-direct {v8, v9}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    #@116
    throw v8

    #@117
    .line 629
    :sswitch_1
    const/4 v6, 0x1

    #@118
    .line 630
    goto :goto_0

    #@119
    .line 632
    :sswitch_2
    const/4 v6, -0x1

    #@11a
    .line 633
    goto :goto_0

    #@11b
    .line 649
    :cond_3
    add-int/lit8 v8, v7, 0x1

    #@11d
    const/16 v9, 0xa

    #@11f
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@122
    move-result v5

    #@123
    .line 650
    add-int/lit8 v8, v7, 0x2

    #@125
    const/4 v9, 0x1

    #@126
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@129
    move-result v8

    #@12a
    add-int/2addr v5, v8

    #@12b
    .line 651
    mul-int/2addr v5, v6

    #@12c
    .line 652
    add-int/2addr v1, v5

    #@12d
    .line 655
    add-int/lit8 v8, v7, 0x4

    #@12f
    const/16 v9, 0xa

    #@131
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@134
    move-result v5

    #@135
    .line 656
    add-int/lit8 v8, v7, 0x5

    #@137
    const/4 v9, 0x1

    #@138
    invoke-static {p1, v8, v9}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@13b
    move-result v8

    #@13c
    add-int/2addr v5, v8

    #@13d
    .line 657
    mul-int/2addr v5, v6

    #@13e
    .line 658
    add-int/2addr v4, v5

    #@13f
    .line 661
    .end local v0    # "c":C
    :cond_4
    iput v1, p0, Landroid/text/format/Time;->hour:I

    #@141
    .line 662
    iput v4, p0, Landroid/text/format/Time;->minute:I

    #@143
    .line 664
    if-eqz v6, :cond_5

    #@145
    .line 665
    const/4 v8, 0x0

    #@146
    invoke-virtual {p0, v8}, Landroid/text/format/Time;->normalize(Z)J

    #@149
    .line 674
    .end local v1    # "hour":I
    .end local v4    # "minute":I
    .end local v6    # "offset":I
    .end local v7    # "tzIndex":I
    :cond_5
    :goto_1
    const/4 v8, 0x0

    #@14a
    iput v8, p0, Landroid/text/format/Time;->weekDay:I

    #@14c
    .line 675
    const/4 v8, 0x0

    #@14d
    iput v8, p0, Landroid/text/format/Time;->yearDay:I

    #@14f
    .line 676
    const/4 v8, -0x1

    #@150
    iput v8, p0, Landroid/text/format/Time;->isDst:I

    #@152
    .line 677
    const-wide/16 v8, 0x0

    #@154
    iput-wide v8, p0, Landroid/text/format/Time;->gmtoff:J

    #@156
    .line 678
    return v2

    #@157
    .line 668
    :cond_6
    const/4 v8, 0x1

    #@158
    iput-boolean v8, p0, Landroid/text/format/Time;->allDay:Z

    #@15a
    .line 669
    const/4 v8, 0x0

    #@15b
    iput v8, p0, Landroid/text/format/Time;->hour:I

    #@15d
    .line 670
    const/4 v8, 0x0

    #@15e
    iput v8, p0, Landroid/text/format/Time;->minute:I

    #@160
    .line 671
    const/4 v8, 0x0

    #@161
    iput v8, p0, Landroid/text/format/Time;->second:I

    #@163
    goto :goto_1

    #@164
    .line 623
    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_2
        0x2d -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method private parseInternal(Ljava/lang/String;)Z
    .locals 9
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v8, 0xf

    #@2
    const/16 v7, 0x8

    #@4
    const/16 v6, 0xa

    #@6
    const/4 v5, 0x0

    #@7
    const/4 v4, 0x1

    #@8
    .line 423
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v1

    #@c
    .line 424
    .local v1, "len":I
    if-ge v1, v7, :cond_0

    #@e
    .line 425
    new-instance v3, Landroid/util/TimeFormatException;

    #@10
    new-instance v4, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v5, "String is too short: \""

    #@18
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v4

    #@20
    .line 426
    const-string/jumbo v5, "\" Expected at least 8 characters."

    #@23
    .line 425
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v3

    #@2f
    .line 429
    :cond_0
    const/4 v0, 0x0

    #@30
    .line 432
    .local v0, "inUtc":Z
    const/16 v3, 0x3e8

    #@32
    invoke-static {p1, v5, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@35
    move-result v2

    #@36
    .line 433
    .local v2, "n":I
    const/16 v3, 0x64

    #@38
    invoke-static {p1, v4, v3}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@3b
    move-result v3

    #@3c
    add-int/2addr v2, v3

    #@3d
    .line 434
    const/4 v3, 0x2

    #@3e
    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@41
    move-result v3

    #@42
    add-int/2addr v2, v3

    #@43
    .line 435
    const/4 v3, 0x3

    #@44
    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@47
    move-result v3

    #@48
    add-int/2addr v2, v3

    #@49
    .line 436
    iput v2, p0, Landroid/text/format/Time;->year:I

    #@4b
    .line 439
    const/4 v3, 0x4

    #@4c
    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@4f
    move-result v2

    #@50
    .line 440
    const/4 v3, 0x5

    #@51
    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@54
    move-result v3

    #@55
    add-int/2addr v2, v3

    #@56
    .line 441
    add-int/lit8 v2, v2, -0x1

    #@58
    .line 442
    iput v2, p0, Landroid/text/format/Time;->month:I

    #@5a
    .line 445
    const/4 v3, 0x6

    #@5b
    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@5e
    move-result v2

    #@5f
    .line 446
    const/4 v3, 0x7

    #@60
    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@63
    move-result v3

    #@64
    add-int/2addr v2, v3

    #@65
    .line 447
    iput v2, p0, Landroid/text/format/Time;->monthDay:I

    #@67
    .line 449
    if-le v1, v7, :cond_3

    #@69
    .line 450
    if-ge v1, v8, :cond_1

    #@6b
    .line 451
    new-instance v3, Landroid/util/TimeFormatException;

    #@6d
    .line 452
    new-instance v4, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v5, "String is too short: \""

    #@75
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v4

    #@7d
    .line 453
    const-string/jumbo v5, "\" If there are more than 8 characters there must be at least"

    #@80
    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v4

    #@84
    .line 454
    const-string/jumbo v5, " 15."

    #@87
    .line 452
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v4

    #@8f
    .line 451
    invoke-direct {v3, v4}, Landroid/util/TimeFormatException;-><init>(Ljava/lang/String;)V

    #@92
    throw v3

    #@93
    .line 456
    :cond_1
    const/16 v3, 0x54

    #@95
    invoke-direct {p0, p1, v7, v3}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    #@98
    .line 457
    iput-boolean v5, p0, Landroid/text/format/Time;->allDay:Z

    #@9a
    .line 460
    const/16 v3, 0x9

    #@9c
    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@9f
    move-result v2

    #@a0
    .line 461
    invoke-static {p1, v6, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@a3
    move-result v3

    #@a4
    add-int/2addr v2, v3

    #@a5
    .line 462
    iput v2, p0, Landroid/text/format/Time;->hour:I

    #@a7
    .line 465
    const/16 v3, 0xb

    #@a9
    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@ac
    move-result v2

    #@ad
    .line 466
    const/16 v3, 0xc

    #@af
    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@b2
    move-result v3

    #@b3
    add-int/2addr v2, v3

    #@b4
    .line 467
    iput v2, p0, Landroid/text/format/Time;->minute:I

    #@b6
    .line 470
    const/16 v3, 0xd

    #@b8
    invoke-static {p1, v3, v6}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@bb
    move-result v2

    #@bc
    .line 471
    const/16 v3, 0xe

    #@be
    invoke-static {p1, v3, v4}, Landroid/text/format/Time;->getChar(Ljava/lang/String;II)I

    #@c1
    move-result v3

    #@c2
    add-int/2addr v2, v3

    #@c3
    .line 472
    iput v2, p0, Landroid/text/format/Time;->second:I

    #@c5
    .line 474
    if-le v1, v8, :cond_2

    #@c7
    .line 476
    const/16 v3, 0x5a

    #@c9
    invoke-direct {p0, p1, v8, v3}, Landroid/text/format/Time;->checkChar(Ljava/lang/String;IC)V

    #@cc
    .line 477
    const/4 v0, 0x1

    #@cd
    .line 486
    :cond_2
    :goto_0
    iput v5, p0, Landroid/text/format/Time;->weekDay:I

    #@cf
    .line 487
    iput v5, p0, Landroid/text/format/Time;->yearDay:I

    #@d1
    .line 488
    const/4 v3, -0x1

    #@d2
    iput v3, p0, Landroid/text/format/Time;->isDst:I

    #@d4
    .line 489
    const-wide/16 v4, 0x0

    #@d6
    iput-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    #@d8
    .line 490
    return v0

    #@d9
    .line 480
    :cond_3
    iput-boolean v4, p0, Landroid/text/format/Time;->allDay:Z

    #@db
    .line 481
    iput v5, p0, Landroid/text/format/Time;->hour:I

    #@dd
    .line 482
    iput v5, p0, Landroid/text/format/Time;->minute:I

    #@df
    .line 483
    iput v5, p0, Landroid/text/format/Time;->second:I

    #@e1
    goto :goto_0
.end method


# virtual methods
.method public after(Landroid/text/format/Time;)Z
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 868
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    #@4
    move-result v1

    #@5
    if-lez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public before(Landroid/text/format/Time;)Z
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 852
    invoke-static {p0, p1}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    #@4
    move-result v1

    #@5
    if-gez v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "timezoneId"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 301
    if-nez p1, :cond_0

    #@3
    .line 302
    new-instance v0, Ljava/lang/NullPointerException;

    #@5
    const-string/jumbo v1, "timezone is null!"

    #@8
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 304
    :cond_0
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@e
    .line 305
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    #@10
    .line 306
    iput v0, p0, Landroid/text/format/Time;->second:I

    #@12
    .line 307
    iput v0, p0, Landroid/text/format/Time;->minute:I

    #@14
    .line 308
    iput v0, p0, Landroid/text/format/Time;->hour:I

    #@16
    .line 309
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    #@18
    .line 310
    iput v0, p0, Landroid/text/format/Time;->month:I

    #@1a
    .line 311
    iput v0, p0, Landroid/text/format/Time;->year:I

    #@1c
    .line 312
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    #@1e
    .line 313
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    #@20
    .line 314
    const-wide/16 v0, 0x0

    #@22
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    #@24
    .line 315
    const/4 v0, -0x1

    #@25
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    #@27
    .line 300
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@2
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@5
    .line 357
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@7
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->format(Ljava/lang/String;)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public format2445()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 777
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@2
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@5
    .line 778
    iget-object v1, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@7
    iget-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    const/4 v0, 0x0

    #@c
    :goto_0
    invoke-virtual {v1, v0}, Landroid/text/format/Time$TimeCalculator;->format2445(Z)Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    return-object v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public format3339(Z)Ljava/lang/String;
    .locals 10
    .param p1, "allDay"    # Z

    #@0
    .prologue
    .line 925
    if-eqz p1, :cond_0

    #@2
    .line 926
    const-string/jumbo v5, "%Y-%m-%d"

    #@5
    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    return-object v5

    #@a
    .line 927
    :cond_0
    const-string/jumbo v5, "UTC"

    #@d
    iget-object v6, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@f
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 928
    const-string/jumbo v5, "%Y-%m-%dT%H:%M:%S.000Z"

    #@18
    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    return-object v5

    #@1d
    .line 930
    :cond_1
    const-string/jumbo v5, "%Y-%m-%dT%H:%M:%S.000"

    #@20
    invoke-virtual {p0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    .line 931
    .local v0, "base":Ljava/lang/String;
    iget-wide v6, p0, Landroid/text/format/Time;->gmtoff:J

    #@26
    const-wide/16 v8, 0x0

    #@28
    cmp-long v5, v6, v8

    #@2a
    if-gez v5, :cond_2

    #@2c
    const-string/jumbo v4, "-"

    #@2f
    .line 932
    .local v4, "sign":Ljava/lang/String;
    :goto_0
    iget-wide v6, p0, Landroid/text/format/Time;->gmtoff:J

    #@31
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    #@34
    move-result-wide v6

    #@35
    long-to-int v3, v6

    #@36
    .line 933
    .local v3, "offset":I
    rem-int/lit16 v5, v3, 0xe10

    #@38
    div-int/lit8 v2, v5, 0x3c

    #@3a
    .line 934
    .local v2, "minutes":I
    div-int/lit16 v1, v3, 0xe10

    #@3c
    .line 936
    .local v1, "hours":I
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@3e
    const-string/jumbo v6, "%s%s%02d:%02d"

    #@41
    const/4 v7, 0x4

    #@42
    new-array v7, v7, [Ljava/lang/Object;

    #@44
    const/4 v8, 0x0

    #@45
    aput-object v0, v7, v8

    #@47
    const/4 v8, 0x1

    #@48
    aput-object v4, v7, v8

    #@4a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4d
    move-result-object v8

    #@4e
    const/4 v9, 0x2

    #@4f
    aput-object v8, v7, v9

    #@51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@54
    move-result-object v8

    #@55
    const/4 v9, 0x3

    #@56
    aput-object v8, v7, v9

    #@58
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    return-object v5

    #@5d
    .line 931
    .end local v1    # "hours":I
    .end local v2    # "minutes":I
    .end local v3    # "offset":I
    .end local v4    # "sign":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "+"

    #@60
    .restart local v4    # "sign":Ljava/lang/String;
    goto :goto_0
.end method

.method public getActualMaximum(I)I
    .locals 5
    .param p1, "field"    # I

    #@0
    .prologue
    const/16 v3, 0x3b

    #@2
    const/16 v2, 0x1c

    #@4
    .line 261
    packed-switch p1, :pswitch_data_0

    #@7
    .line 291
    new-instance v2, Ljava/lang/RuntimeException;

    #@9
    new-instance v3, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v4, "bad field="

    #@11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 263
    :pswitch_0
    return v3

    #@22
    .line 265
    :pswitch_1
    return v3

    #@23
    .line 267
    :pswitch_2
    const/16 v2, 0x17

    #@25
    return v2

    #@26
    .line 269
    :pswitch_3
    sget-object v3, Landroid/text/format/Time;->DAYS_PER_MONTH:[I

    #@28
    iget v4, p0, Landroid/text/format/Time;->month:I

    #@2a
    aget v0, v3, v4

    #@2c
    .line 270
    .local v0, "n":I
    if-eq v0, v2, :cond_0

    #@2e
    .line 271
    return v0

    #@2f
    .line 273
    :cond_0
    iget v1, p0, Landroid/text/format/Time;->year:I

    #@31
    .line 274
    .local v1, "y":I
    rem-int/lit8 v3, v1, 0x4

    #@33
    if-nez v3, :cond_2

    #@35
    rem-int/lit8 v3, v1, 0x64

    #@37
    if-nez v3, :cond_1

    #@39
    rem-int/lit16 v3, v1, 0x190

    #@3b
    if-nez v3, :cond_2

    #@3d
    :cond_1
    const/16 v2, 0x1d

    #@3f
    :cond_2
    return v2

    #@40
    .line 278
    .end local v0    # "n":I
    .end local v1    # "y":I
    :pswitch_4
    const/16 v2, 0xb

    #@42
    return v2

    #@43
    .line 280
    :pswitch_5
    const/16 v2, 0x7f5

    #@45
    return v2

    #@46
    .line 282
    :pswitch_6
    const/4 v2, 0x6

    #@47
    return v2

    #@48
    .line 284
    :pswitch_7
    iget v1, p0, Landroid/text/format/Time;->year:I

    #@4a
    .line 286
    .restart local v1    # "y":I
    rem-int/lit8 v2, v1, 0x4

    #@4c
    if-nez v2, :cond_4

    #@4e
    rem-int/lit8 v2, v1, 0x64

    #@50
    if-nez v2, :cond_3

    #@52
    rem-int/lit16 v2, v1, 0x190

    #@54
    if-nez v2, :cond_4

    #@56
    :cond_3
    const/16 v2, 0x16d

    #@58
    :goto_0
    return v2

    #@59
    :cond_4
    const/16 v2, 0x16c

    #@5b
    goto :goto_0

    #@5c
    .line 289
    .end local v1    # "y":I
    :pswitch_8
    new-instance v2, Ljava/lang/RuntimeException;

    #@5e
    const-string/jumbo v3, "WEEK_NUM not implemented"

    #@61
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@64
    throw v2

    #@65
    .line 261
    nop

    #@66
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getWeekNumber()I
    .locals 5

    #@0
    .prologue
    .line 900
    iget v2, p0, Landroid/text/format/Time;->yearDay:I

    #@2
    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    #@4
    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    #@6
    aget v3, v3, v4

    #@8
    add-int v0, v2, v3

    #@a
    .line 903
    .local v0, "closestThursday":I
    if-ltz v0, :cond_0

    #@c
    const/16 v2, 0x16c

    #@e
    if-gt v0, v2, :cond_0

    #@10
    .line 904
    div-int/lit8 v2, v0, 0x7

    #@12
    add-int/lit8 v2, v2, 0x1

    #@14
    return v2

    #@15
    .line 908
    :cond_0
    new-instance v1, Landroid/text/format/Time;

    #@17
    invoke-direct {v1, p0}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    #@1a
    .line 909
    .local v1, "temp":Landroid/text/format/Time;
    iget v2, v1, Landroid/text/format/Time;->monthDay:I

    #@1c
    sget-object v3, Landroid/text/format/Time;->sThursdayOffset:[I

    #@1e
    iget v4, p0, Landroid/text/format/Time;->weekDay:I

    #@20
    aget v3, v3, v4

    #@22
    add-int/2addr v2, v3

    #@23
    iput v2, v1, Landroid/text/format/Time;->monthDay:I

    #@25
    .line 910
    const/4 v2, 0x1

    #@26
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    #@29
    .line 911
    iget v2, v1, Landroid/text/format/Time;->yearDay:I

    #@2b
    div-int/lit8 v2, v2, 0x7

    #@2d
    add-int/lit8 v2, v2, 0x1

    #@2f
    return v2
.end method

.method public normalize(Z)J
    .locals 3
    .param p1, "ignoreDst"    # Z

    #@0
    .prologue
    .line 230
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@2
    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@5
    .line 231
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@7
    invoke-virtual {v2, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    #@a
    move-result-wide v0

    #@b
    .line 232
    .local v0, "timeInMillis":J
    iget-object v2, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@d
    invoke-virtual {v2, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    #@10
    .line 233
    return-wide v0
.end method

.method public parse(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 409
    if-nez p1, :cond_0

    #@2
    .line 410
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "time string is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 412
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parseInternal(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 413
    const-string/jumbo v0, "UTC"

    #@14
    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@16
    .line 414
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 416
    :cond_1
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method public parse3339(Ljava/lang/String;)Z
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 543
    if-nez p1, :cond_0

    #@2
    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "time string is null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 546
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/format/Time;->parse3339Internal(Ljava/lang/String;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 547
    const-string/jumbo v0, "UTC"

    #@14
    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@16
    .line 548
    const/4 v0, 0x1

    #@17
    return v0

    #@18
    .line 550
    :cond_1
    const/4 v0, 0x0

    #@19
    return v0
.end method

.method public set(III)V
    .locals 2
    .param p1, "monthDay"    # I
    .param p2, "month"    # I
    .param p3, "year"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 827
    const/4 v0, 0x1

    #@2
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    #@4
    .line 828
    iput v1, p0, Landroid/text/format/Time;->second:I

    #@6
    .line 829
    iput v1, p0, Landroid/text/format/Time;->minute:I

    #@8
    .line 830
    iput v1, p0, Landroid/text/format/Time;->hour:I

    #@a
    .line 831
    iput p1, p0, Landroid/text/format/Time;->monthDay:I

    #@c
    .line 832
    iput p2, p0, Landroid/text/format/Time;->month:I

    #@e
    .line 833
    iput p3, p0, Landroid/text/format/Time;->year:I

    #@10
    .line 834
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    #@12
    .line 835
    iput v1, p0, Landroid/text/format/Time;->yearDay:I

    #@14
    .line 836
    const/4 v0, -0x1

    #@15
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    #@17
    .line 837
    const-wide/16 v0, 0x0

    #@19
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    #@1b
    .line 826
    return-void
.end method

.method public set(IIIIII)V
    .locals 2
    .param p1, "second"    # I
    .param p2, "minute"    # I
    .param p3, "hour"    # I
    .param p4, "monthDay"    # I
    .param p5, "month"    # I
    .param p6, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 804
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    #@3
    .line 805
    iput p1, p0, Landroid/text/format/Time;->second:I

    #@5
    .line 806
    iput p2, p0, Landroid/text/format/Time;->minute:I

    #@7
    .line 807
    iput p3, p0, Landroid/text/format/Time;->hour:I

    #@9
    .line 808
    iput p4, p0, Landroid/text/format/Time;->monthDay:I

    #@b
    .line 809
    iput p5, p0, Landroid/text/format/Time;->month:I

    #@d
    .line 810
    iput p6, p0, Landroid/text/format/Time;->year:I

    #@f
    .line 811
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    #@11
    .line 812
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    #@13
    .line 813
    const/4 v0, -0x1

    #@14
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    #@16
    .line 814
    const-wide/16 v0, 0x0

    #@18
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    #@1a
    .line 803
    return-void
.end method

.method public set(J)V
    .locals 3
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 764
    const/4 v0, 0x0

    #@1
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    #@3
    .line 765
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@5
    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@7
    iput-object v1, v0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    #@9
    .line 766
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@b
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time$TimeCalculator;->setTimeInMillis(J)V

    #@e
    .line 767
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@10
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    #@13
    .line 763
    return-void
.end method

.method public set(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "that"    # Landroid/text/format/Time;

    #@0
    .prologue
    .line 785
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@4
    .line 786
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    #@6
    iput-boolean v0, p0, Landroid/text/format/Time;->allDay:Z

    #@8
    .line 787
    iget v0, p1, Landroid/text/format/Time;->second:I

    #@a
    iput v0, p0, Landroid/text/format/Time;->second:I

    #@c
    .line 788
    iget v0, p1, Landroid/text/format/Time;->minute:I

    #@e
    iput v0, p0, Landroid/text/format/Time;->minute:I

    #@10
    .line 789
    iget v0, p1, Landroid/text/format/Time;->hour:I

    #@12
    iput v0, p0, Landroid/text/format/Time;->hour:I

    #@14
    .line 790
    iget v0, p1, Landroid/text/format/Time;->monthDay:I

    #@16
    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    #@18
    .line 791
    iget v0, p1, Landroid/text/format/Time;->month:I

    #@1a
    iput v0, p0, Landroid/text/format/Time;->month:I

    #@1c
    .line 792
    iget v0, p1, Landroid/text/format/Time;->year:I

    #@1e
    iput v0, p0, Landroid/text/format/Time;->year:I

    #@20
    .line 793
    iget v0, p1, Landroid/text/format/Time;->weekDay:I

    #@22
    iput v0, p0, Landroid/text/format/Time;->weekDay:I

    #@24
    .line 794
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    #@26
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    #@28
    .line 795
    iget v0, p1, Landroid/text/format/Time;->isDst:I

    #@2a
    iput v0, p0, Landroid/text/format/Time;->isDst:I

    #@2c
    .line 796
    iget-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    #@2e
    iput-wide v0, p0, Landroid/text/format/Time;->gmtoff:J

    #@30
    .line 784
    return-void
.end method

.method public setJulianDay(I)J
    .locals 9
    .param p1, "julianDay"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1004
    const v4, 0x253d8c    # 3.419992E-39f

    #@4
    sub-int v4, p1, v4

    #@6
    int-to-long v4, v4

    #@7
    const-wide/32 v6, 0x5265c00

    #@a
    mul-long v2, v4, v6

    #@c
    .line 1005
    .local v2, "millis":J
    invoke-virtual {p0, v2, v3}, Landroid/text/format/Time;->set(J)V

    #@f
    .line 1009
    iget-wide v4, p0, Landroid/text/format/Time;->gmtoff:J

    #@11
    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    #@14
    move-result v0

    #@15
    .line 1010
    .local v0, "approximateDay":I
    sub-int v1, p1, v0

    #@17
    .line 1011
    .local v1, "diff":I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    #@19
    add-int/2addr v4, v1

    #@1a
    iput v4, p0, Landroid/text/format/Time;->monthDay:I

    #@1c
    .line 1014
    iput v8, p0, Landroid/text/format/Time;->hour:I

    #@1e
    .line 1015
    iput v8, p0, Landroid/text/format/Time;->minute:I

    #@20
    .line 1016
    iput v8, p0, Landroid/text/format/Time;->second:I

    #@22
    .line 1017
    const/4 v4, 0x1

    #@23
    invoke-virtual {p0, v4}, Landroid/text/format/Time;->normalize(Z)J

    #@26
    move-result-wide v2

    #@27
    .line 1018
    return-wide v2
.end method

.method public setToNow()V
    .locals 2

    #@0
    .prologue
    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/text/format/Time;->set(J)V

    #@7
    .line 691
    return-void
.end method

.method public switchTimezone(Ljava/lang/String;)V
    .locals 1
    .param p1, "timezone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 244
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@2
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@5
    .line 245
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@7
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->switchTimeZone(Ljava/lang/String;)V

    #@a
    .line 246
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@c
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsToTime(Landroid/text/format/Time;)V

    #@f
    .line 247
    iput-object p1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@11
    .line 243
    return-void
.end method

.method public toMillis(Z)J
    .locals 2
    .param p1, "ignoreDst"    # Z

    #@0
    .prologue
    .line 752
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@2
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@5
    .line 753
    iget-object v0, p0, Landroid/text/format/Time;->calculator:Landroid/text/format/Time$TimeCalculator;

    #@7
    invoke-virtual {v0, p1}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    #@a
    move-result-wide v0

    #@b
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 367
    new-instance v0, Landroid/text/format/Time$TimeCalculator;

    #@2
    iget-object v1, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Landroid/text/format/Time$TimeCalculator;-><init>(Ljava/lang/String;)V

    #@7
    .line 368
    .local v0, "calculator":Landroid/text/format/Time$TimeCalculator;
    invoke-virtual {v0, p0}, Landroid/text/format/Time$TimeCalculator;->copyFieldsFromTime(Landroid/text/format/Time;)V

    #@a
    .line 369
    invoke-virtual {v0}, Landroid/text/format/Time$TimeCalculator;->toStringInternal()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method
