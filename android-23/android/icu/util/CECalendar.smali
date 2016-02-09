.class abstract Landroid/icu/util/CECalendar;
.super Landroid/icu/util/Calendar;
.source "CECalendar.java"


# static fields
.field private static final LIMITS:[[I

.field private static final serialVersionUID:J = -0xddf1b4470f5acbfL


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const v6, -0x4c4b40

    #@4
    const v5, 0x4c4b40

    #@7
    const/4 v4, 0x1

    #@8
    const/4 v3, 0x0

    #@9
    .line 21
    const/16 v0, 0x16

    #@b
    new-array v0, v0, [[I

    #@d
    .line 24
    filled-new-array {v3, v3, v4, v4}, [I

    #@10
    move-result-object v1

    #@11
    aput-object v1, v0, v3

    #@13
    .line 25
    filled-new-array {v4, v4, v5, v5}, [I

    #@16
    move-result-object v1

    #@17
    aput-object v1, v0, v4

    #@19
    .line 26
    const/16 v1, 0xc

    #@1b
    const/16 v2, 0xc

    #@1d
    filled-new-array {v3, v3, v1, v2}, [I

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x2

    #@22
    aput-object v1, v0, v2

    #@24
    .line 27
    const/16 v1, 0x34

    #@26
    const/16 v2, 0x35

    #@28
    filled-new-array {v4, v4, v1, v2}, [I

    #@2b
    move-result-object v1

    #@2c
    const/4 v2, 0x3

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 28
    new-array v1, v3, [I

    #@31
    const/4 v2, 0x4

    #@32
    aput-object v1, v0, v2

    #@34
    .line 29
    const/16 v1, 0x1e

    #@36
    filled-new-array {v4, v4, v7, v1}, [I

    #@39
    move-result-object v1

    #@3a
    aput-object v1, v0, v7

    #@3c
    .line 30
    const/16 v1, 0x16d

    #@3e
    const/16 v2, 0x16e

    #@40
    filled-new-array {v4, v4, v1, v2}, [I

    #@43
    move-result-object v1

    #@44
    const/4 v2, 0x6

    #@45
    aput-object v1, v0, v2

    #@47
    .line 31
    new-array v1, v3, [I

    #@49
    const/4 v2, 0x7

    #@4a
    aput-object v1, v0, v2

    #@4c
    .line 32
    const/4 v1, -0x1

    #@4d
    const/4 v2, -0x1

    #@4e
    filled-new-array {v1, v2, v4, v7}, [I

    #@51
    move-result-object v1

    #@52
    const/16 v2, 0x8

    #@54
    aput-object v1, v0, v2

    #@56
    .line 33
    new-array v1, v3, [I

    #@58
    const/16 v2, 0x9

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 34
    new-array v1, v3, [I

    #@5e
    const/16 v2, 0xa

    #@60
    aput-object v1, v0, v2

    #@62
    .line 35
    new-array v1, v3, [I

    #@64
    const/16 v2, 0xb

    #@66
    aput-object v1, v0, v2

    #@68
    .line 36
    new-array v1, v3, [I

    #@6a
    const/16 v2, 0xc

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 37
    new-array v1, v3, [I

    #@70
    const/16 v2, 0xd

    #@72
    aput-object v1, v0, v2

    #@74
    .line 38
    new-array v1, v3, [I

    #@76
    const/16 v2, 0xe

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 39
    new-array v1, v3, [I

    #@7c
    const/16 v2, 0xf

    #@7e
    aput-object v1, v0, v2

    #@80
    .line 40
    new-array v1, v3, [I

    #@82
    const/16 v2, 0x10

    #@84
    aput-object v1, v0, v2

    #@86
    .line 41
    filled-new-array {v6, v6, v5, v5}, [I

    #@89
    move-result-object v1

    #@8a
    const/16 v2, 0x11

    #@8c
    aput-object v1, v0, v2

    #@8e
    .line 42
    new-array v1, v3, [I

    #@90
    const/16 v2, 0x12

    #@92
    aput-object v1, v0, v2

    #@94
    .line 43
    filled-new-array {v6, v6, v5, v5}, [I

    #@97
    move-result-object v1

    #@98
    const/16 v2, 0x13

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 44
    new-array v1, v3, [I

    #@9e
    const/16 v2, 0x14

    #@a0
    aput-object v1, v0, v2

    #@a2
    .line 45
    new-array v1, v3, [I

    #@a4
    const/16 v2, 0x15

    #@a6
    aput-object v1, v0, v2

    #@a8
    .line 21
    sput-object v0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    #@aa
    .line 17
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 57
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 56
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 128
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 129
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;->set(III)V

    #@10
    .line 127
    return-void
.end method

.method protected constructor <init>(IIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 158
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 159
    invoke-virtual/range {p0 .. p6}, Landroid/icu/util/CECalendar;->set(IIIIII)V

    #@10
    .line 156
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 67
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@9
    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CECalendar;->setTimeInMillis(J)V

    #@a
    .line 111
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CECalendar;->setTimeInMillis(J)V

    #@a
    .line 98
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 87
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 86
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 139
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 140
    invoke-virtual {p0, p1}, Landroid/icu/util/CECalendar;->setTime(Ljava/util/Date;)V

    #@10
    .line 138
    return-void
.end method

.method protected constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 77
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 76
    return-void
.end method

.method public static ceToJD(JIII)I
    .locals 4
    .param p0, "year"    # J
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "jdEpochOffset"    # I

    #@0
    .prologue
    .line 238
    if-ltz p2, :cond_0

    #@2
    .line 239
    div-int/lit8 v0, p2, 0xd

    #@4
    int-to-long v0, v0

    #@5
    add-long/2addr p0, v0

    #@6
    .line 240
    rem-int/lit8 p2, p2, 0xd

    #@8
    .line 247
    :goto_0
    int-to-long v0, p4

    #@9
    .line 248
    const-wide/16 v2, 0x16d

    #@b
    mul-long/2addr v2, p0

    #@c
    .line 247
    add-long/2addr v0, v2

    #@d
    .line 249
    const-wide/16 v2, 0x4

    #@f
    invoke-static {p0, p1, v2, v3}, Landroid/icu/util/CECalendar;->floorDivide(JJ)J

    #@12
    move-result-wide v2

    #@13
    .line 247
    add-long/2addr v0, v2

    #@14
    .line 250
    mul-int/lit8 v2, p2, 0x1e

    #@16
    int-to-long v2, v2

    #@17
    .line 247
    add-long/2addr v0, v2

    #@18
    .line 251
    int-to-long v2, p3

    #@19
    .line 247
    add-long/2addr v0, v2

    #@1a
    .line 251
    const-wide/16 v2, 0x1

    #@1c
    .line 246
    sub-long/2addr v0, v2

    #@1d
    long-to-int v0, v0

    #@1e
    return v0

    #@1f
    .line 242
    :cond_0
    add-int/lit8 p2, p2, 0x1

    #@21
    .line 243
    div-int/lit8 v0, p2, 0xd

    #@23
    add-int/lit8 v0, v0, -0x1

    #@25
    int-to-long v0, v0

    #@26
    add-long/2addr p0, v0

    #@27
    .line 244
    rem-int/lit8 v0, p2, 0xd

    #@29
    add-int/lit8 p2, v0, 0xc

    #@2b
    goto :goto_0
.end method

.method public static jdToCE(II[I)V
    .locals 8
    .param p0, "julianDay"    # I
    .param p1, "jdEpochOffset"    # I
    .param p2, "fields"    # [I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 260
    new-array v2, v7, [I

    #@4
    .line 262
    .local v2, "r4":[I
    sub-int v3, p0, p1

    #@6
    const/16 v4, 0x5b5

    #@8
    invoke-static {v3, v4, v2}, Landroid/icu/util/CECalendar;->floorDivide(II[I)I

    #@b
    move-result v0

    #@c
    .line 265
    .local v0, "c4":I
    mul-int/lit8 v3, v0, 0x4

    #@e
    aget v4, v2, v6

    #@10
    div-int/lit16 v4, v4, 0x16d

    #@12
    aget v5, v2, v6

    #@14
    div-int/lit16 v5, v5, 0x5b4

    #@16
    sub-int/2addr v4, v5

    #@17
    add-int/2addr v3, v4

    #@18
    aput v3, p2, v6

    #@1a
    .line 267
    aget v3, v2, v6

    #@1c
    const/16 v4, 0x5b4

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    const/16 v1, 0x16d

    #@22
    .line 270
    .local v1, "doy":I
    :goto_0
    div-int/lit8 v3, v1, 0x1e

    #@24
    aput v3, p2, v7

    #@26
    .line 272
    rem-int/lit8 v3, v1, 0x1e

    #@28
    add-int/lit8 v3, v3, 0x1

    #@2a
    const/4 v4, 0x2

    #@2b
    aput v3, p2, v4

    #@2d
    .line 258
    return-void

    #@2e
    .line 267
    .end local v1    # "doy":I
    :cond_0
    aget v3, v2, v6

    #@30
    rem-int/lit16 v1, v3, 0x16d

    #@32
    .restart local v1    # "doy":I
    goto :goto_0
.end method


# virtual methods
.method protected abstract getJDEpochOffset()I
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 4
    .param p1, "eyear"    # I
    .param p2, "emonth"    # I
    .param p3, "useMonth"    # Z

    #@0
    .prologue
    .line 179
    int-to-long v0, p1

    #@1
    invoke-virtual {p0}, Landroid/icu/util/CECalendar;->getJDEpochOffset()I

    #@4
    move-result v2

    #@5
    const/4 v3, 0x0

    #@6
    invoke-static {v0, v1, p2, v3, v2}, Landroid/icu/util/CECalendar;->ceToJD(JIII)I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    .line 186
    sget-object v0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    aget v0, v0, p2

    #@6
    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 1
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    .line 206
    add-int/lit8 v0, p2, 0x1

    #@2
    rem-int/lit8 v0, v0, 0xd

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 209
    const/16 v0, 0x1e

    #@8
    return v0

    #@9
    .line 214
    :cond_0
    rem-int/lit8 v0, p1, 0x4

    #@b
    div-int/lit8 v0, v0, 0x3

    #@d
    add-int/lit8 v0, v0, 0x5

    #@f
    return v0
.end method
