.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static DaysInMonth:[B = null

.field private static DaysInYear:[I = null

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static leastMaximums:[I = null

.field private static maximums:[I = null

.field private static minimums:[I = null

.field private static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient changeYear:I

.field private currentYearSkew:I

.field private gregorianCutover:J

.field private transient julianSkew:I

.field private lastYearSkew:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0xc

    #@2
    const/16 v1, 0x11

    #@4
    .line 207
    new-array v0, v2, [B

    #@6
    fill-array-data v0, :array_0

    #@9
    sput-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@b
    .line 210
    new-array v0, v2, [I

    #@d
    fill-array-data v0, :array_1

    #@10
    sput-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    #@12
    .line 213
    new-array v0, v1, [I

    #@14
    fill-array-data v0, :array_2

    #@17
    sput-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    #@19
    .line 216
    new-array v0, v1, [I

    #@1b
    fill-array-data v0, :array_3

    #@1e
    sput-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    #@20
    .line 219
    new-array v0, v1, [I

    #@22
    fill-array-data v0, :array_4

    #@25
    sput-object v0, Ljava/util/GregorianCalendar;->leastMaximums:[I

    #@27
    .line 184
    return-void

    #@28
    .line 207
    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    #@32
    .line 210
    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    #@4e
    .line 213
    :array_2
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

    #@74
    .line 216
    :array_3
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
    .line 219
    :array_4
    .array-data 4
        0x1
        0x116babfe
        0xb
        0x32
        0x3
        0x1c
        0x163
        0x7
        0x3
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x124f80
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 231
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@b
    .line 230
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    #@0
    .prologue
    .line 246
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@b
    .line 200
    const-wide v0, -0xb1d069b5400L

    #@10
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@12
    .line 202
    const/16 v0, 0x62e

    #@14
    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@16
    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@18
    add-int/lit16 v0, v0, -0x7d0

    #@1a
    div-int/lit16 v0, v0, 0x190

    #@1c
    .line 205
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@1f
    move-result v1

    #@20
    .line 204
    add-int/2addr v0, v1

    #@21
    .line 205
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@23
    add-int/lit16 v1, v1, -0x7d0

    #@25
    div-int/lit8 v1, v1, 0x64

    #@27
    .line 204
    sub-int/2addr v0, v1

    #@28
    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@2a
    .line 222
    const/16 v0, 0xa

    #@2c
    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@2e
    .line 224
    const/4 v0, 0x0

    #@2f
    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@31
    .line 247
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    #@34
    .line 245
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    #@0
    .prologue
    .line 266
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@b
    .line 200
    const-wide v0, -0xb1d069b5400L

    #@10
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@12
    .line 202
    const/16 v0, 0x62e

    #@14
    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@16
    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@18
    add-int/lit16 v0, v0, -0x7d0

    #@1a
    div-int/lit16 v0, v0, 0x190

    #@1c
    .line 205
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@1f
    move-result v1

    #@20
    .line 204
    add-int/2addr v0, v1

    #@21
    .line 205
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@23
    add-int/lit16 v1, v1, -0x7d0

    #@25
    div-int/lit8 v1, v1, 0x64

    #@27
    .line 204
    sub-int/2addr v0, v1

    #@28
    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@2a
    .line 222
    const/16 v0, 0xa

    #@2c
    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@2e
    .line 224
    const/4 v0, 0x0

    #@2f
    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@31
    .line 267
    invoke-virtual/range {p0 .. p5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    #@34
    .line 265
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 289
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@b
    .line 200
    const-wide v0, -0xb1d069b5400L

    #@10
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@12
    .line 202
    const/16 v0, 0x62e

    #@14
    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@16
    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@18
    add-int/lit16 v0, v0, -0x7d0

    #@1a
    div-int/lit16 v0, v0, 0x190

    #@1c
    .line 205
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@1f
    move-result v1

    #@20
    .line 204
    add-int/2addr v0, v1

    #@21
    .line 205
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@23
    add-int/lit16 v1, v1, -0x7d0

    #@25
    div-int/lit8 v1, v1, 0x64

    #@27
    .line 204
    sub-int/2addr v0, v1

    #@28
    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@2a
    .line 222
    const/16 v0, 0xa

    #@2c
    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@2e
    .line 224
    const/4 v0, 0x0

    #@2f
    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@31
    .line 290
    invoke-virtual/range {p0 .. p6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    #@34
    .line 288
    return-void
.end method

.method constructor <init>(J)V
    .locals 1
    .param p1, "milliseconds"    # J

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;-><init>(Z)V

    #@4
    .line 295
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@7
    .line 293
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 306
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 305
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 317
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 316
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 200
    const-wide v0, -0xb1d069b5400L

    #@8
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@a
    .line 202
    const/16 v0, 0x62e

    #@c
    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@e
    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@10
    add-int/lit16 v0, v0, -0x7d0

    #@12
    div-int/lit16 v0, v0, 0x190

    #@14
    .line 205
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@17
    move-result v1

    #@18
    .line 204
    add-int/2addr v0, v1

    #@19
    .line 205
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@1b
    add-int/lit16 v1, v1, -0x7d0

    #@1d
    div-int/lit8 v1, v1, 0x64

    #@1f
    .line 204
    sub-int/2addr v0, v1

    #@20
    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@22
    .line 222
    const/16 v0, 0xa

    #@24
    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@26
    .line 224
    const/4 v0, 0x0

    #@27
    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@29
    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@2c
    move-result-wide v0

    #@2d
    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@30
    .line 329
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "ignored"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 344
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@4
    move-result-object v0

    #@5
    invoke-direct {p0, v0}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    #@8
    .line 200
    const-wide v0, -0xb1d069b5400L

    #@d
    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@f
    .line 202
    const/16 v0, 0x62e

    #@11
    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@13
    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@15
    add-int/lit16 v0, v0, -0x7d0

    #@17
    div-int/lit16 v0, v0, 0x190

    #@19
    .line 205
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@1c
    move-result v1

    #@1d
    .line 204
    add-int/2addr v0, v1

    #@1e
    .line 205
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@20
    add-int/lit16 v1, v1, -0x7d0

    #@22
    div-int/lit8 v1, v1, 0x64

    #@24
    .line 204
    sub-int/2addr v0, v1

    #@25
    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@27
    .line 222
    const/16 v0, 0xa

    #@29
    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@2b
    .line 224
    const/4 v0, 0x0

    #@2c
    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@2e
    .line 345
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    #@31
    .line 346
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    #@34
    .line 343
    return-void
.end method

.method private computeYearAndDay(JJ)I
    .locals 7
    .param p1, "dayCount"    # J
    .param p3, "localTime"    # J

    #@0
    .prologue
    .line 823
    const/16 v1, 0x7b2

    #@2
    .line 824
    .local v1, "year":I
    move-wide v2, p1

    #@3
    .line 825
    .local v2, "days":J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@5
    cmp-long v4, p3, v4

    #@7
    if-gez v4, :cond_0

    #@9
    .line 826
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@b
    int-to-long v4, v4

    #@c
    sub-long/2addr v2, v4

    #@d
    .line 830
    :cond_0
    :goto_0
    const-wide/16 v4, 0x16d

    #@f
    div-long v4, v2, v4

    #@11
    long-to-int v0, v4

    #@12
    .local v0, "approxYears":I
    if-eqz v0, :cond_1

    #@14
    .line 831
    add-int/2addr v1, v0

    #@15
    .line 832
    int-to-long v4, v1

    #@16
    invoke-direct {p0, v4, v5}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    #@19
    move-result-wide v4

    #@1a
    sub-long v2, p1, v4

    #@1c
    goto :goto_0

    #@1d
    .line 834
    :cond_1
    const-wide/16 v4, 0x0

    #@1f
    cmp-long v4, v2, v4

    #@21
    if-gez v4, :cond_2

    #@23
    .line 835
    add-int/lit8 v1, v1, -0x1

    #@25
    .line 836
    invoke-direct {p0, v1}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    #@28
    move-result v4

    #@29
    int-to-long v4, v4

    #@2a
    add-long/2addr v2, v4

    #@2b
    .line 838
    :cond_2
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@2d
    const/4 v5, 0x1

    #@2e
    aput v1, v4, v5

    #@30
    .line 839
    long-to-int v4, v2

    #@31
    add-int/lit8 v4, v4, 0x1

    #@33
    return v4
.end method

.method private daysFromBaseYear(J)J
    .locals 9
    .param p1, "year"    # J

    #@0
    .prologue
    .line 843
    const-wide/16 v2, 0x7b2

    #@2
    cmp-long v2, p1, v2

    #@4
    if-ltz v2, :cond_3

    #@6
    .line 844
    const-wide/16 v2, 0x7b2

    #@8
    sub-long v2, p1, v2

    #@a
    const-wide/16 v4, 0x16d

    #@c
    mul-long/2addr v2, v4

    #@d
    const-wide/16 v4, 0x7b1

    #@f
    sub-long v4, p1, v4

    #@11
    const-wide/16 v6, 0x4

    #@13
    div-long/2addr v4, v6

    #@14
    add-long v0, v2, v4

    #@16
    .line 845
    .local v0, "days":J
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@18
    int-to-long v2, v2

    #@19
    cmp-long v2, p1, v2

    #@1b
    if-lez v2, :cond_0

    #@1d
    .line 846
    const-wide/16 v2, 0x76d

    #@1f
    sub-long v2, p1, v2

    #@21
    const-wide/16 v4, 0x64

    #@23
    div-long/2addr v2, v4

    #@24
    const-wide/16 v4, 0x641

    #@26
    sub-long v4, p1, v4

    #@28
    const-wide/16 v6, 0x190

    #@2a
    div-long/2addr v4, v6

    #@2b
    sub-long/2addr v2, v4

    #@2c
    sub-long/2addr v0, v2

    #@2d
    .line 856
    :goto_0
    return-wide v0

    #@2e
    .line 848
    :cond_0
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@30
    int-to-long v2, v2

    #@31
    cmp-long v2, p1, v2

    #@33
    if-nez v2, :cond_1

    #@35
    .line 849
    iget v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@37
    int-to-long v2, v2

    #@38
    add-long/2addr v0, v2

    #@39
    goto :goto_0

    #@3a
    .line 850
    :cond_1
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@3c
    add-int/lit8 v2, v2, -0x1

    #@3e
    int-to-long v2, v2

    #@3f
    cmp-long v2, p1, v2

    #@41
    if-nez v2, :cond_2

    #@43
    .line 851
    iget v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@45
    int-to-long v2, v2

    #@46
    add-long/2addr v0, v2

    #@47
    goto :goto_0

    #@48
    .line 853
    :cond_2
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@4a
    int-to-long v2, v2

    #@4b
    add-long/2addr v0, v2

    #@4c
    goto :goto_0

    #@4d
    .line 857
    .end local v0    # "days":J
    :cond_3
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@4f
    int-to-long v2, v2

    #@50
    cmp-long v2, p1, v2

    #@52
    if-gtz v2, :cond_4

    #@54
    .line 858
    const-wide/16 v2, 0x7b2

    #@56
    sub-long v2, p1, v2

    #@58
    const-wide/16 v4, 0x16d

    #@5a
    mul-long/2addr v2, v4

    #@5b
    const-wide/16 v4, 0x7b4

    #@5d
    sub-long v4, p1, v4

    #@5f
    const-wide/16 v6, 0x4

    #@61
    div-long/2addr v4, v6

    #@62
    add-long/2addr v2, v4

    #@63
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@65
    int-to-long v4, v4

    #@66
    add-long/2addr v2, v4

    #@67
    return-wide v2

    #@68
    .line 860
    :cond_4
    const-wide/16 v2, 0x7b2

    #@6a
    sub-long v2, p1, v2

    #@6c
    const-wide/16 v4, 0x16d

    #@6e
    mul-long/2addr v2, v4

    #@6f
    const-wide/16 v4, 0x7b4

    #@71
    sub-long v4, p1, v4

    #@73
    const-wide/16 v6, 0x4

    #@75
    div-long/2addr v4, v6

    #@76
    add-long/2addr v2, v4

    #@77
    .line 861
    const-wide/16 v4, 0x7d0

    #@79
    sub-long v4, p1, v4

    #@7b
    const-wide/16 v6, 0x64

    #@7d
    div-long/2addr v4, v6

    #@7e
    .line 860
    sub-long/2addr v2, v4

    #@7f
    .line 861
    const-wide/16 v4, 0x7d0

    #@81
    sub-long v4, p1, v4

    #@83
    const-wide/16 v6, 0x190

    #@85
    div-long/2addr v4, v6

    #@86
    .line 860
    add-long/2addr v2, v4

    #@87
    return-wide v2
.end method

.method private daysInMonth()I
    .locals 3

    #@0
    .prologue
    .line 865
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@2
    const/4 v1, 0x1

    #@3
    aget v0, v0, v1

    #@5
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@8
    move-result v0

    #@9
    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@b
    const/4 v2, 0x2

    #@c
    aget v1, v1, v2

    #@e
    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method private daysInMonth(ZI)I
    .locals 1
    .param p1, "leapYear"    # Z
    .param p2, "month"    # I

    #@0
    .prologue
    .line 869
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-ne p2, v0, :cond_0

    #@5
    .line 870
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@7
    aget-byte v0, v0, p2

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    return v0

    #@c
    .line 873
    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    #@e
    aget-byte v0, v0, p2

    #@10
    return v0
.end method

.method private daysInYear(I)I
    .locals 2
    .param p1, "year"    # I

    #@0
    .prologue
    .line 877
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_2

    #@6
    const/16 v0, 0x16e

    #@8
    .line 878
    .local v0, "daysInYear":I
    :goto_0
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@a
    if-ne p1, v1, :cond_0

    #@c
    .line 879
    iget v1, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@e
    sub-int/2addr v0, v1

    #@f
    .line 881
    :cond_0
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@11
    add-int/lit8 v1, v1, -0x1

    #@13
    if-ne p1, v1, :cond_1

    #@15
    .line 882
    iget v1, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@17
    sub-int/2addr v0, v1

    #@18
    .line 884
    :cond_1
    return v0

    #@19
    .line 877
    .end local v0    # "daysInYear":I
    :cond_2
    const/16 v0, 0x16d

    #@1b
    .restart local v0    # "daysInYear":I
    goto :goto_0
.end method

.method private daysInYear(ZI)I
    .locals 1
    .param p1, "leapYear"    # Z
    .param p2, "month"    # I

    #@0
    .prologue
    .line 888
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-le p2, v0, :cond_0

    #@5
    .line 889
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    #@7
    aget v0, v0, p2

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    return v0

    #@c
    .line 892
    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    #@e
    aget v0, v0, p2

    #@10
    return v0
.end method

.method private fullFieldsCalc()V
    .locals 24

    #@0
    .prologue
    .line 471
    move-object/from16 v0, p0

    #@2
    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    #@4
    const-wide/32 v20, 0x5265c00

    #@7
    rem-long v4, v4, v20

    #@9
    long-to-int v10, v4

    #@a
    .line 472
    .local v10, "millis":I
    move-object/from16 v0, p0

    #@c
    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    #@e
    const-wide/32 v20, 0x5265c00

    #@11
    div-long v12, v4, v20

    #@13
    .line 474
    .local v12, "days":J
    if-gez v10, :cond_0

    #@15
    .line 475
    const v4, 0x5265c00

    #@18
    add-int/2addr v10, v4

    #@19
    .line 476
    const-wide/16 v4, 0x1

    #@1b
    sub-long/2addr v12, v4

    #@1c
    .line 480
    :cond_0
    move-object/from16 v0, p0

    #@1e
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@20
    const/16 v5, 0xf

    #@22
    aget v4, v4, v5

    #@24
    add-int/2addr v10, v4

    #@25
    .line 481
    :goto_0
    if-gez v10, :cond_1

    #@27
    .line 482
    const v4, 0x5265c00

    #@2a
    add-int/2addr v10, v4

    #@2b
    .line 483
    const-wide/16 v4, 0x1

    #@2d
    sub-long/2addr v12, v4

    #@2e
    goto :goto_0

    #@2f
    .line 485
    :cond_1
    :goto_1
    const v4, 0x5265c00

    #@32
    if-lt v10, v4, :cond_2

    #@34
    .line 486
    const v4, 0x5265c00

    #@37
    sub-int/2addr v10, v4

    #@38
    .line 487
    const-wide/16 v4, 0x1

    #@3a
    add-long/2addr v12, v4

    #@3b
    goto :goto_1

    #@3c
    .line 490
    :cond_2
    move-object/from16 v0, p0

    #@3e
    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@44
    const/16 v9, 0xf

    #@46
    aget v6, v6, v9

    #@48
    int-to-long v0, v6

    #@49
    move-wide/from16 v20, v0

    #@4b
    add-long v4, v4, v20

    #@4d
    move-object/from16 v0, p0

    #@4f
    invoke-direct {v0, v12, v13, v4, v5}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    #@52
    move-result v11

    #@53
    .line 491
    .local v11, "dayOfYear":I
    move-object/from16 v0, p0

    #@55
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@57
    const/4 v5, 0x6

    #@58
    aput v11, v4, v5

    #@5a
    .line 492
    move-object/from16 v0, p0

    #@5c
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@5e
    const/4 v5, 0x1

    #@5f
    aget v4, v4, v5

    #@61
    move-object/from16 v0, p0

    #@63
    iget v5, v0, Ljava/util/GregorianCalendar;->changeYear:I

    #@65
    if-ne v4, v5, :cond_3

    #@67
    move-object/from16 v0, p0

    #@69
    iget-wide v4, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@6f
    move-wide/from16 v20, v0

    #@71
    move-object/from16 v0, p0

    #@73
    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@75
    const/16 v9, 0xf

    #@77
    aget v6, v6, v9

    #@79
    int-to-long v0, v6

    #@7a
    move-wide/from16 v22, v0

    #@7c
    add-long v20, v20, v22

    #@7e
    cmp-long v4, v4, v20

    #@80
    if-gtz v4, :cond_3

    #@82
    .line 493
    move-object/from16 v0, p0

    #@84
    iget v4, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@86
    add-int/2addr v11, v4

    #@87
    .line 495
    :cond_3
    div-int/lit8 v7, v11, 0x20

    #@89
    .line 496
    .local v7, "month":I
    move-object/from16 v0, p0

    #@8b
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@8d
    const/4 v5, 0x1

    #@8e
    aget v4, v4, v5

    #@90
    move-object/from16 v0, p0

    #@92
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@95
    move-result v16

    #@96
    .line 497
    .local v16, "leapYear":Z
    move-object/from16 v0, p0

    #@98
    move/from16 v1, v16

    #@9a
    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    #@9d
    move-result v4

    #@9e
    sub-int v8, v11, v4

    #@a0
    .line 498
    .local v8, "date":I
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, v16

    #@a4
    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@a7
    move-result v4

    #@a8
    if-le v8, v4, :cond_4

    #@aa
    .line 499
    move-object/from16 v0, p0

    #@ac
    move/from16 v1, v16

    #@ae
    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@b1
    move-result v4

    #@b2
    sub-int/2addr v8, v4

    #@b3
    .line 500
    add-int/lit8 v7, v7, 0x1

    #@b5
    .line 502
    :cond_4
    move-object/from16 v0, p0

    #@b7
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@b9
    const-wide/16 v20, 0x3

    #@bb
    sub-long v20, v12, v20

    #@bd
    move-object/from16 v0, p0

    #@bf
    move-wide/from16 v1, v20

    #@c1
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@c4
    move-result v5

    #@c5
    add-int/lit8 v5, v5, 0x1

    #@c7
    const/4 v6, 0x7

    #@c8
    aput v5, v4, v6

    #@ca
    .line 503
    move-object/from16 v0, p0

    #@cc
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@ce
    const/4 v5, 0x1

    #@cf
    aget v4, v4, v5

    #@d1
    if-gtz v4, :cond_a

    #@d3
    const/4 v15, 0x0

    #@d4
    .line 505
    .local v15, "dstOffset":I
    :goto_2
    move-object/from16 v0, p0

    #@d6
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@d8
    const/4 v5, 0x1

    #@d9
    aget v4, v4, v5

    #@db
    if-lez v4, :cond_5

    #@dd
    .line 506
    move-object/from16 v0, p0

    #@df
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@e1
    const/16 v5, 0xf

    #@e3
    aget v4, v4, v5

    #@e5
    sub-int/2addr v15, v4

    #@e6
    .line 508
    :cond_5
    move-object/from16 v0, p0

    #@e8
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@ea
    const/16 v5, 0x10

    #@ec
    aput v15, v4, v5

    #@ee
    .line 509
    if-eqz v15, :cond_9

    #@f0
    .line 510
    move-wide/from16 v18, v12

    #@f2
    .line 511
    .local v18, "oldDays":J
    add-int/2addr v10, v15

    #@f3
    .line 512
    if-gez v10, :cond_b

    #@f5
    .line 513
    const v4, 0x5265c00

    #@f8
    add-int/2addr v10, v4

    #@f9
    .line 514
    const-wide/16 v4, 0x1

    #@fb
    sub-long/2addr v12, v4

    #@fc
    .line 519
    :cond_6
    :goto_3
    cmp-long v4, v18, v12

    #@fe
    if-eqz v4, :cond_9

    #@100
    .line 520
    move-object/from16 v0, p0

    #@102
    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    #@104
    move-object/from16 v0, p0

    #@106
    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@108
    const/16 v9, 0xf

    #@10a
    aget v6, v6, v9

    #@10c
    int-to-long v0, v6

    #@10d
    move-wide/from16 v20, v0

    #@10f
    sub-long v4, v4, v20

    #@111
    .line 521
    int-to-long v0, v15

    #@112
    move-wide/from16 v20, v0

    #@114
    .line 520
    add-long v4, v4, v20

    #@116
    move-object/from16 v0, p0

    #@118
    invoke-direct {v0, v12, v13, v4, v5}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    #@11b
    move-result v11

    #@11c
    .line 522
    move-object/from16 v0, p0

    #@11e
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@120
    const/4 v5, 0x6

    #@121
    aput v11, v4, v5

    #@123
    .line 523
    move-object/from16 v0, p0

    #@125
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@127
    const/4 v5, 0x1

    #@128
    aget v4, v4, v5

    #@12a
    move-object/from16 v0, p0

    #@12c
    iget v5, v0, Ljava/util/GregorianCalendar;->changeYear:I

    #@12e
    if-ne v4, v5, :cond_7

    #@130
    move-object/from16 v0, p0

    #@132
    iget-wide v4, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@134
    move-object/from16 v0, p0

    #@136
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    #@138
    move-wide/from16 v20, v0

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@13e
    const/16 v9, 0xf

    #@140
    aget v6, v6, v9

    #@142
    int-to-long v0, v6

    #@143
    move-wide/from16 v22, v0

    #@145
    sub-long v20, v20, v22

    #@147
    int-to-long v0, v15

    #@148
    move-wide/from16 v22, v0

    #@14a
    add-long v20, v20, v22

    #@14c
    cmp-long v4, v4, v20

    #@14e
    if-gtz v4, :cond_7

    #@150
    .line 524
    move-object/from16 v0, p0

    #@152
    iget v4, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@154
    add-int/2addr v11, v4

    #@155
    .line 526
    :cond_7
    div-int/lit8 v7, v11, 0x20

    #@157
    .line 527
    move-object/from16 v0, p0

    #@159
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@15b
    const/4 v5, 0x1

    #@15c
    aget v4, v4, v5

    #@15e
    move-object/from16 v0, p0

    #@160
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@163
    move-result v16

    #@164
    .line 528
    move-object/from16 v0, p0

    #@166
    move/from16 v1, v16

    #@168
    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    #@16b
    move-result v4

    #@16c
    sub-int v8, v11, v4

    #@16e
    .line 529
    move-object/from16 v0, p0

    #@170
    move/from16 v1, v16

    #@172
    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@175
    move-result v4

    #@176
    if-le v8, v4, :cond_8

    #@178
    .line 530
    move-object/from16 v0, p0

    #@17a
    move/from16 v1, v16

    #@17c
    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@17f
    move-result v4

    #@180
    sub-int/2addr v8, v4

    #@181
    .line 531
    add-int/lit8 v7, v7, 0x1

    #@183
    .line 533
    :cond_8
    move-object/from16 v0, p0

    #@185
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@187
    const-wide/16 v20, 0x3

    #@189
    sub-long v20, v12, v20

    #@18b
    move-object/from16 v0, p0

    #@18d
    move-wide/from16 v1, v20

    #@18f
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@192
    move-result v5

    #@193
    add-int/lit8 v5, v5, 0x1

    #@195
    const/4 v6, 0x7

    #@196
    aput v5, v4, v6

    #@198
    .line 537
    .end local v18    # "oldDays":J
    :cond_9
    move-object/from16 v0, p0

    #@19a
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@19c
    rem-int/lit16 v5, v10, 0x3e8

    #@19e
    const/16 v6, 0xe

    #@1a0
    aput v5, v4, v6

    #@1a2
    .line 538
    div-int/lit16 v10, v10, 0x3e8

    #@1a4
    .line 539
    move-object/from16 v0, p0

    #@1a6
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1a8
    rem-int/lit8 v5, v10, 0x3c

    #@1aa
    const/16 v6, 0xd

    #@1ac
    aput v5, v4, v6

    #@1ae
    .line 540
    div-int/lit8 v10, v10, 0x3c

    #@1b0
    .line 541
    move-object/from16 v0, p0

    #@1b2
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1b4
    rem-int/lit8 v5, v10, 0x3c

    #@1b6
    const/16 v6, 0xc

    #@1b8
    aput v5, v4, v6

    #@1ba
    .line 542
    div-int/lit8 v10, v10, 0x3c

    #@1bc
    .line 543
    move-object/from16 v0, p0

    #@1be
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1c0
    rem-int/lit8 v5, v10, 0x18

    #@1c2
    const/16 v6, 0xb

    #@1c4
    aput v5, v4, v6

    #@1c6
    .line 544
    move-object/from16 v0, p0

    #@1c8
    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1ce
    const/16 v6, 0xb

    #@1d0
    aget v4, v4, v6

    #@1d2
    const/16 v6, 0xb

    #@1d4
    if-le v4, v6, :cond_c

    #@1d6
    const/4 v4, 0x1

    #@1d7
    :goto_4
    const/16 v6, 0x9

    #@1d9
    aput v4, v5, v6

    #@1db
    .line 545
    move-object/from16 v0, p0

    #@1dd
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1df
    move-object/from16 v0, p0

    #@1e1
    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1e3
    const/16 v6, 0xb

    #@1e5
    aget v5, v5, v6

    #@1e7
    rem-int/lit8 v5, v5, 0xc

    #@1e9
    const/16 v6, 0xa

    #@1eb
    aput v5, v4, v6

    #@1ed
    .line 547
    move-object/from16 v0, p0

    #@1ef
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1f1
    const/4 v5, 0x1

    #@1f2
    aget v4, v4, v5

    #@1f4
    if-gtz v4, :cond_d

    #@1f6
    .line 548
    move-object/from16 v0, p0

    #@1f8
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1fa
    const/4 v5, 0x0

    #@1fb
    const/4 v6, 0x0

    #@1fc
    aput v5, v4, v6

    #@1fe
    .line 549
    move-object/from16 v0, p0

    #@200
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@202
    move-object/from16 v0, p0

    #@204
    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@206
    const/4 v6, 0x1

    #@207
    aget v5, v5, v6

    #@209
    neg-int v5, v5

    #@20a
    add-int/lit8 v5, v5, 0x1

    #@20c
    const/4 v6, 0x1

    #@20d
    aput v5, v4, v6

    #@20f
    .line 553
    :goto_5
    move-object/from16 v0, p0

    #@211
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@213
    const/4 v5, 0x2

    #@214
    aput v7, v4, v5

    #@216
    .line 554
    move-object/from16 v0, p0

    #@218
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@21a
    const/4 v5, 0x5

    #@21b
    aput v8, v4, v5

    #@21d
    .line 555
    move-object/from16 v0, p0

    #@21f
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@221
    add-int/lit8 v5, v8, -0x1

    #@223
    div-int/lit8 v5, v5, 0x7

    #@225
    add-int/lit8 v5, v5, 0x1

    #@227
    const/16 v6, 0x8

    #@229
    aput v5, v4, v6

    #@22b
    .line 556
    move-object/from16 v0, p0

    #@22d
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@22f
    add-int/lit8 v5, v8, -0x1

    #@231
    int-to-long v0, v8

    #@232
    move-wide/from16 v20, v0

    #@234
    sub-long v20, v12, v20

    #@236
    const-wide/16 v22, 0x2

    #@238
    sub-long v20, v20, v22

    #@23a
    .line 557
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@23d
    move-result v6

    #@23e
    add-int/lit8 v6, v6, -0x1

    #@240
    int-to-long v0, v6

    #@241
    move-wide/from16 v22, v0

    #@243
    .line 556
    sub-long v20, v20, v22

    #@245
    move-object/from16 v0, p0

    #@247
    move-wide/from16 v1, v20

    #@249
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@24c
    move-result v6

    #@24d
    add-int/2addr v5, v6

    #@24e
    div-int/lit8 v5, v5, 0x7

    #@250
    add-int/lit8 v5, v5, 0x1

    #@252
    const/4 v6, 0x4

    #@253
    aput v5, v4, v6

    #@255
    .line 558
    const-wide/16 v4, 0x3

    #@257
    sub-long v4, v12, v4

    #@259
    move-object/from16 v0, p0

    #@25b
    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@25d
    const/4 v9, 0x6

    #@25e
    aget v6, v6, v9

    #@260
    add-int/lit8 v6, v6, -0x1

    #@262
    int-to-long v0, v6

    #@263
    move-wide/from16 v20, v0

    #@265
    sub-long v4, v4, v20

    #@267
    .line 559
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@26a
    move-result v6

    #@26b
    add-int/lit8 v6, v6, -0x1

    #@26d
    int-to-long v0, v6

    #@26e
    move-wide/from16 v20, v0

    #@270
    .line 558
    sub-long v4, v4, v20

    #@272
    move-object/from16 v0, p0

    #@274
    invoke-direct {v0, v4, v5}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@277
    move-result v14

    #@278
    .line 560
    .local v14, "daysFromStart":I
    move-object/from16 v0, p0

    #@27a
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@27c
    const/4 v5, 0x6

    #@27d
    aget v4, v4, v5

    #@27f
    add-int/lit8 v4, v4, -0x1

    #@281
    add-int/2addr v4, v14

    #@282
    div-int/lit8 v5, v4, 0x7

    #@284
    .line 561
    rsub-int/lit8 v4, v14, 0x7

    #@286
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@289
    move-result v6

    #@28a
    if-lt v4, v6, :cond_e

    #@28c
    const/4 v4, 0x1

    #@28d
    .line 560
    :goto_6
    add-int v17, v5, v4

    #@28f
    .line 562
    .local v17, "week":I
    if-nez v17, :cond_11

    #@291
    .line 563
    move-object/from16 v0, p0

    #@293
    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@295
    .line 564
    move-object/from16 v0, p0

    #@297
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@299
    const/4 v6, 0x1

    #@29a
    aget v4, v4, v6

    #@29c
    add-int/lit8 v4, v4, -0x1

    #@29e
    move-object/from16 v0, p0

    #@2a0
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@2a3
    move-result v4

    #@2a4
    if-eqz v4, :cond_f

    #@2a6
    const/4 v4, 0x2

    #@2a7
    .line 563
    :goto_7
    sub-int v4, v14, v4

    #@2a9
    int-to-long v0, v4

    #@2aa
    move-wide/from16 v20, v0

    #@2ac
    move-object/from16 v0, p0

    #@2ae
    move-wide/from16 v1, v20

    #@2b0
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@2b3
    move-result v4

    #@2b4
    rsub-int/lit8 v4, v4, 0x7

    #@2b6
    .line 564
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@2b9
    move-result v6

    #@2ba
    .line 563
    if-lt v4, v6, :cond_10

    #@2bc
    .line 564
    const/16 v4, 0x35

    #@2be
    .line 563
    :goto_8
    const/4 v6, 0x3

    #@2bf
    aput v4, v5, v6

    #@2c1
    .line 470
    .end local v17    # "week":I
    :goto_9
    return-void

    #@2c2
    .line 503
    .end local v14    # "daysFromStart":I
    .end local v15    # "dstOffset":I
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    #@2c5
    move-result-object v4

    #@2c6
    .line 504
    move-object/from16 v0, p0

    #@2c8
    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@2ca
    const/4 v6, 0x1

    #@2cb
    aget v6, v5, v6

    #@2cd
    move-object/from16 v0, p0

    #@2cf
    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@2d1
    const/4 v9, 0x7

    #@2d2
    aget v9, v5, v9

    #@2d4
    .line 503
    const/4 v5, 0x1

    #@2d5
    invoke-virtual/range {v4 .. v10}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    #@2d8
    move-result v15

    #@2d9
    .restart local v15    # "dstOffset":I
    goto/16 :goto_2

    #@2db
    .line 515
    .restart local v18    # "oldDays":J
    :cond_b
    const v4, 0x5265c00

    #@2de
    if-lt v10, v4, :cond_6

    #@2e0
    .line 516
    const v4, 0x5265c00

    #@2e3
    sub-int/2addr v10, v4

    #@2e4
    .line 517
    const-wide/16 v4, 0x1

    #@2e6
    add-long/2addr v12, v4

    #@2e7
    goto/16 :goto_3

    #@2e9
    .line 544
    .end local v18    # "oldDays":J
    :cond_c
    const/4 v4, 0x0

    #@2ea
    goto/16 :goto_4

    #@2ec
    .line 551
    :cond_d
    move-object/from16 v0, p0

    #@2ee
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@2f0
    const/4 v5, 0x1

    #@2f1
    const/4 v6, 0x0

    #@2f2
    aput v5, v4, v6

    #@2f4
    goto/16 :goto_5

    #@2f6
    .line 561
    .restart local v14    # "daysFromStart":I
    :cond_e
    const/4 v4, 0x0

    #@2f7
    goto :goto_6

    #@2f8
    .line 564
    .restart local v17    # "week":I
    :cond_f
    const/4 v4, 0x1

    #@2f9
    goto :goto_7

    #@2fa
    .line 565
    :cond_10
    const/16 v4, 0x34

    #@2fc
    goto :goto_8

    #@2fd
    .line 566
    :cond_11
    move-object/from16 v0, p0

    #@2ff
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@301
    const/4 v5, 0x6

    #@302
    aget v6, v4, v5

    #@304
    if-eqz v16, :cond_13

    #@306
    const/16 v4, 0x16f

    #@308
    move v5, v4

    #@309
    .line 567
    :goto_a
    if-eqz v16, :cond_14

    #@30b
    const/4 v4, 0x2

    #@30c
    :goto_b
    add-int/2addr v4, v14

    #@30d
    int-to-long v0, v4

    #@30e
    move-wide/from16 v20, v0

    #@310
    move-object/from16 v0, p0

    #@312
    move-wide/from16 v1, v20

    #@314
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@317
    move-result v4

    #@318
    .line 566
    sub-int v4, v5, v4

    #@31a
    if-lt v6, v4, :cond_16

    #@31c
    .line 568
    move-object/from16 v0, p0

    #@31e
    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@320
    if-eqz v16, :cond_15

    #@322
    const/4 v4, 0x2

    #@323
    :goto_c
    add-int/2addr v4, v14

    #@324
    int-to-long v0, v4

    #@325
    move-wide/from16 v20, v0

    #@327
    move-object/from16 v0, p0

    #@329
    move-wide/from16 v1, v20

    #@32b
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@32e
    move-result v4

    #@32f
    rsub-int/lit8 v4, v4, 0x7

    #@331
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@334
    move-result v6

    #@335
    if-lt v4, v6, :cond_12

    #@337
    const/16 v17, 0x1

    #@339
    .end local v17    # "week":I
    :cond_12
    const/4 v4, 0x3

    #@33a
    aput v17, v5, v4

    #@33c
    goto :goto_9

    #@33d
    .line 566
    .restart local v17    # "week":I
    :cond_13
    const/16 v4, 0x16e

    #@33f
    move v5, v4

    #@340
    goto :goto_a

    #@341
    .line 567
    :cond_14
    const/4 v4, 0x1

    #@342
    goto :goto_b

    #@343
    .line 568
    :cond_15
    const/4 v4, 0x1

    #@344
    goto :goto_c

    #@345
    .line 571
    :cond_16
    move-object/from16 v0, p0

    #@347
    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@349
    const/4 v5, 0x3

    #@34a
    aput v17, v4, v5

    #@34c
    goto/16 :goto_9
.end method

.method private getOffset(J)I
    .locals 23
    .param p1, "localTime"    # J

    #@0
    .prologue
    .line 1050
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    #@3
    move-result-object v4

    #@4
    .line 1052
    .local v4, "timeZone":Ljava/util/TimeZone;
    const-wide/32 v18, 0x5265c00

    #@7
    div-long v12, p1, v18

    #@9
    .line 1053
    .local v12, "dayCount":J
    const-wide/32 v18, 0x5265c00

    #@c
    rem-long v18, p1, v18

    #@e
    move-wide/from16 v0, v18

    #@10
    long-to-int v10, v0

    #@11
    .line 1054
    .local v10, "millis":I
    if-gez v10, :cond_0

    #@13
    .line 1055
    const v5, 0x5265c00

    #@16
    add-int/2addr v10, v5

    #@17
    .line 1056
    const-wide/16 v18, 0x1

    #@19
    sub-long v12, v12, v18

    #@1b
    .line 1059
    :cond_0
    const/16 v6, 0x7b2

    #@1d
    .line 1060
    .local v6, "year":I
    move-wide/from16 v16, v12

    #@1f
    .line 1061
    .local v16, "days":J
    move-object/from16 v0, p0

    #@21
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@23
    move-wide/from16 v18, v0

    #@25
    cmp-long v5, p1, v18

    #@27
    if-gez v5, :cond_1

    #@29
    .line 1062
    move-object/from16 v0, p0

    #@2b
    iget v5, v0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@2d
    int-to-long v0, v5

    #@2e
    move-wide/from16 v18, v0

    #@30
    sub-long v16, v16, v18

    #@32
    .line 1066
    :cond_1
    :goto_0
    const-wide/16 v18, 0x16d

    #@34
    div-long v18, v16, v18

    #@36
    move-wide/from16 v0, v18

    #@38
    long-to-int v11, v0

    #@39
    .local v11, "approxYears":I
    if-eqz v11, :cond_2

    #@3b
    .line 1067
    add-int/2addr v6, v11

    #@3c
    .line 1068
    int-to-long v0, v6

    #@3d
    move-wide/from16 v18, v0

    #@3f
    move-object/from16 v0, p0

    #@41
    move-wide/from16 v1, v18

    #@43
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    #@46
    move-result-wide v18

    #@47
    sub-long v16, v12, v18

    #@49
    goto :goto_0

    #@4a
    .line 1070
    :cond_2
    const-wide/16 v18, 0x0

    #@4c
    cmp-long v5, v16, v18

    #@4e
    if-gez v5, :cond_3

    #@50
    .line 1071
    add-int/lit8 v6, v6, -0x1

    #@52
    .line 1072
    const-wide/16 v18, 0x16d

    #@54
    add-long v18, v18, v16

    #@56
    move-object/from16 v0, p0

    #@58
    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@5b
    move-result v5

    #@5c
    if-eqz v5, :cond_4

    #@5e
    const/4 v5, 0x1

    #@5f
    :goto_1
    int-to-long v0, v5

    #@60
    move-wide/from16 v20, v0

    #@62
    add-long v16, v18, v20

    #@64
    .line 1073
    move-object/from16 v0, p0

    #@66
    iget v5, v0, Ljava/util/GregorianCalendar;->changeYear:I

    #@68
    if-ne v6, v5, :cond_3

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@6e
    move-wide/from16 v18, v0

    #@70
    cmp-long v5, p1, v18

    #@72
    if-gez v5, :cond_3

    #@74
    .line 1074
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@77
    move-result v5

    #@78
    int-to-long v0, v5

    #@79
    move-wide/from16 v18, v0

    #@7b
    sub-long v16, v16, v18

    #@7d
    .line 1077
    :cond_3
    if-gtz v6, :cond_5

    #@7f
    .line 1078
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    #@82
    move-result v5

    #@83
    return v5

    #@84
    .line 1072
    :cond_4
    const/4 v5, 0x0

    #@85
    goto :goto_1

    #@86
    .line 1080
    :cond_5
    move-wide/from16 v0, v16

    #@88
    long-to-int v5, v0

    #@89
    add-int/lit8 v14, v5, 0x1

    #@8b
    .line 1082
    .local v14, "dayOfYear":I
    div-int/lit8 v7, v14, 0x20

    #@8d
    .line 1083
    .local v7, "month":I
    move-object/from16 v0, p0

    #@8f
    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@92
    move-result v15

    #@93
    .line 1084
    .local v15, "leapYear":Z
    move-object/from16 v0, p0

    #@95
    invoke-direct {v0, v15, v7}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    #@98
    move-result v5

    #@99
    sub-int v8, v14, v5

    #@9b
    .line 1085
    .local v8, "date":I
    move-object/from16 v0, p0

    #@9d
    invoke-direct {v0, v15, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@a0
    move-result v5

    #@a1
    if-le v8, v5, :cond_6

    #@a3
    .line 1086
    move-object/from16 v0, p0

    #@a5
    invoke-direct {v0, v15, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@a8
    move-result v5

    #@a9
    sub-int/2addr v8, v5

    #@aa
    .line 1087
    add-int/lit8 v7, v7, 0x1

    #@ac
    .line 1089
    :cond_6
    const-wide/16 v18, 0x3

    #@ae
    sub-long v18, v12, v18

    #@b0
    move-object/from16 v0, p0

    #@b2
    move-wide/from16 v1, v18

    #@b4
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@b7
    move-result v5

    #@b8
    add-int/lit8 v9, v5, 0x1

    #@ba
    .line 1090
    .local v9, "dayOfWeek":I
    const/4 v5, 0x1

    #@bb
    invoke-virtual/range {v4 .. v10}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    #@be
    move-result v5

    #@bf
    return v5
.end method

.method private julianError()I
    .locals 2

    #@0
    .prologue
    .line 1110
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@2
    div-int/lit8 v0, v0, 0x64

    #@4
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@6
    div-int/lit16 v1, v1, 0x190

    #@8
    sub-int/2addr v0, v1

    #@9
    add-int/lit8 v0, v0, -0x2

    #@b
    return v0
.end method

.method private mod(II)I
    .locals 2
    .param p1, "value"    # I
    .param p2, "mod"    # I

    #@0
    .prologue
    .line 1114
    rem-int v0, p1, p2

    #@2
    .line 1115
    .local v0, "rem":I
    if-gez p1, :cond_0

    #@4
    if-gez v0, :cond_0

    #@6
    .line 1116
    add-int v1, v0, p2

    #@8
    return v1

    #@9
    .line 1118
    :cond_0
    return v0
.end method

.method private mod7(J)I
    .locals 5
    .param p1, "num1"    # J

    #@0
    .prologue
    .line 1122
    const-wide/16 v2, 0x7

    #@2
    rem-long v2, p1, v2

    #@4
    long-to-int v0, v2

    #@5
    .line 1123
    .local v0, "rem":I
    const-wide/16 v2, 0x0

    #@7
    cmp-long v1, p1, v2

    #@9
    if-gez v1, :cond_0

    #@b
    if-gez v0, :cond_0

    #@d
    .line 1124
    add-int/lit8 v1, v0, 0x7

    #@f
    return v1

    #@10
    .line 1126
    :cond_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1292
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1293
    new-instance v0, Ljava/util/Date;

    #@5
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@7
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@a
    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    #@d
    .line 1291
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1288
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 1287
    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 18
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 362
    if-nez p2, :cond_0

    #@2
    .line 363
    return-void

    #@3
    .line 365
    :cond_0
    if-ltz p1, :cond_1

    #@5
    const/16 v12, 0xf

    #@7
    move/from16 v0, p1

    #@9
    if-lt v0, v12, :cond_2

    #@b
    .line 366
    :cond_1
    new-instance v12, Ljava/lang/IllegalArgumentException;

    #@d
    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@10
    throw v12

    #@11
    .line 369
    :cond_2
    if-nez p1, :cond_6

    #@13
    .line 370
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@16
    .line 371
    move-object/from16 v0, p0

    #@18
    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1a
    const/4 v13, 0x0

    #@1b
    aget v12, v12, v13

    #@1d
    const/4 v13, 0x1

    #@1e
    if-ne v12, v13, :cond_4

    #@20
    .line 372
    if-ltz p2, :cond_3

    #@22
    .line 373
    return-void

    #@23
    .line 375
    :cond_3
    const/4 v12, 0x0

    #@24
    const/4 v13, 0x0

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    #@2a
    .line 382
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@2d
    .line 383
    return-void

    #@2e
    .line 377
    :cond_4
    if-gtz p2, :cond_5

    #@30
    .line 378
    return-void

    #@31
    .line 380
    :cond_5
    const/4 v12, 0x0

    #@32
    const/4 v13, 0x1

    #@33
    move-object/from16 v0, p0

    #@35
    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    #@38
    goto :goto_0

    #@39
    .line 386
    :cond_6
    const/4 v12, 0x1

    #@3a
    move/from16 v0, p1

    #@3c
    if-eq v0, v12, :cond_7

    #@3e
    const/4 v12, 0x2

    #@3f
    move/from16 v0, p1

    #@41
    if-ne v0, v12, :cond_b

    #@43
    .line 387
    :cond_7
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@46
    .line 388
    const/4 v12, 0x2

    #@47
    move/from16 v0, p1

    #@49
    if-ne v0, v12, :cond_8

    #@4b
    .line 389
    move-object/from16 v0, p0

    #@4d
    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@4f
    const/4 v13, 0x2

    #@50
    aget v12, v12, v13

    #@52
    add-int v6, v12, p2

    #@54
    .line 390
    .local v6, "month":I
    if-gez v6, :cond_a

    #@56
    .line 391
    add-int/lit8 v12, v6, -0xb

    #@58
    div-int/lit8 p2, v12, 0xc

    #@5a
    .line 392
    rem-int/lit8 v12, v6, 0xc

    #@5c
    add-int/lit8 v6, v12, 0xc

    #@5e
    .line 396
    :goto_1
    rem-int/lit8 v12, v6, 0xc

    #@60
    const/4 v13, 0x2

    #@61
    move-object/from16 v0, p0

    #@63
    invoke-virtual {v0, v13, v12}, Ljava/util/GregorianCalendar;->set(II)V

    #@66
    .line 398
    .end local v6    # "month":I
    :cond_8
    move-object/from16 v0, p0

    #@68
    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@6a
    const/4 v13, 0x1

    #@6b
    aget v12, v12, v13

    #@6d
    add-int v12, v12, p2

    #@6f
    const/4 v13, 0x1

    #@70
    move-object/from16 v0, p0

    #@72
    invoke-virtual {v0, v13, v12}, Ljava/util/GregorianCalendar;->set(II)V

    #@75
    .line 399
    move-object/from16 v0, p0

    #@77
    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@79
    const/4 v13, 0x1

    #@7a
    aget v12, v12, v13

    #@7c
    move-object/from16 v0, p0

    #@7e
    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@81
    move-result v12

    #@82
    move-object/from16 v0, p0

    #@84
    iget-object v13, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@86
    const/4 v14, 0x2

    #@87
    aget v13, v13, v14

    #@89
    move-object/from16 v0, p0

    #@8b
    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@8e
    move-result v2

    #@8f
    .line 400
    .local v2, "days":I
    move-object/from16 v0, p0

    #@91
    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@93
    const/4 v13, 0x5

    #@94
    aget v12, v12, v13

    #@96
    if-le v12, v2, :cond_9

    #@98
    .line 401
    const/4 v12, 0x5

    #@99
    move-object/from16 v0, p0

    #@9b
    invoke-virtual {v0, v12, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@9e
    .line 403
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@a1
    .line 404
    return-void

    #@a2
    .line 394
    .end local v2    # "days":I
    .restart local v6    # "month":I
    :cond_a
    div-int/lit8 p2, v6, 0xc

    #@a4
    goto :goto_1

    #@a5
    .line 407
    .end local v6    # "month":I
    :cond_b
    const-wide/16 v8, 0x0

    #@a7
    .line 408
    .local v8, "multiplier":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    #@aa
    .line 409
    packed-switch p1, :pswitch_data_0

    #@ad
    .line 438
    :goto_2
    const-wide/16 v12, 0x0

    #@af
    cmp-long v12, v8, v12

    #@b1
    if-nez v12, :cond_c

    #@b3
    .line 439
    const/4 v12, 0x0

    #@b4
    move-object/from16 v0, p0

    #@b6
    iput-boolean v12, v0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    #@b8
    .line 440
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@bb
    .line 441
    return-void

    #@bc
    .line 411
    :pswitch_0
    move-object/from16 v0, p0

    #@be
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@c0
    move/from16 v0, p2

    #@c2
    int-to-long v14, v0

    #@c3
    add-long/2addr v12, v14

    #@c4
    move-object/from16 v0, p0

    #@c6
    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@c8
    goto :goto_2

    #@c9
    .line 414
    :pswitch_1
    move-object/from16 v0, p0

    #@cb
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@cd
    move/from16 v0, p2

    #@cf
    int-to-long v14, v0

    #@d0
    const-wide/16 v16, 0x3e8

    #@d2
    mul-long v14, v14, v16

    #@d4
    add-long/2addr v12, v14

    #@d5
    move-object/from16 v0, p0

    #@d7
    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@d9
    goto :goto_2

    #@da
    .line 417
    :pswitch_2
    move-object/from16 v0, p0

    #@dc
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@de
    move/from16 v0, p2

    #@e0
    int-to-long v14, v0

    #@e1
    const-wide/32 v16, 0xea60

    #@e4
    mul-long v14, v14, v16

    #@e6
    add-long/2addr v12, v14

    #@e7
    move-object/from16 v0, p0

    #@e9
    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@eb
    goto :goto_2

    #@ec
    .line 421
    :pswitch_3
    move-object/from16 v0, p0

    #@ee
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@f0
    move/from16 v0, p2

    #@f2
    int-to-long v14, v0

    #@f3
    const-wide/32 v16, 0x36ee80

    #@f6
    mul-long v14, v14, v16

    #@f8
    add-long/2addr v12, v14

    #@f9
    move-object/from16 v0, p0

    #@fb
    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@fd
    goto :goto_2

    #@fe
    .line 424
    :pswitch_4
    const-wide/32 v8, 0x2932e00

    #@101
    .line 425
    goto :goto_2

    #@102
    .line 429
    :pswitch_5
    const-wide/32 v8, 0x5265c00

    #@105
    .line 430
    goto :goto_2

    #@106
    .line 434
    :pswitch_6
    const-wide/32 v8, 0x240c8400

    #@109
    .line 435
    goto :goto_2

    #@10a
    .line 444
    :cond_c
    move/from16 v0, p2

    #@10c
    int-to-long v12, v0

    #@10d
    mul-long v4, v12, v8

    #@10f
    .line 457
    .local v4, "delta":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    #@112
    move-result-object v12

    #@113
    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    #@116
    move-result v11

    #@117
    .line 458
    .local v11, "zoneOffset":I
    move-object/from16 v0, p0

    #@119
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@11b
    int-to-long v14, v11

    #@11c
    add-long/2addr v12, v14

    #@11d
    move-object/from16 v0, p0

    #@11f
    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    #@122
    move-result v10

    #@123
    .line 459
    .local v10, "offsetBefore":I
    move-object/from16 v0, p0

    #@125
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@127
    int-to-long v14, v11

    #@128
    add-long/2addr v12, v14

    #@129
    add-long/2addr v12, v4

    #@12a
    move-object/from16 v0, p0

    #@12c
    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    #@12f
    move-result v7

    #@130
    .line 460
    .local v7, "offsetAfter":I
    sub-int v3, v10, v7

    #@132
    .line 461
    .local v3, "dstDelta":I
    move-object/from16 v0, p0

    #@134
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@136
    int-to-long v14, v11

    #@137
    add-long/2addr v12, v14

    #@138
    add-long/2addr v12, v4

    #@139
    int-to-long v14, v3

    #@13a
    add-long/2addr v12, v14

    #@13b
    move-object/from16 v0, p0

    #@13d
    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    #@140
    move-result v12

    #@141
    if-ne v12, v7, :cond_d

    #@143
    .line 462
    int-to-long v12, v3

    #@144
    add-long/2addr v4, v12

    #@145
    .line 465
    :cond_d
    move-object/from16 v0, p0

    #@147
    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@149
    add-long/2addr v12, v4

    #@14a
    move-object/from16 v0, p0

    #@14c
    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@14e
    .line 466
    const/4 v12, 0x0

    #@14f
    move-object/from16 v0, p0

    #@151
    iput-boolean v12, v0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    #@153
    .line 467
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    #@156
    .line 361
    return-void

    #@157
    .line 409
    nop

    #@158
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected computeFields()V
    .locals 8

    #@0
    .prologue
    .line 577
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    #@3
    move-result-object v2

    #@4
    .line 578
    .local v2, "timeZone":Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    #@6
    iget-wide v6, p0, Ljava/util/GregorianCalendar;->time:J

    #@8
    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    #@b
    invoke-virtual {v2, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    #@14
    move-result v0

    #@15
    .line 579
    .local v0, "dstOffset":I
    :goto_0
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    #@18
    move-result v3

    #@19
    .line 596
    .local v3, "zoneOffset":I
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@1b
    const/16 v5, 0x10

    #@1d
    aput v0, v4, v5

    #@1f
    .line 597
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@21
    const/16 v5, 0xf

    #@23
    aput v3, v4, v5

    #@25
    .line 599
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->fullFieldsCalc()V

    #@28
    .line 601
    const/4 v1, 0x0

    #@29
    .local v1, "i":I
    :goto_1
    const/16 v4, 0x11

    #@2b
    if-ge v1, v4, :cond_1

    #@2d
    .line 602
    iget-object v4, p0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@2f
    const/4 v5, 0x1

    #@30
    aput-boolean v5, v4, v1

    #@32
    .line 601
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_1

    #@35
    .line 578
    .end local v0    # "dstOffset":I
    .end local v1    # "i":I
    .end local v3    # "zoneOffset":I
    :cond_0
    const/4 v0, 0x0

    #@36
    .restart local v0    # "dstOffset":I
    goto :goto_0

    #@37
    .line 576
    .restart local v1    # "i":I
    .restart local v3    # "zoneOffset":I
    :cond_1
    return-void
.end method

.method protected computeTime()V
    .locals 28

    #@0
    .prologue
    .line 608
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    #@3
    move-result v21

    #@4
    if-nez v21, :cond_1a

    #@6
    .line 609
    move-object/from16 v0, p0

    #@8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@a
    move-object/from16 v21, v0

    #@c
    const/16 v22, 0xb

    #@e
    aget-boolean v21, v21, v22

    #@10
    if-eqz v21, :cond_1

    #@12
    .line 610
    move-object/from16 v0, p0

    #@14
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@16
    move-object/from16 v21, v0

    #@18
    const/16 v22, 0xb

    #@1a
    aget v21, v21, v22

    #@1c
    if-ltz v21, :cond_0

    #@1e
    move-object/from16 v0, p0

    #@20
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@22
    move-object/from16 v21, v0

    #@24
    const/16 v22, 0xb

    #@26
    aget v21, v21, v22

    #@28
    const/16 v22, 0x17

    #@2a
    move/from16 v0, v21

    #@2c
    move/from16 v1, v22

    #@2e
    if-le v0, v1, :cond_3

    #@30
    .line 611
    :cond_0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@32
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@35
    throw v21

    #@36
    .line 613
    :cond_1
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@3a
    move-object/from16 v21, v0

    #@3c
    const/16 v22, 0xa

    #@3e
    aget-boolean v21, v21, v22

    #@40
    if-eqz v21, :cond_3

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@46
    move-object/from16 v21, v0

    #@48
    const/16 v22, 0xa

    #@4a
    aget v21, v21, v22

    #@4c
    if-ltz v21, :cond_2

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@52
    move-object/from16 v21, v0

    #@54
    const/16 v22, 0xa

    #@56
    aget v21, v21, v22

    #@58
    const/16 v22, 0xb

    #@5a
    move/from16 v0, v21

    #@5c
    move/from16 v1, v22

    #@5e
    if-le v0, v1, :cond_3

    #@60
    .line 614
    :cond_2
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@62
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@65
    throw v21

    #@66
    .line 616
    :cond_3
    move-object/from16 v0, p0

    #@68
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@6a
    move-object/from16 v21, v0

    #@6c
    const/16 v22, 0xc

    #@6e
    aget-boolean v21, v21, v22

    #@70
    if-eqz v21, :cond_5

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@76
    move-object/from16 v21, v0

    #@78
    const/16 v22, 0xc

    #@7a
    aget v21, v21, v22

    #@7c
    if-ltz v21, :cond_4

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@82
    move-object/from16 v21, v0

    #@84
    const/16 v22, 0xc

    #@86
    aget v21, v21, v22

    #@88
    const/16 v22, 0x3b

    #@8a
    move/from16 v0, v21

    #@8c
    move/from16 v1, v22

    #@8e
    if-le v0, v1, :cond_5

    #@90
    .line 617
    :cond_4
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@92
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@95
    throw v21

    #@96
    .line 619
    :cond_5
    move-object/from16 v0, p0

    #@98
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@9a
    move-object/from16 v21, v0

    #@9c
    const/16 v22, 0xd

    #@9e
    aget-boolean v21, v21, v22

    #@a0
    if-eqz v21, :cond_7

    #@a2
    move-object/from16 v0, p0

    #@a4
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@a6
    move-object/from16 v21, v0

    #@a8
    const/16 v22, 0xd

    #@aa
    aget v21, v21, v22

    #@ac
    if-ltz v21, :cond_6

    #@ae
    move-object/from16 v0, p0

    #@b0
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@b2
    move-object/from16 v21, v0

    #@b4
    const/16 v22, 0xd

    #@b6
    aget v21, v21, v22

    #@b8
    const/16 v22, 0x3b

    #@ba
    move/from16 v0, v21

    #@bc
    move/from16 v1, v22

    #@be
    if-le v0, v1, :cond_7

    #@c0
    .line 620
    :cond_6
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@c2
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c5
    throw v21

    #@c6
    .line 622
    :cond_7
    move-object/from16 v0, p0

    #@c8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@ca
    move-object/from16 v21, v0

    #@cc
    const/16 v22, 0xe

    #@ce
    aget-boolean v21, v21, v22

    #@d0
    if-eqz v21, :cond_9

    #@d2
    .line 623
    move-object/from16 v0, p0

    #@d4
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@d6
    move-object/from16 v21, v0

    #@d8
    const/16 v22, 0xe

    #@da
    aget v21, v21, v22

    #@dc
    if-ltz v21, :cond_8

    #@de
    move-object/from16 v0, p0

    #@e0
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@e2
    move-object/from16 v21, v0

    #@e4
    const/16 v22, 0xe

    #@e6
    aget v21, v21, v22

    #@e8
    const/16 v22, 0x3e7

    #@ea
    move/from16 v0, v21

    #@ec
    move/from16 v1, v22

    #@ee
    if-le v0, v1, :cond_9

    #@f0
    .line 624
    :cond_8
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@f2
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@f5
    throw v21

    #@f6
    .line 626
    :cond_9
    move-object/from16 v0, p0

    #@f8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@fa
    move-object/from16 v21, v0

    #@fc
    const/16 v22, 0x3

    #@fe
    aget-boolean v21, v21, v22

    #@100
    if-eqz v21, :cond_b

    #@102
    .line 627
    move-object/from16 v0, p0

    #@104
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@106
    move-object/from16 v21, v0

    #@108
    const/16 v22, 0x3

    #@10a
    aget v21, v21, v22

    #@10c
    const/16 v22, 0x1

    #@10e
    move/from16 v0, v21

    #@110
    move/from16 v1, v22

    #@112
    if-lt v0, v1, :cond_a

    #@114
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@118
    move-object/from16 v21, v0

    #@11a
    const/16 v22, 0x3

    #@11c
    aget v21, v21, v22

    #@11e
    const/16 v22, 0x35

    #@120
    move/from16 v0, v21

    #@122
    move/from16 v1, v22

    #@124
    if-le v0, v1, :cond_b

    #@126
    .line 628
    :cond_a
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@128
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@12b
    throw v21

    #@12c
    .line 630
    :cond_b
    move-object/from16 v0, p0

    #@12e
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@130
    move-object/from16 v21, v0

    #@132
    const/16 v22, 0x7

    #@134
    aget-boolean v21, v21, v22

    #@136
    if-eqz v21, :cond_d

    #@138
    .line 631
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@13c
    move-object/from16 v21, v0

    #@13e
    const/16 v22, 0x7

    #@140
    aget v21, v21, v22

    #@142
    const/16 v22, 0x1

    #@144
    move/from16 v0, v21

    #@146
    move/from16 v1, v22

    #@148
    if-lt v0, v1, :cond_c

    #@14a
    move-object/from16 v0, p0

    #@14c
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@14e
    move-object/from16 v21, v0

    #@150
    const/16 v22, 0x7

    #@152
    aget v21, v21, v22

    #@154
    const/16 v22, 0x7

    #@156
    move/from16 v0, v21

    #@158
    move/from16 v1, v22

    #@15a
    if-le v0, v1, :cond_d

    #@15c
    .line 632
    :cond_c
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@15e
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@161
    throw v21

    #@162
    .line 634
    :cond_d
    move-object/from16 v0, p0

    #@164
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@166
    move-object/from16 v21, v0

    #@168
    const/16 v22, 0x8

    #@16a
    aget-boolean v21, v21, v22

    #@16c
    if-eqz v21, :cond_f

    #@16e
    .line 635
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@172
    move-object/from16 v21, v0

    #@174
    const/16 v22, 0x8

    #@176
    aget v21, v21, v22

    #@178
    const/16 v22, 0x1

    #@17a
    move/from16 v0, v21

    #@17c
    move/from16 v1, v22

    #@17e
    if-lt v0, v1, :cond_e

    #@180
    move-object/from16 v0, p0

    #@182
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@184
    move-object/from16 v21, v0

    #@186
    const/16 v22, 0x8

    #@188
    aget v21, v21, v22

    #@18a
    const/16 v22, 0x6

    #@18c
    move/from16 v0, v21

    #@18e
    move/from16 v1, v22

    #@190
    if-le v0, v1, :cond_f

    #@192
    .line 636
    :cond_e
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@194
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@197
    throw v21

    #@198
    .line 638
    :cond_f
    move-object/from16 v0, p0

    #@19a
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@19c
    move-object/from16 v21, v0

    #@19e
    const/16 v22, 0x4

    #@1a0
    aget-boolean v21, v21, v22

    #@1a2
    if-eqz v21, :cond_11

    #@1a4
    .line 639
    move-object/from16 v0, p0

    #@1a6
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1a8
    move-object/from16 v21, v0

    #@1aa
    const/16 v22, 0x4

    #@1ac
    aget v21, v21, v22

    #@1ae
    const/16 v22, 0x1

    #@1b0
    move/from16 v0, v21

    #@1b2
    move/from16 v1, v22

    #@1b4
    if-lt v0, v1, :cond_10

    #@1b6
    move-object/from16 v0, p0

    #@1b8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1ba
    move-object/from16 v21, v0

    #@1bc
    const/16 v22, 0x4

    #@1be
    aget v21, v21, v22

    #@1c0
    const/16 v22, 0x6

    #@1c2
    move/from16 v0, v21

    #@1c4
    move/from16 v1, v22

    #@1c6
    if-le v0, v1, :cond_11

    #@1c8
    .line 640
    :cond_10
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@1ca
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1cd
    throw v21

    #@1ce
    .line 642
    :cond_11
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@1d2
    move-object/from16 v21, v0

    #@1d4
    const/16 v22, 0x9

    #@1d6
    aget-boolean v21, v21, v22

    #@1d8
    if-eqz v21, :cond_12

    #@1da
    move-object/from16 v0, p0

    #@1dc
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1de
    move-object/from16 v21, v0

    #@1e0
    const/16 v22, 0x9

    #@1e2
    aget v21, v21, v22

    #@1e4
    if-eqz v21, :cond_12

    #@1e6
    move-object/from16 v0, p0

    #@1e8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@1ea
    move-object/from16 v21, v0

    #@1ec
    const/16 v22, 0x9

    #@1ee
    aget v21, v21, v22

    #@1f0
    const/16 v22, 0x1

    #@1f2
    move/from16 v0, v21

    #@1f4
    move/from16 v1, v22

    #@1f6
    if-eq v0, v1, :cond_12

    #@1f8
    .line 643
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@1fa
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@1fd
    throw v21

    #@1fe
    .line 645
    :cond_12
    move-object/from16 v0, p0

    #@200
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@202
    move-object/from16 v21, v0

    #@204
    const/16 v22, 0xa

    #@206
    aget-boolean v21, v21, v22

    #@208
    if-eqz v21, :cond_14

    #@20a
    move-object/from16 v0, p0

    #@20c
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@20e
    move-object/from16 v21, v0

    #@210
    const/16 v22, 0xa

    #@212
    aget v21, v21, v22

    #@214
    if-ltz v21, :cond_13

    #@216
    move-object/from16 v0, p0

    #@218
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@21a
    move-object/from16 v21, v0

    #@21c
    const/16 v22, 0xa

    #@21e
    aget v21, v21, v22

    #@220
    const/16 v22, 0xb

    #@222
    move/from16 v0, v21

    #@224
    move/from16 v1, v22

    #@226
    if-le v0, v1, :cond_14

    #@228
    .line 646
    :cond_13
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@22a
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@22d
    throw v21

    #@22e
    .line 648
    :cond_14
    move-object/from16 v0, p0

    #@230
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@232
    move-object/from16 v21, v0

    #@234
    const/16 v22, 0x1

    #@236
    aget-boolean v21, v21, v22

    #@238
    if-eqz v21, :cond_18

    #@23a
    .line 649
    move-object/from16 v0, p0

    #@23c
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@23e
    move-object/from16 v21, v0

    #@240
    const/16 v22, 0x0

    #@242
    aget-boolean v21, v21, v22

    #@244
    if-eqz v21, :cond_16

    #@246
    move-object/from16 v0, p0

    #@248
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@24a
    move-object/from16 v21, v0

    #@24c
    const/16 v22, 0x0

    #@24e
    aget v21, v21, v22

    #@250
    if-nez v21, :cond_16

    #@252
    .line 650
    move-object/from16 v0, p0

    #@254
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@256
    move-object/from16 v21, v0

    #@258
    const/16 v22, 0x1

    #@25a
    aget v21, v21, v22

    #@25c
    const/16 v22, 0x1

    #@25e
    move/from16 v0, v21

    #@260
    move/from16 v1, v22

    #@262
    if-lt v0, v1, :cond_15

    #@264
    move-object/from16 v0, p0

    #@266
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@268
    move-object/from16 v21, v0

    #@26a
    const/16 v22, 0x1

    #@26c
    aget v21, v21, v22

    #@26e
    const v22, 0x116babfe

    #@271
    move/from16 v0, v21

    #@273
    move/from16 v1, v22

    #@275
    if-le v0, v1, :cond_16

    #@277
    .line 651
    :cond_15
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@279
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@27c
    throw v21

    #@27d
    .line 652
    :cond_16
    move-object/from16 v0, p0

    #@27f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@281
    move-object/from16 v21, v0

    #@283
    const/16 v22, 0x1

    #@285
    aget v21, v21, v22

    #@287
    const/16 v22, 0x1

    #@289
    move/from16 v0, v21

    #@28b
    move/from16 v1, v22

    #@28d
    if-lt v0, v1, :cond_17

    #@28f
    move-object/from16 v0, p0

    #@291
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@293
    move-object/from16 v21, v0

    #@295
    const/16 v22, 0x1

    #@297
    aget v21, v21, v22

    #@299
    const v22, 0x116bd2d2

    #@29c
    move/from16 v0, v21

    #@29e
    move/from16 v1, v22

    #@2a0
    if-le v0, v1, :cond_18

    #@2a2
    .line 653
    :cond_17
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@2a4
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2a7
    throw v21

    #@2a8
    .line 656
    :cond_18
    move-object/from16 v0, p0

    #@2aa
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@2ac
    move-object/from16 v21, v0

    #@2ae
    const/16 v22, 0x2

    #@2b0
    aget-boolean v21, v21, v22

    #@2b2
    if-eqz v21, :cond_1a

    #@2b4
    move-object/from16 v0, p0

    #@2b6
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@2b8
    move-object/from16 v21, v0

    #@2ba
    const/16 v22, 0x2

    #@2bc
    aget v21, v21, v22

    #@2be
    if-ltz v21, :cond_19

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@2c4
    move-object/from16 v21, v0

    #@2c6
    const/16 v22, 0x2

    #@2c8
    aget v21, v21, v22

    #@2ca
    const/16 v22, 0xb

    #@2cc
    move/from16 v0, v21

    #@2ce
    move/from16 v1, v22

    #@2d0
    if-le v0, v1, :cond_1a

    #@2d2
    .line 657
    :cond_19
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@2d4
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2d7
    throw v21

    #@2d8
    .line 662
    :cond_1a
    const-wide/16 v8, 0x0

    #@2da
    .line 663
    .local v8, "hour":J
    move-object/from16 v0, p0

    #@2dc
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@2de
    move-object/from16 v21, v0

    #@2e0
    const/16 v22, 0xb

    #@2e2
    aget-boolean v21, v21, v22

    #@2e4
    if-eqz v21, :cond_1f

    #@2e6
    move-object/from16 v0, p0

    #@2e8
    iget v0, v0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    #@2ea
    move/from16 v21, v0

    #@2ec
    const/16 v22, 0xa

    #@2ee
    move/from16 v0, v21

    #@2f0
    move/from16 v1, v22

    #@2f2
    if-eq v0, v1, :cond_1f

    #@2f4
    .line 664
    move-object/from16 v0, p0

    #@2f6
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@2f8
    move-object/from16 v21, v0

    #@2fa
    const/16 v22, 0xb

    #@2fc
    aget v21, v21, v22

    #@2fe
    move/from16 v0, v21

    #@300
    int-to-long v8, v0

    #@301
    .line 668
    :cond_1b
    :goto_0
    const-wide/32 v22, 0x36ee80

    #@304
    mul-long v12, v8, v22

    #@306
    .line 670
    .local v12, "timeVal":J
    move-object/from16 v0, p0

    #@308
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@30a
    move-object/from16 v21, v0

    #@30c
    const/16 v22, 0xc

    #@30e
    aget-boolean v21, v21, v22

    #@310
    if-eqz v21, :cond_1c

    #@312
    .line 671
    move-object/from16 v0, p0

    #@314
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@316
    move-object/from16 v21, v0

    #@318
    const/16 v22, 0xc

    #@31a
    aget v21, v21, v22

    #@31c
    move/from16 v0, v21

    #@31e
    int-to-long v0, v0

    #@31f
    move-wide/from16 v22, v0

    #@321
    const-wide/32 v24, 0xea60

    #@324
    mul-long v22, v22, v24

    #@326
    add-long v12, v12, v22

    #@328
    .line 673
    :cond_1c
    move-object/from16 v0, p0

    #@32a
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@32c
    move-object/from16 v21, v0

    #@32e
    const/16 v22, 0xd

    #@330
    aget-boolean v21, v21, v22

    #@332
    if-eqz v21, :cond_1d

    #@334
    .line 674
    move-object/from16 v0, p0

    #@336
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@338
    move-object/from16 v21, v0

    #@33a
    const/16 v22, 0xd

    #@33c
    aget v21, v21, v22

    #@33e
    move/from16 v0, v21

    #@340
    int-to-long v0, v0

    #@341
    move-wide/from16 v22, v0

    #@343
    const-wide/16 v24, 0x3e8

    #@345
    mul-long v22, v22, v24

    #@347
    add-long v12, v12, v22

    #@349
    .line 676
    :cond_1d
    move-object/from16 v0, p0

    #@34b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@34d
    move-object/from16 v21, v0

    #@34f
    const/16 v22, 0xe

    #@351
    aget-boolean v21, v21, v22

    #@353
    if-eqz v21, :cond_1e

    #@355
    .line 677
    move-object/from16 v0, p0

    #@357
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@359
    move-object/from16 v21, v0

    #@35b
    const/16 v22, 0xe

    #@35d
    aget v21, v21, v22

    #@35f
    move/from16 v0, v21

    #@361
    int-to-long v0, v0

    #@362
    move-wide/from16 v22, v0

    #@364
    add-long v12, v12, v22

    #@366
    .line 681
    :cond_1e
    move-object/from16 v0, p0

    #@368
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@36a
    move-object/from16 v21, v0

    #@36c
    const/16 v22, 0x1

    #@36e
    aget-boolean v21, v21, v22

    #@370
    if-eqz v21, :cond_20

    #@372
    move-object/from16 v0, p0

    #@374
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@376
    move-object/from16 v21, v0

    #@378
    const/16 v22, 0x1

    #@37a
    aget v20, v21, v22

    #@37c
    .line 682
    .local v20, "year":I
    :goto_1
    move-object/from16 v0, p0

    #@37e
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@380
    move-object/from16 v21, v0

    #@382
    const/16 v22, 0x0

    #@384
    aget-boolean v21, v21, v22

    #@386
    if-eqz v21, :cond_22

    #@388
    .line 684
    move-object/from16 v0, p0

    #@38a
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@38c
    move-object/from16 v21, v0

    #@38e
    const/16 v22, 0x0

    #@390
    aget v21, v21, v22

    #@392
    if-eqz v21, :cond_21

    #@394
    move-object/from16 v0, p0

    #@396
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@398
    move-object/from16 v21, v0

    #@39a
    const/16 v22, 0x0

    #@39c
    aget v21, v21, v22

    #@39e
    const/16 v22, 0x1

    #@3a0
    move/from16 v0, v21

    #@3a2
    move/from16 v1, v22

    #@3a4
    if-eq v0, v1, :cond_21

    #@3a6
    .line 685
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@3a8
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@3ab
    throw v21

    #@3ac
    .line 665
    .end local v12    # "timeVal":J
    .end local v20    # "year":I
    :cond_1f
    move-object/from16 v0, p0

    #@3ae
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@3b0
    move-object/from16 v21, v0

    #@3b2
    const/16 v22, 0xa

    #@3b4
    aget-boolean v21, v21, v22

    #@3b6
    if-eqz v21, :cond_1b

    #@3b8
    .line 666
    move-object/from16 v0, p0

    #@3ba
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@3bc
    move-object/from16 v21, v0

    #@3be
    const/16 v22, 0x9

    #@3c0
    aget v21, v21, v22

    #@3c2
    mul-int/lit8 v21, v21, 0xc

    #@3c4
    move-object/from16 v0, p0

    #@3c6
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@3c8
    move-object/from16 v22, v0

    #@3ca
    const/16 v23, 0xa

    #@3cc
    aget v22, v22, v23

    #@3ce
    add-int v21, v21, v22

    #@3d0
    move/from16 v0, v21

    #@3d2
    int-to-long v8, v0

    #@3d3
    goto/16 :goto_0

    #@3d5
    .line 681
    .restart local v12    # "timeVal":J
    :cond_20
    const/16 v20, 0x7b2

    #@3d7
    .restart local v20    # "year":I
    goto :goto_1

    #@3d8
    .line 687
    :cond_21
    move-object/from16 v0, p0

    #@3da
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@3dc
    move-object/from16 v21, v0

    #@3de
    const/16 v22, 0x0

    #@3e0
    aget v21, v21, v22

    #@3e2
    if-nez v21, :cond_22

    #@3e4
    .line 688
    rsub-int/lit8 v20, v20, 0x1

    #@3e6
    .line 692
    :cond_22
    move-object/from16 v0, p0

    #@3e8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@3ea
    move-object/from16 v21, v0

    #@3ec
    const/16 v22, 0x4

    #@3ee
    aget-boolean v21, v21, v22

    #@3f0
    if-nez v21, :cond_2a

    #@3f2
    .line 693
    move-object/from16 v0, p0

    #@3f4
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@3f6
    move-object/from16 v21, v0

    #@3f8
    const/16 v22, 0x8

    #@3fa
    aget-boolean v19, v21, v22

    #@3fc
    .line 694
    :goto_2
    move-object/from16 v0, p0

    #@3fe
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@400
    move-object/from16 v21, v0

    #@402
    const/16 v22, 0x5

    #@404
    aget-boolean v21, v21, v22

    #@406
    if-nez v21, :cond_23

    #@408
    move-object/from16 v0, p0

    #@40a
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@40c
    move-object/from16 v21, v0

    #@40e
    const/16 v22, 0x2

    #@410
    aget-boolean v21, v21, v22

    #@412
    if-nez v21, :cond_23

    #@414
    if-eqz v19, :cond_2c

    #@416
    .line 695
    :cond_23
    move-object/from16 v0, p0

    #@418
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@41a
    move/from16 v21, v0

    #@41c
    const/16 v22, 0x6

    #@41e
    move/from16 v0, v21

    #@420
    move/from16 v1, v22

    #@422
    if-eq v0, v1, :cond_2b

    #@424
    const/16 v17, 0x1

    #@426
    .line 696
    .local v17, "useMonth":Z
    :goto_3
    if-eqz v17, :cond_25

    #@428
    .line 697
    move-object/from16 v0, p0

    #@42a
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@42c
    move/from16 v21, v0

    #@42e
    const/16 v22, 0x7

    #@430
    move/from16 v0, v21

    #@432
    move/from16 v1, v22

    #@434
    if-eq v0, v1, :cond_24

    #@436
    move-object/from16 v0, p0

    #@438
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@43a
    move/from16 v21, v0

    #@43c
    const/16 v22, 0x3

    #@43e
    move/from16 v0, v21

    #@440
    move/from16 v1, v22

    #@442
    if-ne v0, v1, :cond_25

    #@444
    .line 698
    :cond_24
    move-object/from16 v0, p0

    #@446
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@448
    move-object/from16 v21, v0

    #@44a
    const/16 v22, 0x3

    #@44c
    aget-boolean v21, v21, v22

    #@44e
    if-eqz v21, :cond_2e

    #@450
    move-object/from16 v0, p0

    #@452
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@454
    move-object/from16 v21, v0

    #@456
    const/16 v22, 0x7

    #@458
    aget-boolean v21, v21, v22

    #@45a
    if-eqz v21, :cond_2e

    #@45c
    .line 699
    move-object/from16 v0, p0

    #@45e
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@460
    move/from16 v21, v0

    #@462
    const/16 v22, 0x3

    #@464
    move/from16 v0, v21

    #@466
    move/from16 v1, v22

    #@468
    if-ne v0, v1, :cond_2d

    #@46a
    .line 700
    const/16 v17, 0x0

    #@46c
    .line 714
    .end local v17    # "useMonth":Z
    :cond_25
    :goto_4
    if-eqz v17, :cond_3b

    #@46e
    .line 715
    move-object/from16 v0, p0

    #@470
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@472
    move-object/from16 v21, v0

    #@474
    const/16 v22, 0x2

    #@476
    aget v10, v21, v22

    #@478
    .line 716
    .local v10, "month":I
    div-int/lit8 v21, v10, 0xc

    #@47a
    add-int v20, v20, v21

    #@47c
    .line 717
    rem-int/lit8 v10, v10, 0xc

    #@47e
    .line 718
    if-gez v10, :cond_26

    #@480
    .line 719
    add-int/lit8 v20, v20, -0x1

    #@482
    .line 720
    add-int/lit8 v10, v10, 0xc

    #@484
    .line 722
    :cond_26
    move-object/from16 v0, p0

    #@486
    move/from16 v1, v20

    #@488
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@48b
    move-result v5

    #@48c
    .line 723
    .local v5, "leapYear":Z
    move/from16 v0, v20

    #@48e
    int-to-long v0, v0

    #@48f
    move-wide/from16 v22, v0

    #@491
    move-object/from16 v0, p0

    #@493
    move-wide/from16 v1, v22

    #@495
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    #@498
    move-result-wide v22

    #@499
    move-object/from16 v0, p0

    #@49b
    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    #@49e
    move-result v21

    #@49f
    move/from16 v0, v21

    #@4a1
    int-to-long v0, v0

    #@4a2
    move-wide/from16 v24, v0

    #@4a4
    add-long v6, v22, v24

    #@4a6
    .line 724
    .local v6, "days":J
    move-object/from16 v0, p0

    #@4a8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@4aa
    move-object/from16 v21, v0

    #@4ac
    const/16 v22, 0x5

    #@4ae
    aget-boolean v16, v21, v22

    #@4b0
    .line 725
    .local v16, "useDate":Z
    if-eqz v16, :cond_28

    #@4b2
    .line 726
    move-object/from16 v0, p0

    #@4b4
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@4b6
    move/from16 v21, v0

    #@4b8
    const/16 v22, 0x7

    #@4ba
    move/from16 v0, v21

    #@4bc
    move/from16 v1, v22

    #@4be
    if-eq v0, v1, :cond_27

    #@4c0
    .line 727
    move-object/from16 v0, p0

    #@4c2
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@4c4
    move/from16 v21, v0

    #@4c6
    const/16 v22, 0x4

    #@4c8
    move/from16 v0, v21

    #@4ca
    move/from16 v1, v22

    #@4cc
    if-ne v0, v1, :cond_30

    #@4ce
    .line 728
    :cond_27
    :goto_5
    move-object/from16 v0, p0

    #@4d0
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@4d2
    move-object/from16 v21, v0

    #@4d4
    const/16 v22, 0x7

    #@4d6
    aget-boolean v21, v21, v22

    #@4d8
    if-eqz v21, :cond_31

    #@4da
    if-eqz v19, :cond_31

    #@4dc
    const/16 v16, 0x0

    #@4de
    .line 730
    .end local v16    # "useDate":Z
    :cond_28
    :goto_6
    if-eqz v16, :cond_36

    #@4e0
    .line 731
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    #@4e3
    move-result v21

    #@4e4
    if-nez v21, :cond_32

    #@4e6
    .line 732
    move-object/from16 v0, p0

    #@4e8
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@4ea
    move-object/from16 v21, v0

    #@4ec
    const/16 v22, 0x5

    #@4ee
    aget v21, v21, v22

    #@4f0
    const/16 v22, 0x1

    #@4f2
    move/from16 v0, v21

    #@4f4
    move/from16 v1, v22

    #@4f6
    if-lt v0, v1, :cond_29

    #@4f8
    move-object/from16 v0, p0

    #@4fa
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@4fc
    move-object/from16 v21, v0

    #@4fe
    const/16 v22, 0x5

    #@500
    aget v21, v21, v22

    #@502
    move-object/from16 v0, p0

    #@504
    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@507
    move-result v22

    #@508
    move/from16 v0, v21

    #@50a
    move/from16 v1, v22

    #@50c
    if-le v0, v1, :cond_32

    #@50e
    .line 734
    :cond_29
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@510
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@513
    throw v21

    #@514
    .line 692
    .end local v5    # "leapYear":Z
    .end local v6    # "days":J
    .end local v10    # "month":I
    :cond_2a
    const/16 v19, 0x1

    #@516
    .local v19, "weekMonthSet":Z
    goto/16 :goto_2

    #@518
    .line 695
    .end local v19    # "weekMonthSet":Z
    :cond_2b
    const/16 v17, 0x0

    #@51a
    .restart local v17    # "useMonth":Z
    goto/16 :goto_3

    #@51c
    .line 694
    .end local v17    # "useMonth":Z
    :cond_2c
    const/16 v17, 0x0

    #@51e
    .restart local v17    # "useMonth":Z
    goto/16 :goto_3

    #@520
    .line 701
    :cond_2d
    move-object/from16 v0, p0

    #@522
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@524
    move/from16 v21, v0

    #@526
    const/16 v22, 0x7

    #@528
    move/from16 v0, v21

    #@52a
    move/from16 v1, v22

    #@52c
    if-ne v0, v1, :cond_25

    #@52e
    .line 707
    move/from16 v17, v19

    #@530
    .local v17, "useMonth":Z
    goto/16 :goto_4

    #@532
    .line 709
    .local v17, "useMonth":Z
    :cond_2e
    move-object/from16 v0, p0

    #@534
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@536
    move-object/from16 v21, v0

    #@538
    const/16 v22, 0x6

    #@53a
    aget-boolean v21, v21, v22

    #@53c
    if-eqz v21, :cond_25

    #@53e
    .line 710
    move-object/from16 v0, p0

    #@540
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@542
    move-object/from16 v21, v0

    #@544
    const/16 v22, 0x5

    #@546
    aget-boolean v21, v21, v22

    #@548
    if-eqz v21, :cond_2f

    #@54a
    move-object/from16 v0, p0

    #@54c
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@54e
    move-object/from16 v21, v0

    #@550
    const/16 v22, 0x2

    #@552
    aget-boolean v17, v21, v22

    #@554
    .local v17, "useMonth":Z
    goto/16 :goto_4

    #@556
    .local v17, "useMonth":Z
    :cond_2f
    const/16 v17, 0x0

    #@558
    goto/16 :goto_4

    #@55a
    .line 727
    .end local v17    # "useMonth":Z
    .restart local v5    # "leapYear":Z
    .restart local v6    # "days":J
    .restart local v10    # "month":I
    .restart local v16    # "useDate":Z
    :cond_30
    move-object/from16 v0, p0

    #@55c
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@55e
    move/from16 v21, v0

    #@560
    const/16 v22, 0x8

    #@562
    move/from16 v0, v21

    #@564
    move/from16 v1, v22

    #@566
    if-ne v0, v1, :cond_28

    #@568
    goto/16 :goto_5

    #@56a
    .line 728
    :cond_31
    const/16 v16, 0x1

    #@56c
    .local v16, "useDate":Z
    goto/16 :goto_6

    #@56e
    .line 736
    .end local v16    # "useDate":Z
    :cond_32
    move-object/from16 v0, p0

    #@570
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@572
    move-object/from16 v21, v0

    #@574
    const/16 v22, 0x5

    #@576
    aget v21, v21, v22

    #@578
    add-int/lit8 v21, v21, -0x1

    #@57a
    move/from16 v0, v21

    #@57c
    int-to-long v0, v0

    #@57d
    move-wide/from16 v22, v0

    #@57f
    add-long v6, v6, v22

    #@581
    .line 795
    .end local v5    # "leapYear":Z
    .end local v10    # "month":I
    :cond_33
    :goto_7
    const/16 v21, 0x0

    #@583
    move/from16 v0, v21

    #@585
    move-object/from16 v1, p0

    #@587
    iput v0, v1, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@589
    .line 797
    const-wide/32 v22, 0x5265c00

    #@58c
    mul-long v22, v22, v6

    #@58e
    add-long v12, v12, v22

    #@590
    .line 799
    move-object/from16 v0, p0

    #@592
    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    #@594
    move/from16 v21, v0

    #@596
    move/from16 v0, v20

    #@598
    move/from16 v1, v21

    #@59a
    if-ne v0, v1, :cond_34

    #@59c
    .line 800
    move-object/from16 v0, p0

    #@59e
    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@5a0
    move-wide/from16 v22, v0

    #@5a2
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@5a5
    move-result v21

    #@5a6
    move/from16 v0, v21

    #@5a8
    int-to-long v0, v0

    #@5a9
    move-wide/from16 v24, v0

    #@5ab
    const-wide/32 v26, 0x5265c00

    #@5ae
    mul-long v24, v24, v26

    #@5b0
    add-long v22, v22, v24

    #@5b2
    cmp-long v21, v12, v22

    #@5b4
    if-ltz v21, :cond_34

    #@5b6
    .line 801
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@5b9
    move-result v21

    #@5ba
    move/from16 v0, v21

    #@5bc
    int-to-long v0, v0

    #@5bd
    move-wide/from16 v22, v0

    #@5bf
    const-wide/32 v24, 0x5265c00

    #@5c2
    mul-long v22, v22, v24

    #@5c4
    sub-long v12, v12, v22

    #@5c6
    .line 810
    :cond_34
    move-object/from16 v0, p0

    #@5c8
    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    #@5cb
    move-result v21

    #@5cc
    move/from16 v0, v21

    #@5ce
    int-to-long v0, v0

    #@5cf
    move-wide/from16 v22, v0

    #@5d1
    sub-long v22, v12, v22

    #@5d3
    .line 811
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    #@5d6
    move-result-object v21

    #@5d7
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getRawOffset()I

    #@5da
    move-result v21

    #@5db
    move/from16 v0, v21

    #@5dd
    int-to-long v0, v0

    #@5de
    move-wide/from16 v24, v0

    #@5e0
    .line 810
    add-long v14, v22, v24

    #@5e2
    .line 812
    .local v14, "timeValWithoutDST":J
    move-object/from16 v0, p0

    #@5e4
    invoke-direct {v0, v14, v15}, Ljava/util/GregorianCalendar;->getOffset(J)I

    #@5e7
    move-result v21

    #@5e8
    move/from16 v0, v21

    #@5ea
    int-to-long v0, v0

    #@5eb
    move-wide/from16 v22, v0

    #@5ed
    sub-long v12, v12, v22

    #@5ef
    .line 815
    move-object/from16 v0, p0

    #@5f1
    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    #@5f3
    .line 816
    cmp-long v21, v14, v12

    #@5f5
    if-eqz v21, :cond_35

    #@5f7
    .line 817
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->computeFields()V

    #@5fa
    .line 818
    const/16 v21, 0x1

    #@5fc
    move/from16 v0, v21

    #@5fe
    move-object/from16 v1, p0

    #@600
    iput-boolean v0, v1, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    #@602
    .line 607
    :cond_35
    return-void

    #@603
    .line 739
    .end local v14    # "timeValWithoutDST":J
    .restart local v5    # "leapYear":Z
    .restart local v10    # "month":I
    :cond_36
    move-object/from16 v0, p0

    #@605
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@607
    move-object/from16 v21, v0

    #@609
    const/16 v22, 0x7

    #@60b
    aget-boolean v21, v21, v22

    #@60d
    if-eqz v21, :cond_37

    #@60f
    .line 740
    move-object/from16 v0, p0

    #@611
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@613
    move-object/from16 v21, v0

    #@615
    const/16 v22, 0x7

    #@617
    aget v21, v21, v22

    #@619
    add-int/lit8 v4, v21, -0x1

    #@61b
    .line 744
    .local v4, "dayOfWeek":I
    :goto_8
    move-object/from16 v0, p0

    #@61d
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@61f
    move-object/from16 v21, v0

    #@621
    const/16 v22, 0x4

    #@623
    aget-boolean v21, v21, v22

    #@625
    if-eqz v21, :cond_38

    #@627
    .line 745
    move-object/from16 v0, p0

    #@629
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@62b
    move/from16 v21, v0

    #@62d
    const/16 v22, 0x8

    #@62f
    move/from16 v0, v21

    #@631
    move/from16 v1, v22

    #@633
    if-eq v0, v1, :cond_38

    #@635
    .line 746
    const-wide/16 v22, 0x3

    #@637
    sub-long v22, v6, v22

    #@639
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@63c
    move-result v21

    #@63d
    add-int/lit8 v21, v21, -0x1

    #@63f
    move/from16 v0, v21

    #@641
    int-to-long v0, v0

    #@642
    move-wide/from16 v24, v0

    #@644
    sub-long v22, v22, v24

    #@646
    move-object/from16 v0, p0

    #@648
    move-wide/from16 v1, v22

    #@64a
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@64d
    move-result v11

    #@64e
    .line 747
    .local v11, "skew":I
    move-object/from16 v0, p0

    #@650
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@652
    move-object/from16 v21, v0

    #@654
    const/16 v22, 0x4

    #@656
    aget v21, v21, v22

    #@658
    add-int/lit8 v21, v21, -0x1

    #@65a
    mul-int/lit8 v21, v21, 0x7

    #@65c
    .line 748
    add-int v22, v11, v4

    #@65e
    move/from16 v0, v22

    #@660
    int-to-long v0, v0

    #@661
    move-wide/from16 v22, v0

    #@663
    const-wide/16 v24, 0x3

    #@665
    sub-long v24, v6, v24

    #@667
    sub-long v22, v22, v24

    #@669
    move-object/from16 v0, p0

    #@66b
    move-wide/from16 v1, v22

    #@66d
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@670
    move-result v22

    #@671
    .line 747
    add-int v21, v21, v22

    #@673
    sub-int v21, v21, v11

    #@675
    move/from16 v0, v21

    #@677
    int-to-long v0, v0

    #@678
    move-wide/from16 v22, v0

    #@67a
    add-long v6, v6, v22

    #@67c
    .line 745
    goto/16 :goto_7

    #@67e
    .line 742
    .end local v4    # "dayOfWeek":I
    .end local v11    # "skew":I
    :cond_37
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@681
    move-result v21

    #@682
    add-int/lit8 v4, v21, -0x1

    #@684
    .restart local v4    # "dayOfWeek":I
    goto :goto_8

    #@685
    .line 749
    :cond_38
    move-object/from16 v0, p0

    #@687
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@689
    move-object/from16 v21, v0

    #@68b
    const/16 v22, 0x8

    #@68d
    aget-boolean v21, v21, v22

    #@68f
    if-eqz v21, :cond_3a

    #@691
    .line 750
    move-object/from16 v0, p0

    #@693
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@695
    move-object/from16 v21, v0

    #@697
    const/16 v22, 0x8

    #@699
    aget v21, v21, v22

    #@69b
    if-ltz v21, :cond_39

    #@69d
    .line 751
    int-to-long v0, v4

    #@69e
    move-wide/from16 v22, v0

    #@6a0
    const-wide/16 v24, 0x3

    #@6a2
    sub-long v24, v6, v24

    #@6a4
    sub-long v22, v22, v24

    #@6a6
    move-object/from16 v0, p0

    #@6a8
    move-wide/from16 v1, v22

    #@6aa
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@6ad
    move-result v21

    #@6ae
    .line 752
    move-object/from16 v0, p0

    #@6b0
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@6b2
    move-object/from16 v22, v0

    #@6b4
    const/16 v23, 0x8

    #@6b6
    aget v22, v22, v23

    #@6b8
    add-int/lit8 v22, v22, -0x1

    #@6ba
    mul-int/lit8 v22, v22, 0x7

    #@6bc
    .line 751
    add-int v21, v21, v22

    #@6be
    move/from16 v0, v21

    #@6c0
    int-to-long v0, v0

    #@6c1
    move-wide/from16 v22, v0

    #@6c3
    add-long v6, v6, v22

    #@6c5
    goto/16 :goto_7

    #@6c7
    .line 754
    :cond_39
    move-object/from16 v0, p0

    #@6c9
    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@6cc
    move-result v21

    #@6cd
    .line 755
    int-to-long v0, v4

    #@6ce
    move-wide/from16 v22, v0

    #@6d0
    .line 756
    move-object/from16 v0, p0

    #@6d2
    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    #@6d5
    move-result v24

    #@6d6
    move/from16 v0, v24

    #@6d8
    int-to-long v0, v0

    #@6d9
    move-wide/from16 v24, v0

    #@6db
    add-long v24, v24, v6

    #@6dd
    const-wide/16 v26, 0x3

    #@6df
    sub-long v24, v24, v26

    #@6e1
    .line 755
    sub-long v22, v22, v24

    #@6e3
    move-object/from16 v0, p0

    #@6e5
    move-wide/from16 v1, v22

    #@6e7
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@6ea
    move-result v22

    #@6eb
    .line 754
    add-int v21, v21, v22

    #@6ed
    .line 757
    move-object/from16 v0, p0

    #@6ef
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@6f1
    move-object/from16 v22, v0

    #@6f3
    const/16 v23, 0x8

    #@6f5
    aget v22, v22, v23

    #@6f7
    mul-int/lit8 v22, v22, 0x7

    #@6f9
    .line 754
    add-int v21, v21, v22

    #@6fb
    move/from16 v0, v21

    #@6fd
    int-to-long v0, v0

    #@6fe
    move-wide/from16 v22, v0

    #@700
    add-long v6, v6, v22

    #@702
    goto/16 :goto_7

    #@704
    .line 759
    :cond_3a
    move-object/from16 v0, p0

    #@706
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@708
    move-object/from16 v21, v0

    #@70a
    const/16 v22, 0x7

    #@70c
    aget-boolean v21, v21, v22

    #@70e
    if-eqz v21, :cond_33

    #@710
    .line 760
    const-wide/16 v22, 0x3

    #@712
    sub-long v22, v6, v22

    #@714
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@717
    move-result v21

    #@718
    add-int/lit8 v21, v21, -0x1

    #@71a
    move/from16 v0, v21

    #@71c
    int-to-long v0, v0

    #@71d
    move-wide/from16 v24, v0

    #@71f
    sub-long v22, v22, v24

    #@721
    move-object/from16 v0, p0

    #@723
    move-wide/from16 v1, v22

    #@725
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@728
    move-result v11

    #@729
    .line 761
    .restart local v11    # "skew":I
    add-int v21, v11, v4

    #@72b
    move/from16 v0, v21

    #@72d
    int-to-long v0, v0

    #@72e
    move-wide/from16 v22, v0

    #@730
    const-wide/16 v24, 0x3

    #@732
    sub-long v24, v6, v24

    #@734
    sub-long v22, v22, v24

    #@736
    move-object/from16 v0, p0

    #@738
    move-wide/from16 v1, v22

    #@73a
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@73d
    move-result v21

    #@73e
    sub-int v21, v21, v11

    #@740
    move/from16 v0, v21

    #@742
    int-to-long v0, v0

    #@743
    move-wide/from16 v22, v0

    #@745
    move-object/from16 v0, p0

    #@747
    move-wide/from16 v1, v22

    #@749
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@74c
    move-result v21

    #@74d
    move/from16 v0, v21

    #@74f
    int-to-long v0, v0

    #@750
    move-wide/from16 v22, v0

    #@752
    add-long v6, v6, v22

    #@754
    goto/16 :goto_7

    #@756
    .line 765
    .end local v4    # "dayOfWeek":I
    .end local v5    # "leapYear":Z
    .end local v6    # "days":J
    .end local v10    # "month":I
    .end local v11    # "skew":I
    :cond_3b
    move-object/from16 v0, p0

    #@758
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@75a
    move-object/from16 v21, v0

    #@75c
    const/16 v22, 0x3

    #@75e
    aget-boolean v21, v21, v22

    #@760
    if-eqz v21, :cond_3e

    #@762
    .line 766
    move-object/from16 v0, p0

    #@764
    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@766
    move/from16 v21, v0

    #@768
    const/16 v22, 0x6

    #@76a
    move/from16 v0, v21

    #@76c
    move/from16 v1, v22

    #@76e
    if-eq v0, v1, :cond_3d

    #@770
    const/16 v18, 0x1

    #@772
    .line 767
    .local v18, "useWeekYear":Z
    :goto_9
    if-eqz v18, :cond_3c

    #@774
    move-object/from16 v0, p0

    #@776
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@778
    move-object/from16 v21, v0

    #@77a
    const/16 v22, 0x6

    #@77c
    aget-boolean v21, v21, v22

    #@77e
    if-eqz v21, :cond_3c

    #@780
    .line 768
    move-object/from16 v0, p0

    #@782
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@784
    move-object/from16 v21, v0

    #@786
    const/16 v22, 0x7

    #@788
    aget-boolean v18, v21, v22

    #@78a
    .line 770
    .end local v18    # "useWeekYear":Z
    :cond_3c
    move/from16 v0, v20

    #@78c
    int-to-long v0, v0

    #@78d
    move-wide/from16 v22, v0

    #@78f
    move-object/from16 v0, p0

    #@791
    move-wide/from16 v1, v22

    #@793
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    #@796
    move-result-wide v6

    #@797
    .line 771
    .restart local v6    # "days":J
    if-eqz v18, :cond_40

    #@799
    .line 773
    move-object/from16 v0, p0

    #@79b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@79d
    move-object/from16 v21, v0

    #@79f
    const/16 v22, 0x7

    #@7a1
    aget-boolean v21, v21, v22

    #@7a3
    if-eqz v21, :cond_3f

    #@7a5
    .line 774
    move-object/from16 v0, p0

    #@7a7
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@7a9
    move-object/from16 v21, v0

    #@7ab
    const/16 v22, 0x7

    #@7ad
    aget v21, v21, v22

    #@7af
    add-int/lit8 v4, v21, -0x1

    #@7b1
    .line 778
    .restart local v4    # "dayOfWeek":I
    :goto_a
    const-wide/16 v22, 0x3

    #@7b3
    sub-long v22, v6, v22

    #@7b5
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@7b8
    move-result v21

    #@7b9
    add-int/lit8 v21, v21, -0x1

    #@7bb
    move/from16 v0, v21

    #@7bd
    int-to-long v0, v0

    #@7be
    move-wide/from16 v24, v0

    #@7c0
    sub-long v22, v22, v24

    #@7c2
    move-object/from16 v0, p0

    #@7c4
    move-wide/from16 v1, v22

    #@7c6
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@7c9
    move-result v11

    #@7ca
    .line 779
    .restart local v11    # "skew":I
    move-object/from16 v0, p0

    #@7cc
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@7ce
    move-object/from16 v21, v0

    #@7d0
    const/16 v22, 0x3

    #@7d2
    aget v21, v21, v22

    #@7d4
    add-int/lit8 v21, v21, -0x1

    #@7d6
    mul-int/lit8 v21, v21, 0x7

    #@7d8
    .line 780
    add-int v22, v11, v4

    #@7da
    move/from16 v0, v22

    #@7dc
    int-to-long v0, v0

    #@7dd
    move-wide/from16 v22, v0

    #@7df
    const-wide/16 v24, 0x3

    #@7e1
    sub-long v24, v6, v24

    #@7e3
    sub-long v22, v22, v24

    #@7e5
    move-object/from16 v0, p0

    #@7e7
    move-wide/from16 v1, v22

    #@7e9
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@7ec
    move-result v22

    #@7ed
    .line 779
    add-int v21, v21, v22

    #@7ef
    sub-int v21, v21, v11

    #@7f1
    move/from16 v0, v21

    #@7f3
    int-to-long v0, v0

    #@7f4
    move-wide/from16 v22, v0

    #@7f6
    add-long v6, v6, v22

    #@7f8
    .line 781
    rsub-int/lit8 v21, v11, 0x7

    #@7fa
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@7fd
    move-result v22

    #@7fe
    move/from16 v0, v21

    #@800
    move/from16 v1, v22

    #@802
    if-ge v0, v1, :cond_33

    #@804
    .line 782
    const-wide/16 v22, 0x7

    #@806
    add-long v6, v6, v22

    #@808
    goto/16 :goto_7

    #@80a
    .line 766
    .end local v4    # "dayOfWeek":I
    .end local v6    # "days":J
    .end local v11    # "skew":I
    :cond_3d
    const/16 v18, 0x0

    #@80c
    .restart local v18    # "useWeekYear":Z
    goto/16 :goto_9

    #@80e
    .line 765
    .end local v18    # "useWeekYear":Z
    :cond_3e
    const/16 v18, 0x0

    #@810
    .restart local v18    # "useWeekYear":Z
    goto/16 :goto_9

    #@812
    .line 776
    .end local v18    # "useWeekYear":Z
    .restart local v6    # "days":J
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@815
    move-result v21

    #@816
    add-int/lit8 v4, v21, -0x1

    #@818
    .restart local v4    # "dayOfWeek":I
    goto :goto_a

    #@819
    .line 784
    .end local v4    # "dayOfWeek":I
    :cond_40
    move-object/from16 v0, p0

    #@81b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@81d
    move-object/from16 v21, v0

    #@81f
    const/16 v22, 0x6

    #@821
    aget-boolean v21, v21, v22

    #@823
    if-eqz v21, :cond_44

    #@825
    .line 785
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    #@828
    move-result v21

    #@829
    if-nez v21, :cond_43

    #@82b
    .line 786
    move-object/from16 v0, p0

    #@82d
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@82f
    move-object/from16 v21, v0

    #@831
    const/16 v22, 0x6

    #@833
    aget v21, v21, v22

    #@835
    const/16 v22, 0x1

    #@837
    move/from16 v0, v21

    #@839
    move/from16 v1, v22

    #@83b
    if-lt v0, v1, :cond_41

    #@83d
    move-object/from16 v0, p0

    #@83f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@841
    move-object/from16 v21, v0

    #@843
    const/16 v22, 0x6

    #@845
    aget v22, v21, v22

    #@847
    move-object/from16 v0, p0

    #@849
    move/from16 v1, v20

    #@84b
    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    #@84e
    move-result v21

    #@84f
    if-eqz v21, :cond_42

    #@851
    const/16 v21, 0x1

    #@853
    :goto_b
    move/from16 v0, v21

    #@855
    add-int/lit16 v0, v0, 0x16d

    #@857
    move/from16 v21, v0

    #@859
    move/from16 v0, v22

    #@85b
    move/from16 v1, v21

    #@85d
    if-le v0, v1, :cond_43

    #@85f
    .line 788
    :cond_41
    new-instance v21, Ljava/lang/IllegalArgumentException;

    #@861
    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@864
    throw v21

    #@865
    .line 787
    :cond_42
    const/16 v21, 0x0

    #@867
    goto :goto_b

    #@868
    .line 790
    :cond_43
    move-object/from16 v0, p0

    #@86a
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@86c
    move-object/from16 v21, v0

    #@86e
    const/16 v22, 0x6

    #@870
    aget v21, v21, v22

    #@872
    add-int/lit8 v21, v21, -0x1

    #@874
    move/from16 v0, v21

    #@876
    int-to-long v0, v0

    #@877
    move-wide/from16 v22, v0

    #@879
    add-long v6, v6, v22

    #@87b
    goto/16 :goto_7

    #@87d
    .line 791
    :cond_44
    move-object/from16 v0, p0

    #@87f
    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    #@881
    move-object/from16 v21, v0

    #@883
    const/16 v22, 0x7

    #@885
    aget-boolean v21, v21, v22

    #@887
    if-eqz v21, :cond_33

    #@889
    .line 792
    move-object/from16 v0, p0

    #@88b
    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    #@88d
    move-object/from16 v21, v0

    #@88f
    const/16 v22, 0x7

    #@891
    aget v21, v21, v22

    #@893
    add-int/lit8 v21, v21, -0x1

    #@895
    move/from16 v0, v21

    #@897
    int-to-long v0, v0

    #@898
    move-wide/from16 v22, v0

    #@89a
    const-wide/16 v24, 0x3

    #@89c
    sub-long v24, v6, v24

    #@89e
    sub-long v22, v22, v24

    #@8a0
    move-object/from16 v0, p0

    #@8a2
    move-wide/from16 v1, v22

    #@8a4
    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@8a7
    move-result v21

    #@8a8
    move/from16 v0, v21

    #@8aa
    int-to-long v0, v0

    #@8ab
    move-wide/from16 v22, v0

    #@8ad
    add-long v6, v6, v22

    #@8af
    goto/16 :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 900
    instance-of v2, p1, Ljava/util/GregorianCalendar;

    #@4
    if-nez v2, :cond_0

    #@6
    .line 901
    return v1

    #@7
    .line 903
    :cond_0
    if-ne p1, p0, :cond_1

    #@9
    .line 904
    return v0

    #@a
    .line 906
    :cond_1
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_3

    #@10
    .line 907
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@12
    check-cast p1, Ljava/util/GregorianCalendar;

    #@14
    .end local p1    # "object":Ljava/lang/Object;
    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@16
    cmp-long v2, v2, v4

    #@18
    if-nez v2, :cond_2

    #@1a
    .line 906
    :goto_0
    return v0

    #@1b
    :cond_2
    move v0, v1

    #@1c
    .line 907
    goto :goto_0

    #@1d
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    move v0, v1

    #@1e
    .line 906
    goto :goto_0
.end method

.method public getActualMaximum(I)I
    .locals 11
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v7, 0x5

    #@3
    const/4 v8, 0x1

    #@4
    .line 912
    sget-object v5, Ljava/util/GregorianCalendar;->maximums:[I

    #@6
    aget v4, v5, p1

    #@8
    .local v4, "value":I
    sget-object v5, Ljava/util/GregorianCalendar;->leastMaximums:[I

    #@a
    aget v5, v5, p1

    #@c
    if-ne v4, v5, :cond_0

    #@e
    .line 913
    return v4

    #@f
    .line 916
    :cond_0
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    #@12
    .line 917
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    #@14
    .line 918
    .local v2, "orgTime":J
    const/4 v1, 0x0

    #@15
    .line 919
    .local v1, "result":I
    packed-switch p1, :pswitch_data_0

    #@18
    .line 960
    :cond_1
    :goto_0
    :pswitch_0
    iput-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    #@1a
    .line 961
    return v1

    #@1b
    .line 921
    :pswitch_1
    const/16 v5, 0x1f

    #@1d
    invoke-virtual {p0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    #@20
    .line 922
    const/4 v5, 0x2

    #@21
    const/16 v6, 0xb

    #@23
    invoke-virtual {p0, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    #@26
    .line 923
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    #@29
    move-result v1

    #@2a
    .line 924
    if-ne v1, v8, :cond_2

    #@2c
    .line 925
    const/16 v5, 0x18

    #@2e
    invoke-virtual {p0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    #@31
    .line 926
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    #@34
    move-result v1

    #@35
    .line 928
    :cond_2
    iput-boolean v9, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    #@37
    goto :goto_0

    #@38
    .line 931
    :pswitch_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@3b
    move-result v5

    #@3c
    invoke-virtual {p0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    #@3f
    .line 932
    const/4 v5, 0x4

    #@40
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    #@43
    move-result v1

    #@44
    .line 933
    iput-boolean v9, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    #@46
    goto :goto_0

    #@47
    .line 936
    :pswitch_3
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@4a
    move-result v5

    #@4b
    return v5

    #@4c
    .line 938
    :pswitch_4
    iget-object v5, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@4e
    aget v5, v5, v8

    #@50
    invoke-direct {p0, v5}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    #@53
    move-result v5

    #@54
    return v5

    #@55
    .line 940
    :pswitch_5
    const/16 v5, 0x8

    #@57
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    #@5a
    move-result v5

    #@5b
    .line 941
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@5e
    move-result v6

    #@5f
    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    #@62
    move-result v7

    #@63
    sub-int/2addr v6, v7

    #@64
    div-int/lit8 v6, v6, 0x7

    #@66
    .line 940
    add-int v1, v5, v6

    #@68
    .line 942
    goto :goto_0

    #@69
    .line 944
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Ljava/util/GregorianCalendar;

    #@6f
    .line 945
    .local v0, "clone":Ljava/util/GregorianCalendar;
    invoke-virtual {p0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    #@72
    move-result v5

    #@73
    if-ne v5, v8, :cond_3

    #@75
    .line 946
    const-wide v6, 0x7fffffffffffffffL

    #@7a
    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@7d
    .line 950
    :goto_1
    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    #@80
    move-result v1

    #@81
    .line 951
    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    #@84
    move-result v5

    #@85
    invoke-virtual {v0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    #@88
    .line 952
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    #@8b
    move-result v5

    #@8c
    if-eqz v5, :cond_1

    #@8e
    .line 953
    add-int/lit8 v1, v1, -0x1

    #@90
    goto :goto_0

    #@91
    .line 948
    :cond_3
    const-wide/high16 v6, -0x8000000000000000L

    #@93
    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@96
    goto :goto_1

    #@97
    .line 957
    .end local v0    # "clone":Ljava/util/GregorianCalendar;
    :pswitch_7
    const/16 v5, 0x10

    #@99
    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    #@9c
    move-result v1

    #@9d
    goto/16 :goto_0

    #@9f
    .line 919
    nop

    #@a0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 975
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getGreatestMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 988
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 998
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
    .line 1013
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@2
    const-wide v6, -0xb1d069b5400L

    #@7
    cmp-long v1, v4, v6

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1014
    const/4 v1, 0x3

    #@c
    if-ne p1, v1, :cond_0

    #@e
    .line 1015
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    #@10
    .line 1016
    .local v2, "currentTimeInMillis":J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@12
    invoke-virtual {p0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@15
    .line 1017
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    #@18
    move-result v0

    #@19
    .line 1018
    .local v0, "actual":I
    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    #@1c
    .line 1019
    return v0

    #@1d
    .line 1021
    .end local v0    # "actual":I
    .end local v2    # "currentTimeInMillis":J
    :cond_0
    sget-object v1, Ljava/util/GregorianCalendar;->leastMaximums:[I

    #@1f
    aget v1, v1, p1

    #@21
    return v1
.end method

.method public getMaximum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1034
    sget-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1046
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 1094
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    #@3
    move-result v0

    #@4
    .line 1095
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@6
    const/16 v1, 0x20

    #@8
    ushr-long/2addr v2, v1

    #@9
    long-to-int v1, v2

    #@a
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@c
    long-to-int v2, v2

    #@d
    xor-int/2addr v1, v2

    #@e
    .line 1094
    add-int/2addr v0, v1

    #@f
    return v0
.end method

.method public isLeapYear(I)Z
    .locals 3
    .param p1, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1102
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@4
    if-le p1, v2, :cond_2

    #@6
    .line 1103
    rem-int/lit8 v2, p1, 0x4

    #@8
    if-nez v2, :cond_1

    #@a
    rem-int/lit8 v2, p1, 0x64

    #@c
    if-nez v2, :cond_0

    #@e
    rem-int/lit16 v2, p1, 0x190

    #@10
    if-nez v2, :cond_1

    #@12
    :cond_0
    :goto_0
    return v0

    #@13
    :cond_1
    move v0, v1

    #@14
    goto :goto_0

    #@15
    .line 1106
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    #@17
    if-nez v2, :cond_3

    #@19
    :goto_1
    return v0

    #@1a
    :cond_3
    move v0, v1

    #@1b
    goto :goto_1
.end method

.method public roll(II)V
    .locals 12
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v9, 0x7

    #@1
    const/4 v11, 0x5

    #@2
    const/4 v10, 0x1

    #@3
    .line 1145
    if-nez p2, :cond_0

    #@5
    .line 1146
    return-void

    #@6
    .line 1148
    :cond_0
    if-ltz p1, :cond_1

    #@8
    const/16 v8, 0xf

    #@a
    if-lt p1, v8, :cond_2

    #@c
    .line 1149
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@e
    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@11
    throw v8

    #@12
    .line 1152
    :cond_2
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    #@15
    .line 1154
    const/4 v3, -0x1

    #@16
    .line 1155
    .local v3, "max":I
    packed-switch p1, :pswitch_data_0

    #@19
    .line 1238
    :cond_3
    :goto_0
    const/4 v8, -0x1

    #@1a
    if-eq v3, v8, :cond_4

    #@1c
    .line 1239
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@1e
    aget v8, v8, p1

    #@20
    add-int/lit8 v8, v8, -0x1

    #@22
    add-int/2addr v8, p2

    #@23
    invoke-direct {p0, v8, v3}, Ljava/util/GregorianCalendar;->mod(II)I

    #@26
    move-result v8

    #@27
    add-int/lit8 v8, v8, 0x1

    #@29
    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    #@2c
    .line 1241
    :cond_4
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    #@2f
    .line 1144
    return-void

    #@30
    .line 1157
    :pswitch_0
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    #@32
    aget v3, v8, p1

    #@34
    goto :goto_0

    #@35
    .line 1160
    :pswitch_1
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@37
    aget v8, v8, v10

    #@39
    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    #@3c
    move-result v2

    #@3d
    .line 1161
    .local v2, "days":I
    const/4 v1, 0x6

    #@3e
    .line 1162
    .local v1, "day":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@40
    aget v8, v8, v9

    #@42
    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@44
    aget v9, v9, v1

    #@46
    sub-int/2addr v8, v9

    #@47
    .line 1163
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@4a
    move-result v9

    #@4b
    add-int/lit8 v9, v9, -0x1

    #@4d
    .line 1162
    sub-int/2addr v8, v9

    #@4e
    int-to-long v8, v8

    #@4f
    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@52
    move-result v5

    #@53
    .line 1164
    .local v5, "mod":I
    add-int/lit8 v8, v2, -0x1

    #@55
    add-int/2addr v8, v5

    #@56
    div-int/lit8 v8, v8, 0x7

    #@58
    add-int/lit8 v4, v8, 0x1

    #@5a
    .line 1165
    .local v4, "maxWeeks":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@5c
    aget v8, v8, p1

    #@5e
    add-int/lit8 v8, v8, -0x1

    #@60
    add-int/2addr v8, p2

    #@61
    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    #@64
    move-result v8

    #@65
    add-int/lit8 v6, v8, 0x1

    #@67
    .line 1166
    .local v6, "newWeek":I
    if-ne v6, v4, :cond_6

    #@69
    .line 1167
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@6b
    aget v8, v8, p1

    #@6d
    sub-int v8, v6, v8

    #@6f
    mul-int/lit8 v0, v8, 0x7

    #@71
    .line 1168
    .local v0, "addDays":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@73
    aget v8, v8, v1

    #@75
    if-le v8, v0, :cond_5

    #@77
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@79
    aget v8, v8, v1

    #@7b
    add-int/2addr v8, v0

    #@7c
    if-le v8, v2, :cond_5

    #@7e
    .line 1169
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    #@81
    goto :goto_0

    #@82
    .line 1171
    :cond_5
    add-int/lit8 v8, v6, -0x1

    #@84
    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    #@87
    goto :goto_0

    #@88
    .line 1173
    .end local v0    # "addDays":I
    :cond_6
    if-ne v6, v10, :cond_8

    #@8a
    .line 1174
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@8c
    aget v8, v8, v1

    #@8e
    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@90
    aget v9, v9, v1

    #@92
    add-int/lit8 v9, v9, -0x1

    #@94
    div-int/lit8 v9, v9, 0x7

    #@96
    mul-int/lit8 v9, v9, 0x7

    #@98
    sub-int/2addr v8, v9

    #@99
    add-int/lit8 v8, v8, -0x1

    #@9b
    add-int/2addr v8, v5

    #@9c
    div-int/lit8 v8, v8, 0x7

    #@9e
    add-int/lit8 v7, v8, 0x1

    #@a0
    .line 1175
    .local v7, "week":I
    if-le v7, v10, :cond_7

    #@a2
    .line 1176
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    #@a5
    goto/16 :goto_0

    #@a7
    .line 1178
    :cond_7
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    #@aa
    goto/16 :goto_0

    #@ac
    .line 1181
    .end local v7    # "week":I
    :cond_8
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    #@af
    goto/16 :goto_0

    #@b1
    .line 1185
    .end local v1    # "day":I
    .end local v2    # "days":I
    .end local v4    # "maxWeeks":I
    .end local v5    # "mod":I
    .end local v6    # "newWeek":I
    :pswitch_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@b4
    move-result v2

    #@b5
    .line 1186
    .restart local v2    # "days":I
    const/4 v1, 0x5

    #@b6
    .line 1187
    .restart local v1    # "day":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@b8
    aget v8, v8, v9

    #@ba
    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@bc
    aget v9, v9, v1

    #@be
    sub-int/2addr v8, v9

    #@bf
    .line 1188
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@c2
    move-result v9

    #@c3
    add-int/lit8 v9, v9, -0x1

    #@c5
    .line 1187
    sub-int/2addr v8, v9

    #@c6
    int-to-long v8, v8

    #@c7
    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    #@ca
    move-result v5

    #@cb
    .line 1189
    .restart local v5    # "mod":I
    add-int/lit8 v8, v2, -0x1

    #@cd
    add-int/2addr v8, v5

    #@ce
    div-int/lit8 v8, v8, 0x7

    #@d0
    add-int/lit8 v4, v8, 0x1

    #@d2
    .line 1190
    .restart local v4    # "maxWeeks":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@d4
    aget v8, v8, p1

    #@d6
    add-int/lit8 v8, v8, -0x1

    #@d8
    add-int/2addr v8, p2

    #@d9
    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    #@dc
    move-result v8

    #@dd
    add-int/lit8 v6, v8, 0x1

    #@df
    .line 1191
    .restart local v6    # "newWeek":I
    if-ne v6, v4, :cond_a

    #@e1
    .line 1192
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@e3
    aget v8, v8, v1

    #@e5
    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@e7
    aget v9, v9, p1

    #@e9
    sub-int v9, v6, v9

    #@eb
    mul-int/lit8 v9, v9, 0x7

    #@ed
    add-int/2addr v8, v9

    #@ee
    if-le v8, v2, :cond_9

    #@f0
    .line 1193
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    #@f3
    goto/16 :goto_0

    #@f5
    .line 1195
    :cond_9
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    #@f8
    goto/16 :goto_0

    #@fa
    .line 1197
    :cond_a
    if-ne v6, v10, :cond_c

    #@fc
    .line 1198
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@fe
    aget v8, v8, v1

    #@100
    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@102
    aget v9, v9, v1

    #@104
    add-int/lit8 v9, v9, -0x1

    #@106
    div-int/lit8 v9, v9, 0x7

    #@108
    mul-int/lit8 v9, v9, 0x7

    #@10a
    sub-int/2addr v8, v9

    #@10b
    add-int/lit8 v8, v8, -0x1

    #@10d
    add-int/2addr v8, v5

    #@10e
    div-int/lit8 v8, v8, 0x7

    #@110
    add-int/lit8 v7, v8, 0x1

    #@112
    .line 1199
    .restart local v7    # "week":I
    if-le v7, v10, :cond_b

    #@114
    .line 1200
    invoke-virtual {p0, v1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    #@117
    goto/16 :goto_0

    #@119
    .line 1202
    :cond_b
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    #@11c
    goto/16 :goto_0

    #@11e
    .line 1205
    .end local v7    # "week":I
    :cond_c
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    #@121
    goto/16 :goto_0

    #@123
    .line 1209
    .end local v1    # "day":I
    .end local v2    # "days":I
    .end local v4    # "maxWeeks":I
    .end local v5    # "mod":I
    .end local v6    # "newWeek":I
    :pswitch_3
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@126
    move-result v3

    #@127
    goto/16 :goto_0

    #@129
    .line 1212
    :pswitch_4
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@12b
    aget v8, v8, v10

    #@12d
    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    #@130
    move-result v3

    #@131
    goto/16 :goto_0

    #@133
    .line 1215
    :pswitch_5
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    #@135
    aget v3, v8, p1

    #@137
    .line 1216
    const/4 v8, 0x4

    #@138
    iput v8, p0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    #@13a
    goto/16 :goto_0

    #@13c
    .line 1219
    :pswitch_6
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@13e
    aget v8, v8, v11

    #@140
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@143
    move-result v9

    #@144
    iget-object v10, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@146
    aget v10, v10, v11

    #@148
    sub-int/2addr v9, v10

    #@149
    div-int/lit8 v9, v9, 0x7

    #@14b
    mul-int/lit8 v9, v9, 0x7

    #@14d
    add-int/2addr v8, v9

    #@14e
    add-int/lit8 v8, v8, -0x1

    #@150
    div-int/lit8 v8, v8, 0x7

    #@152
    add-int/lit8 v3, v8, 0x1

    #@154
    .line 1220
    goto/16 :goto_0

    #@156
    .line 1230
    :pswitch_7
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@158
    aget v8, v8, p1

    #@15a
    add-int/2addr v8, p2

    #@15b
    sget-object v9, Ljava/util/GregorianCalendar;->maximums:[I

    #@15d
    aget v9, v9, p1

    #@15f
    add-int/lit8 v9, v9, 0x1

    #@161
    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod(II)I

    #@164
    move-result v8

    #@165
    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    #@168
    .line 1231
    const/4 v8, 0x2

    #@169
    if-ne p1, v8, :cond_d

    #@16b
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    #@16d
    aget v8, v8, v11

    #@16f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@172
    move-result v9

    #@173
    if-le v8, v9, :cond_d

    #@175
    .line 1232
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    #@178
    move-result v8

    #@179
    invoke-virtual {p0, v11, v8}, Ljava/util/GregorianCalendar;->set(II)V

    #@17c
    goto/16 :goto_0

    #@17e
    .line 1233
    :cond_d
    const/16 v8, 0x9

    #@180
    if-ne p1, v8, :cond_3

    #@182
    .line 1234
    const/16 v8, 0xa

    #@184
    iput v8, p0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    #@186
    goto/16 :goto_0

    #@188
    .line 1155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public roll(IZ)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "increment"    # Z

    #@0
    .prologue
    .line 1261
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    #@6
    .line 1260
    return-void

    #@7
    .line 1261
    :cond_0
    const/4 v0, -0x1

    #@8
    goto :goto_0
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 5
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1268
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@4
    move-result-wide v2

    #@5
    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    #@7
    .line 1269
    new-instance v0, Ljava/util/GregorianCalendar;

    #@9
    const-string/jumbo v2, "GMT"

    #@c
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@f
    move-result-object v2

    #@10
    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    #@13
    .line 1270
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@16
    .line 1271
    const/4 v2, 0x1

    #@17
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@1a
    move-result v2

    #@1b
    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@1d
    .line 1272
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    #@20
    move-result v2

    #@21
    if-nez v2, :cond_0

    #@23
    .line 1273
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@25
    rsub-int/lit8 v2, v2, 0x1

    #@27
    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@29
    .line 1275
    :cond_0
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@2b
    add-int/lit16 v2, v2, -0x7d0

    #@2d
    div-int/lit16 v2, v2, 0x190

    #@2f
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    #@32
    move-result v3

    #@33
    add-int/2addr v2, v3

    #@34
    .line 1276
    iget v3, p0, Ljava/util/GregorianCalendar;->changeYear:I

    #@36
    add-int/lit16 v3, v3, -0x7d0

    #@38
    div-int/lit8 v3, v3, 0x64

    #@3a
    .line 1275
    sub-int/2addr v2, v3

    #@3b
    iput v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@3d
    .line 1277
    const/4 v2, 0x6

    #@3e
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    #@41
    move-result v1

    #@42
    .line 1278
    .local v1, "dayOfYear":I
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@44
    if-ge v1, v2, :cond_1

    #@46
    .line 1279
    add-int/lit8 v2, v1, -0x1

    #@48
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@4a
    .line 1280
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@4c
    sub-int/2addr v2, v1

    #@4d
    add-int/lit8 v2, v2, 0x1

    #@4f
    iput v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@51
    .line 1267
    :goto_0
    return-void

    #@52
    .line 1282
    :cond_1
    iput v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    #@54
    .line 1283
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    #@56
    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    #@58
    goto :goto_0
.end method
