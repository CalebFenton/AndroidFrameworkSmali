.class public Landroid/icu/util/PersianCalendar;
.super Landroid/icu/util/Calendar;
.source "PersianCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I

.field private static final PERSIAN_EPOCH:I = 0x1dbaa0

.field private static final serialVersionUID:J = -0x5d5c320ee73c81dbL


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const v7, -0x4c4b40

    #@3
    const/4 v6, 0x1

    #@4
    const/16 v4, 0x1e

    #@6
    const/16 v3, 0x1f

    #@8
    const/4 v5, 0x0

    #@9
    .line 73
    const/16 v0, 0xc

    #@b
    new-array v0, v0, [[I

    #@d
    .line 75
    filled-new-array {v3, v3, v5}, [I

    #@10
    move-result-object v1

    #@11
    aput-object v1, v0, v5

    #@13
    .line 76
    filled-new-array {v3, v3, v3}, [I

    #@16
    move-result-object v1

    #@17
    aput-object v1, v0, v6

    #@19
    .line 77
    const/16 v1, 0x3e

    #@1b
    filled-new-array {v3, v3, v1}, [I

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x2

    #@20
    aput-object v1, v0, v2

    #@22
    .line 78
    const/16 v1, 0x5d

    #@24
    filled-new-array {v3, v3, v1}, [I

    #@27
    move-result-object v1

    #@28
    const/4 v2, 0x3

    #@29
    aput-object v1, v0, v2

    #@2b
    .line 79
    const/16 v1, 0x7c

    #@2d
    filled-new-array {v3, v3, v1}, [I

    #@30
    move-result-object v1

    #@31
    const/4 v2, 0x4

    #@32
    aput-object v1, v0, v2

    #@34
    .line 80
    const/16 v1, 0x9b

    #@36
    filled-new-array {v3, v3, v1}, [I

    #@39
    move-result-object v1

    #@3a
    const/4 v2, 0x5

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 81
    const/16 v1, 0xba

    #@3f
    filled-new-array {v4, v4, v1}, [I

    #@42
    move-result-object v1

    #@43
    const/4 v2, 0x6

    #@44
    aput-object v1, v0, v2

    #@46
    .line 82
    const/16 v1, 0xd8

    #@48
    filled-new-array {v4, v4, v1}, [I

    #@4b
    move-result-object v1

    #@4c
    const/4 v2, 0x7

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 83
    const/16 v1, 0xf6

    #@51
    filled-new-array {v4, v4, v1}, [I

    #@54
    move-result-object v1

    #@55
    const/16 v2, 0x8

    #@57
    aput-object v1, v0, v2

    #@59
    .line 84
    const/16 v1, 0x114

    #@5b
    filled-new-array {v4, v4, v1}, [I

    #@5e
    move-result-object v1

    #@5f
    const/16 v2, 0x9

    #@61
    aput-object v1, v0, v2

    #@63
    .line 85
    const/16 v1, 0x132

    #@65
    filled-new-array {v4, v4, v1}, [I

    #@68
    move-result-object v1

    #@69
    const/16 v2, 0xa

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 86
    const/16 v1, 0x1d

    #@6f
    const/16 v2, 0x150

    #@71
    filled-new-array {v1, v4, v2}, [I

    #@74
    move-result-object v1

    #@75
    const/16 v2, 0xb

    #@77
    aput-object v1, v0, v2

    #@79
    .line 73
    sput-object v0, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    #@7b
    .line 265
    const/16 v0, 0x16

    #@7d
    new-array v0, v0, [[I

    #@7f
    .line 268
    filled-new-array {v5, v5, v5, v5}, [I

    #@82
    move-result-object v1

    #@83
    aput-object v1, v0, v5

    #@85
    .line 269
    const v1, 0x4c4b40

    #@88
    const v2, 0x4c4b40

    #@8b
    filled-new-array {v7, v7, v1, v2}, [I

    #@8e
    move-result-object v1

    #@8f
    aput-object v1, v0, v6

    #@91
    .line 270
    const/16 v1, 0xb

    #@93
    const/16 v2, 0xb

    #@95
    filled-new-array {v5, v5, v1, v2}, [I

    #@98
    move-result-object v1

    #@99
    const/4 v2, 0x2

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 271
    const/16 v1, 0x34

    #@9e
    const/16 v2, 0x35

    #@a0
    filled-new-array {v6, v6, v1, v2}, [I

    #@a3
    move-result-object v1

    #@a4
    const/4 v2, 0x3

    #@a5
    aput-object v1, v0, v2

    #@a7
    .line 272
    new-array v1, v5, [I

    #@a9
    const/4 v2, 0x4

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 273
    const/16 v1, 0x1d

    #@ae
    filled-new-array {v6, v6, v1, v3}, [I

    #@b1
    move-result-object v1

    #@b2
    const/4 v2, 0x5

    #@b3
    aput-object v1, v0, v2

    #@b5
    .line 274
    const/16 v1, 0x16d

    #@b7
    const/16 v2, 0x16e

    #@b9
    filled-new-array {v6, v6, v1, v2}, [I

    #@bc
    move-result-object v1

    #@bd
    const/4 v2, 0x6

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 275
    new-array v1, v5, [I

    #@c2
    const/4 v2, 0x7

    #@c3
    aput-object v1, v0, v2

    #@c5
    .line 276
    const/4 v1, -0x1

    #@c6
    const/4 v2, -0x1

    #@c7
    const/4 v3, 0x5

    #@c8
    const/4 v4, 0x5

    #@c9
    filled-new-array {v1, v2, v3, v4}, [I

    #@cc
    move-result-object v1

    #@cd
    const/16 v2, 0x8

    #@cf
    aput-object v1, v0, v2

    #@d1
    .line 277
    new-array v1, v5, [I

    #@d3
    const/16 v2, 0x9

    #@d5
    aput-object v1, v0, v2

    #@d7
    .line 278
    new-array v1, v5, [I

    #@d9
    const/16 v2, 0xa

    #@db
    aput-object v1, v0, v2

    #@dd
    .line 279
    new-array v1, v5, [I

    #@df
    const/16 v2, 0xb

    #@e1
    aput-object v1, v0, v2

    #@e3
    .line 280
    new-array v1, v5, [I

    #@e5
    const/16 v2, 0xc

    #@e7
    aput-object v1, v0, v2

    #@e9
    .line 281
    new-array v1, v5, [I

    #@eb
    const/16 v2, 0xd

    #@ed
    aput-object v1, v0, v2

    #@ef
    .line 282
    new-array v1, v5, [I

    #@f1
    const/16 v2, 0xe

    #@f3
    aput-object v1, v0, v2

    #@f5
    .line 283
    new-array v1, v5, [I

    #@f7
    const/16 v2, 0xf

    #@f9
    aput-object v1, v0, v2

    #@fb
    .line 284
    new-array v1, v5, [I

    #@fd
    const/16 v2, 0x10

    #@ff
    aput-object v1, v0, v2

    #@101
    .line 285
    const v1, 0x4c4b40

    #@104
    const v2, 0x4c4b40

    #@107
    filled-new-array {v7, v7, v1, v2}, [I

    #@10a
    move-result-object v1

    #@10b
    const/16 v2, 0x11

    #@10d
    aput-object v1, v0, v2

    #@10f
    .line 286
    new-array v1, v5, [I

    #@111
    const/16 v2, 0x12

    #@113
    aput-object v1, v0, v2

    #@115
    .line 287
    const v1, 0x4c4b40

    #@118
    const v2, 0x4c4b40

    #@11b
    filled-new-array {v7, v7, v1, v2}, [I

    #@11e
    move-result-object v1

    #@11f
    const/16 v2, 0x13

    #@121
    aput-object v1, v0, v2

    #@123
    .line 288
    new-array v1, v5, [I

    #@125
    const/16 v2, 0x14

    #@127
    aput-object v1, v0, v2

    #@129
    .line 289
    new-array v1, v5, [I

    #@12b
    const/16 v2, 0x15

    #@12d
    aput-object v1, v0, v2

    #@12f
    .line 265
    sput-object v0, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    #@131
    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 109
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
    invoke-direct {p0, v0, v1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 107
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 223
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
    .line 224
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@11
    .line 225
    const/4 v0, 0x2

    #@12
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@15
    .line 226
    const/4 v0, 0x5

    #@16
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@19
    .line 221
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 252
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
    .line 253
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@11
    .line 254
    const/4 v0, 0x2

    #@12
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@15
    .line 255
    const/4 v0, 0x5

    #@16
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@19
    .line 256
    const/16 v0, 0xb

    #@1b
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@1e
    .line 257
    const/16 v0, 0xc

    #@20
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@23
    .line 258
    const/16 v0, 0xd

    #@25
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/PersianCalendar;->set(II)V

    #@28
    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 124
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@9
    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 187
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->setTimeInMillis(J)V

    #@a
    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 170
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->setTimeInMillis(J)V

    #@a
    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 154
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 152
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 203
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
    .line 204
    invoke-virtual {p0, p1}, Landroid/icu/util/PersianCalendar;->setTime(Ljava/util/Date;)V

    #@10
    .line 202
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 139
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 137
    return-void
.end method

.method private static final isLeapYear(I)Z
    .locals 5
    .param p0, "year"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 310
    new-array v0, v1, [I

    #@4
    .line 311
    .local v0, "remainder":[I
    mul-int/lit8 v3, p0, 0x19

    #@6
    add-int/lit8 v3, v3, 0xb

    #@8
    const/16 v4, 0x21

    #@a
    invoke-static {v3, v4, v0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    #@d
    .line 312
    aget v3, v0, v2

    #@f
    const/16 v4, 0x8

    #@11
    if-ge v3, v4, :cond_0

    #@13
    :goto_0
    return v1

    #@14
    :cond_0
    move v1, v2

    #@15
    goto :goto_0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 449
    const-string/jumbo v0, "persian"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 12
    .param p1, "julianDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 420
    const v8, 0x1dbaa0

    #@3
    sub-int v8, p1, v8

    #@5
    int-to-long v2, v8

    #@6
    .line 421
    .local v2, "daysSinceEpoch":J
    const-wide/16 v8, 0x21

    #@8
    mul-long/2addr v8, v2

    #@9
    const-wide/16 v10, 0x3

    #@b
    add-long/2addr v8, v10

    #@c
    const-wide/16 v10, 0x2f15

    #@e
    invoke-static {v8, v9, v10, v11}, Landroid/icu/util/PersianCalendar;->floorDivide(JJ)J

    #@11
    move-result-wide v8

    #@12
    long-to-int v8, v8

    #@13
    add-int/lit8 v7, v8, 0x1

    #@15
    .line 423
    .local v7, "year":I
    add-int/lit8 v8, v7, -0x1

    #@17
    mul-int/lit16 v8, v8, 0x16d

    #@19
    mul-int/lit8 v9, v7, 0x8

    #@1b
    add-int/lit8 v9, v9, 0x15

    #@1d
    const/16 v10, 0x21

    #@1f
    invoke-static {v9, v10}, Landroid/icu/util/PersianCalendar;->floorDivide(II)I

    #@22
    move-result v9

    #@23
    add-int/2addr v8, v9

    #@24
    int-to-long v4, v8

    #@25
    .line 424
    .local v4, "farvardin1":J
    sub-long v8, v2, v4

    #@27
    long-to-int v1, v8

    #@28
    .line 425
    .local v1, "dayOfYear":I
    const/16 v8, 0xd8

    #@2a
    if-ge v1, v8, :cond_0

    #@2c
    .line 426
    div-int/lit8 v6, v1, 0x1f

    #@2e
    .line 430
    .local v6, "month":I
    :goto_0
    sget-object v8, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    #@30
    aget-object v8, v8, v6

    #@32
    const/4 v9, 0x2

    #@33
    aget v8, v8, v9

    #@35
    sub-int v8, v1, v8

    #@37
    add-int/lit8 v0, v8, 0x1

    #@39
    .line 431
    .local v0, "dayOfMonth":I
    add-int/lit8 v1, v1, 0x1

    #@3b
    .line 433
    const/4 v8, 0x0

    #@3c
    const/4 v9, 0x0

    #@3d
    invoke-virtual {p0, v8, v9}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    #@40
    .line 434
    const/4 v8, 0x1

    #@41
    invoke-virtual {p0, v8, v7}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    #@44
    .line 435
    const/16 v8, 0x13

    #@46
    invoke-virtual {p0, v8, v7}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    #@49
    .line 436
    const/4 v8, 0x2

    #@4a
    invoke-virtual {p0, v8, v6}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    #@4d
    .line 437
    const/4 v8, 0x5

    #@4e
    invoke-virtual {p0, v8, v0}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    #@51
    .line 438
    const/4 v8, 0x6

    #@52
    invoke-virtual {p0, v8, v1}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    #@55
    .line 417
    return-void

    #@56
    .line 428
    .end local v0    # "dayOfMonth":I
    .end local v6    # "month":I
    :cond_0
    add-int/lit8 v8, v1, -0x6

    #@58
    div-int/lit8 v6, v8, 0x1e

    #@5a
    .restart local v6    # "month":I
    goto :goto_0
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 5
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 367
    if-ltz p2, :cond_0

    #@3
    const/16 v2, 0xb

    #@5
    if-le p2, v2, :cond_1

    #@7
    .line 368
    :cond_0
    const/4 v2, 0x1

    #@8
    new-array v1, v2, [I

    #@a
    .line 369
    .local v1, "rem":[I
    const/16 v2, 0xc

    #@c
    invoke-static {p2, v2, v1}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    #@f
    move-result v2

    #@10
    add-int/2addr p1, v2

    #@11
    .line 370
    aget p2, v1, v3

    #@13
    .line 373
    .end local v1    # "rem":[I
    :cond_1
    add-int/lit8 v2, p1, -0x1

    #@15
    mul-int/lit16 v2, v2, 0x16d

    #@17
    const v3, 0x1dba9f

    #@1a
    add-int/2addr v2, v3

    #@1b
    mul-int/lit8 v3, p1, 0x8

    #@1d
    add-int/lit8 v3, v3, 0x15

    #@1f
    const/16 v4, 0x21

    #@21
    invoke-static {v3, v4}, Landroid/icu/util/PersianCalendar;->floorDivide(II)I

    #@24
    move-result v3

    #@25
    add-int v0, v2, v3

    #@27
    .line 374
    .local v0, "julianDay":I
    if-eqz p2, :cond_2

    #@29
    .line 375
    sget-object v2, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    #@2b
    aget-object v2, v2, p2

    #@2d
    const/4 v3, 0x2

    #@2e
    aget v2, v2, v3

    #@30
    add-int/2addr v0, v2

    #@31
    .line 377
    :cond_2
    return v0
.end method

.method protected handleGetExtendedYear()I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v3, 0x13

    #@2
    const/4 v2, 0x1

    #@3
    .line 391
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/PersianCalendar;->newerField(II)I

    #@6
    move-result v1

    #@7
    if-ne v1, v3, :cond_0

    #@9
    .line 392
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/PersianCalendar;->internalGet(II)I

    #@c
    move-result v0

    #@d
    .line 396
    .local v0, "year":I
    :goto_0
    return v0

    #@e
    .line 394
    .end local v0    # "year":I
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/PersianCalendar;->internalGet(II)I

    #@11
    move-result v0

    #@12
    .restart local v0    # "year":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "limitType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 298
    sget-object v0, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    aget v0, v0, p2

    #@6
    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 5
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 333
    if-ltz p2, :cond_0

    #@4
    const/16 v3, 0xb

    #@6
    if-le p2, v3, :cond_1

    #@8
    .line 334
    :cond_0
    new-array v0, v1, [I

    #@a
    .line 335
    .local v0, "rem":[I
    const/16 v3, 0xc

    #@c
    invoke-static {p2, v3, v0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    #@f
    move-result v3

    #@10
    add-int/2addr p1, v3

    #@11
    .line 336
    aget p2, v0, v2

    #@13
    .line 339
    .end local v0    # "rem":[I
    :cond_1
    sget-object v3, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    #@15
    aget-object v3, v3, p2

    #@17
    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    :goto_0
    aget v1, v3, v1

    #@1f
    return v1

    #@20
    :cond_2
    move v1, v2

    #@21
    goto :goto_0
.end method

.method protected handleGetYearLength(I)I
    .locals 1
    .param p1, "extendedYear"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 350
    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

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
