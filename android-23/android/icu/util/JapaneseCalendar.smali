.class public Landroid/icu/util/JapaneseCalendar;
.super Landroid/icu/util/GregorianCalendar;
.source "JapaneseCalendar.java"


# static fields
.field public static final CURRENT_ERA:I

.field private static final ERAS:[I

.field private static final GREGORIAN_EPOCH:I = 0x7b2

.field public static final HEISEI:I

.field public static final MEIJI:I

.field public static final SHOWA:I

.field public static final TAISHO:I

.field private static final serialVersionUID:J = -0x29511a714d92d973L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 323
    const/16 v0, 0x2c4

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@9
    .line 573
    sget-object v0, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@b
    array-length v0, v0

    #@c
    div-int/lit8 v0, v0, 0x3

    #@e
    add-int/lit8 v0, v0, -0x1

    #@10
    sput v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@12
    .line 579
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@14
    add-int/lit8 v0, v0, -0x3

    #@16
    sput v0, Landroid/icu/util/JapaneseCalendar;->MEIJI:I

    #@18
    .line 585
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@1a
    add-int/lit8 v0, v0, -0x2

    #@1c
    sput v0, Landroid/icu/util/JapaneseCalendar;->TAISHO:I

    #@1e
    .line 591
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@20
    add-int/lit8 v0, v0, -0x1

    #@22
    sput v0, Landroid/icu/util/JapaneseCalendar;->SHOWA:I

    #@24
    .line 597
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@26
    sput v0, Landroid/icu/util/JapaneseCalendar;->HEISEI:I

    #@28
    .line 48
    return-void

    #@29
    .line 323
    nop

    #@2a
    :array_0
    .array-data 4
        0x285
        0x6
        0x13
        0x28a
        0x2
        0xf
        0x2a0
        0x1
        0x1
        0x2ae
        0x7
        0x14
        0x2bd
        0x3
        0x15
        0x2c0
        0x5
        0xa
        0x2c4
        0x1
        0xb
        0x2cb
        0x9
        0x2
        0x2cd
        0xb
        0x11
        0x2d4
        0x2
        0x4
        0x2d9
        0x8
        0x5
        0x2ed
        0x4
        0xe
        0x2ed
        0x7
        0x2
        0x2f5
        0x8
        0x12
        0x2fd
        0x1
        0x7
        0x2ff
        0x8
        0x10
        0x302
        0xa
        0x1
        0x30d
        0x1
        0x1
        0x30e
        0x8
        0x13
        0x326
        0x5
        0x12
        0x32a
        0x9
        0x13
        0x338
        0x1
        0x5
        0x342
        0x1
        0x3
        0x350
        0x6
        0xd
        0x353
        0x4
        0x1c
        0x356
        0xb
        0x1e
        0x359
        0x2
        0x15
        0x35b
        0x4
        0xf
        0x36d
        0x4
        0x10
        0x375
        0x2
        0x15
        0x379
        0x4
        0x1b
        0x382
        0x4
        0x1a
        0x385
        0x7
        0xf
        0x39b
        0x4
        0xb
        0x3a3
        0x4
        0x1a
        0x3aa
        0x5
        0x16
        0x3b3
        0x4
        0x16
        0x3bd
        0xa
        0x1b
        0x3c1
        0x2
        0x10
        0x3c4
        0x7
        0xa
        0x3c8
        0x8
        0xd
        0x3ca
        0x3
        0x19
        0x3cd
        0xc
        0x14
        0x3d0
        0x7
        0xd
        0x3d2
        0xb
        0x1d
        0x3d7
        0x4
        0xf
        0x3d9
        0x4
        0x1b
        0x3db
        0x4
        0x5
        0x3dd
        0x8
        0x8
        0x3de
        0xb
        0x7
        0x3e3
        0x2
        0x16
        0x3e7
        0x1
        0xd
        0x3ec
        0x7
        0x14
        0x3f4
        0xc
        0x19
        0x3f9
        0x4
        0x17
        0x3fd
        0x2
        0x2
        0x400
        0x7
        0xd
        0x404
        0x7
        0x19
        0x40d
        0x4
        0x15
        0x410
        0xb
        0xa
        0x414
        0xb
        0x18
        0x416
        0x4
        0xe
        0x41d
        0x1
        0xb
        0x422
        0x8
        0x1d
        0x429
        0x8
        0x2
        0x42d
        0x4
        0xd
        0x432
        0x8
        0x17
        0x435
        0xb
        0x11
        0x439
        0x2
        0xa
        0x43c
        0x2
        0x7
        0x43f
        0x4
        0x7
        0x446
        0xc
        0xf
        0x448
        0xc
        0x11
        0x449
        0xb
        0x15
        0x44b
        0x8
        0x1c
        0x450
        0x2
        0xa
        0x452
        0x4
        0x9
        0x454
        0x8
        0x3
        0x456
        0x7
        0xd
        0x459
        0x7
        0xd
        0x45e
        0x4
        0x3
        0x460
        0x4
        0xa
        0x464
        0x4
        0x3
        0x466
        0x1
        0x16
        0x46b
        0x1
        0x1d
        0x46c
        0x8
        0xb
        0x46f
        0x4
        0x1b
        0x475
        0x7
        0xa
        0x476
        0x4
        0x1c
        0x478
        0x2
        0x17
        0x479
        0x7
        0x16
        0x47f
        0x1
        0x1a
        0x482
        0xa
        0x1c
        0x484
        0x4
        0x1b
        0x487
        0x4
        0x14
        0x488
        0x1
        0xa
        0x489
        0x9
        0x4
        0x48b
        0x3
        0x1d
        0x48d
        0x6
        0x5
        0x48e
        0x8
        0x1b
        0x491
        0x4
        0x8
        0x493
        0x4
        0x15
        0x497
        0x7
        0x1c
        0x499
        0x8
        0x4
        0x49d
        0x7
        0xe
        0x49e
        0x5
        0x1b
        0x4a0
        0x4
        0x10
        0x4a1
        0x8
        0xe
        0x4a6
        0x4
        0xb
        0x4af
        0x4
        0x1b
        0x4b1
        0x2
        0xd
        0x4b4
        0x2
        0x14
        0x4b6
        0x4
        0x1b
        0x4b7
        0xa
        0x19
        0x4bb
        0x3
        0x9
        0x4bd
        0xc
        0x6
        0x4c3
        0x4
        0xc
        0x4c6
        0x4
        0xd
        0x4c8
        0xb
        0x14
        0x4c9
        0x4
        0x14
        0x4cb
        0xc
        0xa
        0x4cd
        0x3
        0x5
        0x4d0
        0x4
        0x2
        0x4d1
        0x4
        0xf
        0x4d2
        0xb
        0x5
        0x4d3
        0x9
        0x13
        0x4d6
        0xb
        0x17
        0x4d7
        0x2
        0x7
        0x4d8
        0x7
        0x10
        0x4db
        0x2
        0x1a
        0x4df
        0x2
        0x1c
        0x4e1
        0x3
        0x12
        0x4e8
        0xa
        0x5
        0x4e9
        0x3
        0xe
        0x4eb
        0x3
        0x1a
        0x4ec
        0x4
        0xd
        0x4ed
        0x2
        0x14
        0x4f0
        0x2
        0x1c
        0x4fb
        0x4
        0x19
        0x4fe
        0x2
        0x1d
        0x508
        0x4
        0x1c
        0x50d
        0x8
        0x37
        0x513
        0x4
        0x19
        0x516
        0xb
        0x15
        0x517
        0x8
        0x5
        0x51a
        0xc
        0xe
        0x51c
        0xa
        0x9
        0x51f
        0x4
        0x1c
        0x520
        0x3
        0x14
        0x525
        0x2
        0x3
        0x527
        0x4
        0x1c
        0x529
        0x2
        0x17
        0x52c
        0xc
        0x9
        0x52e
        0x4
        0x1a
        0x531
        0x8
        0x1d
        0x533
        0x8
        0x9
        0x536
        0x1
        0x1d
        0x538
        0x2
        0x1d
        0x53c
        0x4
        0x1c
        0x542
        0xc
        0x8
        0x55a
        0x7
        0x18
        0x55c
        0x4
        0x1
        0x55f
        0x5
        0x1b
        0x563
        0x3
        0x16
        0x565
        0x2
        0xa
        0x568
        0x4
        0x1c
        0x568
        0x2
        0x1b
        0x56b
        0x8
        0x17
        0x56d
        0x2
        0x9
        0x56e
        0x3
        0x1a
        0x572
        0x7
        0x5
        0x594
        0x4
        0x1b
        0x595
        0x9
        0x5
        0x5a1
        0x2
        0x11
        0x5a4
        0x2
        0x5
        0x5a9
        0x7
        0x1c
        0x5ac
        0x7
        0x19
        0x5af
        0x7
        0x19
        0x5b1
        0x9
        0x1c
        0x5b4
        0xc
        0x15
        0x5ba
        0x2
        0x1c
        0x5bb
        0x3
        0x3
        0x5bd
        0x4
        0x1c
        0x5cf
        0x7
        0x1d
        0x5d1
        0x8
        0x15
        0x5d4
        0x7
        0x13
        0x5dd
        0x2
        0x1d
        0x5e0
        0x2
        0x1e
        0x5f1
        0x8
        0x17
        0x5f8
        0x8
        0x14
        0x5fc
        0x7
        0x1d
        0x613
        0xa
        0x17
        0x616
        0x2
        0x1c
        0x622
        0x4
        0x17
        0x625
        0x7
        0x1c
        0x638
        0xc
        0x8
        0x63c
        0xa
        0x1b
        0x64f
        0x7
        0xd
        0x658
        0x2
        0x1e
        0x66c
        0xc
        0x10
        0x670
        0x2
        0xf
        0x674
        0x9
        0x12
        0x677
        0x4
        0xd
        0x67a
        0x7
        0x17
        0x67d
        0x4
        0x19
        0x689
        0x9
        0x15
        0x691
        0x9
        0x1d
        0x694
        0x2
        0x15
        0x698
        0x9
        0x1e
        0x6a8
        0x3
        0xd
        0x6af
        0x4
        0x19
        0x6b4
        0x6
        0x16
        0x6c8
        0x4
        0x1c
        0x6cd
        0x2
        0x1b
        0x6d0
        0x2
        0x15
        0x6d4
        0x7
        0xc
        0x6d7
        0xa
        0x1b
        0x6e4
        0x6
        0x2
        0x6ec
        0xb
        0x10
        0x6f5
        0x4
        0x2
        0x6fd
        0x1
        0x19
        0x709
        0x2
        0x5
        0x70c
        0x2
        0xb
        0x71a
        0x4
        0x16
        0x726
        0xc
        0xa
        0x734
        0xc
        0x2
        0x738
        0x2
        0x1c
        0x73e
        0xb
        0x1b
        0x744
        0x3
        0x12
        0x745
        0x2
        0x13
        0x748
        0x2
        0x14
        0x749
        0x4
        0x7
        0x74c
        0x9
        0x8
        0x778
        0x7
        0x1e
        0x786
        0xc
        0x19
        0x7c5
        0x1
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Landroid/icu/util/GregorianCalendar;-><init>()V

    #@3
    .line 61
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    #@3
    .line 176
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1, v0}, Landroid/icu/util/JapaneseCalendar;->set(II)V

    #@9
    .line 174
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "date"    # I

    #@0
    .prologue
    .line 156
    invoke-direct {p0, p2, p3, p4}, Landroid/icu/util/GregorianCalendar;-><init>(III)V

    #@3
    .line 157
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/JapaneseCalendar;->set(II)V

    #@7
    .line 155
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

    #@0
    .prologue
    .line 202
    invoke-direct/range {p0 .. p6}, Landroid/icu/util/GregorianCalendar;-><init>(IIIIII)V

    #@3
    .line 203
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@5
    const/4 v1, 0x0

    #@6
    invoke-virtual {p0, v1, v0}, Landroid/icu/util/JapaneseCalendar;->set(II)V

    #@9
    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    #@3
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 117
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 0
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/ULocale;)V

    #@3
    .line 91
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 129
    invoke-direct {p0}, Landroid/icu/util/JapaneseCalendar;-><init>()V

    #@3
    .line 130
    invoke-virtual {p0, p1}, Landroid/icu/util/JapaneseCalendar;->setTime(Ljava/util/Date;)V

    #@6
    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    #@3
    .line 81
    return-void
.end method


# virtual methods
.method public getActualMaximum(I)I
    .locals 8
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    .line 654
    if-ne p1, v7, :cond_2

    #@3
    .line 655
    const/4 v5, 0x0

    #@4
    invoke-virtual {p0, v5}, Landroid/icu/util/JapaneseCalendar;->get(I)I

    #@7
    move-result v0

    #@8
    .line 656
    .local v0, "era":I
    sget v5, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@a
    if-ne v0, v5, :cond_0

    #@c
    .line 658
    const/4 v5, 0x3

    #@d
    invoke-virtual {p0, v7, v5}, Landroid/icu/util/JapaneseCalendar;->handleGetLimit(II)I

    #@10
    move-result v5

    #@11
    return v5

    #@12
    .line 660
    :cond_0
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@14
    add-int/lit8 v6, v0, 0x1

    #@16
    mul-int/lit8 v6, v6, 0x3

    #@18
    aget v4, v5, v6

    #@1a
    .line 661
    .local v4, "nextEraYear":I
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@1c
    add-int/lit8 v6, v0, 0x1

    #@1e
    mul-int/lit8 v6, v6, 0x3

    #@20
    add-int/lit8 v6, v6, 0x1

    #@22
    aget v3, v5, v6

    #@24
    .line 662
    .local v3, "nextEraMonth":I
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@26
    add-int/lit8 v6, v0, 0x1

    #@28
    mul-int/lit8 v6, v6, 0x3

    #@2a
    add-int/lit8 v6, v6, 0x2

    #@2c
    aget v2, v5, v6

    #@2e
    .line 664
    .local v2, "nextEraDate":I
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@30
    mul-int/lit8 v6, v0, 0x3

    #@32
    aget v5, v5, v6

    #@34
    sub-int v5, v4, v5

    #@36
    add-int/lit8 v1, v5, 0x1

    #@38
    .line 665
    .local v1, "maxYear":I
    if-ne v3, v7, :cond_1

    #@3a
    if-ne v2, v7, :cond_1

    #@3c
    .line 667
    add-int/lit8 v1, v1, -0x1

    #@3e
    .line 669
    :cond_1
    return v1

    #@3f
    .line 672
    .end local v0    # "era":I
    .end local v1    # "maxYear":I
    .end local v2    # "nextEraDate":I
    .end local v3    # "nextEraMonth":I
    .end local v4    # "nextEraYear":I
    :cond_2
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->getActualMaximum(I)I

    #@42
    move-result v5

    #@43
    return v5
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 3
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    .line 264
    sget v1, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    #@6
    move-result v0

    #@7
    .line 266
    .local v0, "era":I
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@9
    mul-int/lit8 v2, v0, 0x3

    #@b
    aget v1, v1, v2

    #@d
    if-ne p1, v1, :cond_0

    #@f
    .line 267
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@11
    mul-int/lit8 v2, v0, 0x3

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    aget v1, v1, v2

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    if-ne p2, v1, :cond_0

    #@1b
    .line 268
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@1d
    mul-int/lit8 v2, v0, 0x3

    #@1f
    add-int/lit8 v2, v2, 0x2

    #@21
    aget v1, v1, v2

    #@23
    return v1

    #@24
    .line 272
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->getDefaultDayInMonth(II)I

    #@27
    move-result v1

    #@28
    return v1
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 3
    .param p1, "extendedYear"    # I

    #@0
    .prologue
    .line 241
    sget v1, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@2
    const/4 v2, 0x0

    #@3
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    #@6
    move-result v0

    #@7
    .line 245
    .local v0, "era":I
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@9
    mul-int/lit8 v2, v0, 0x3

    #@b
    aget v1, v1, v2

    #@d
    if-ne p1, v1, :cond_0

    #@f
    .line 246
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@11
    mul-int/lit8 v2, v0, 0x3

    #@13
    add-int/lit8 v2, v2, 0x1

    #@15
    aget v1, v1, v2

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    return v1

    #@1a
    .line 249
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->getDefaultMonthInYear(I)I

    #@1d
    move-result v1

    #@1e
    return v1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 636
    const-string/jumbo v0, "japanese"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 9
    .param p1, "julianDay"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 279
    invoke-super {p0, p1}, Landroid/icu/util/GregorianCalendar;->handleComputeFields(I)V

    #@4
    .line 280
    const/16 v5, 0x13

    #@6
    invoke-virtual {p0, v5}, Landroid/icu/util/JapaneseCalendar;->internalGet(I)I

    #@9
    move-result v4

    #@a
    .line 282
    .local v4, "year":I
    const/4 v3, 0x0

    #@b
    .line 288
    .local v3, "low":I
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@d
    sget-object v6, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@f
    array-length v6, v6

    #@10
    add-int/lit8 v6, v6, -0x3

    #@12
    aget v5, v5, v6

    #@14
    if-le v4, v5, :cond_1

    #@16
    .line 289
    sget v3, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@18
    .line 319
    :cond_0
    invoke-virtual {p0, v8, v3}, Landroid/icu/util/JapaneseCalendar;->internalSet(II)V

    #@1b
    .line 320
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@1d
    mul-int/lit8 v6, v3, 0x3

    #@1f
    aget v5, v5, v6

    #@21
    sub-int v5, v4, v5

    #@23
    add-int/lit8 v5, v5, 0x1

    #@25
    const/4 v6, 0x1

    #@26
    invoke-virtual {p0, v6, v5}, Landroid/icu/util/JapaneseCalendar;->internalSet(II)V

    #@29
    .line 278
    return-void

    #@2a
    .line 292
    :cond_1
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@2c
    array-length v5, v5

    #@2d
    div-int/lit8 v1, v5, 0x3

    #@2f
    .line 294
    .local v1, "high":I
    :goto_0
    add-int/lit8 v5, v1, -0x1

    #@31
    if-ge v3, v5, :cond_0

    #@33
    .line 295
    add-int v5, v3, v1

    #@35
    div-int/lit8 v2, v5, 0x2

    #@37
    .line 296
    .local v2, "i":I
    sget-object v5, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@39
    mul-int/lit8 v6, v2, 0x3

    #@3b
    aget v5, v5, v6

    #@3d
    sub-int v0, v4, v5

    #@3f
    .line 301
    .local v0, "diff":I
    if-nez v0, :cond_2

    #@41
    .line 302
    const/4 v5, 0x2

    #@42
    invoke-virtual {p0, v5}, Landroid/icu/util/JapaneseCalendar;->internalGet(I)I

    #@45
    move-result v5

    #@46
    sget-object v6, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@48
    mul-int/lit8 v7, v2, 0x3

    #@4a
    add-int/lit8 v7, v7, 0x1

    #@4c
    aget v6, v6, v7

    #@4e
    add-int/lit8 v6, v6, -0x1

    #@50
    sub-int v0, v5, v6

    #@52
    .line 303
    if-nez v0, :cond_2

    #@54
    .line 304
    const/4 v5, 0x5

    #@55
    invoke-virtual {p0, v5}, Landroid/icu/util/JapaneseCalendar;->internalGet(I)I

    #@58
    move-result v5

    #@59
    sget-object v6, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@5b
    mul-int/lit8 v7, v2, 0x3

    #@5d
    add-int/lit8 v7, v7, 0x2

    #@5f
    aget v6, v6, v7

    #@61
    sub-int v0, v5, v6

    #@63
    .line 307
    :cond_2
    if-ltz v0, :cond_3

    #@65
    .line 308
    move v3, v2

    #@66
    goto :goto_0

    #@67
    .line 310
    :cond_3
    move v1, v2

    #@68
    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x1

    #@2
    const/16 v2, 0x13

    #@4
    .line 218
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/JapaneseCalendar;->newerField(II)I

    #@7
    move-result v1

    #@8
    if-ne v1, v2, :cond_0

    #@a
    .line 219
    invoke-virtual {p0, v2, v4}, Landroid/icu/util/JapaneseCalendar;->newerField(II)I

    #@d
    move-result v1

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 220
    const/16 v1, 0x7b2

    #@12
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    #@15
    move-result v0

    #@16
    .line 227
    .local v0, "year":I
    :goto_0
    return v0

    #@17
    .line 223
    .end local v0    # "year":I
    :cond_0
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    #@1a
    move-result v1

    #@1b
    .line 224
    sget-object v2, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@1d
    sget v3, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@1f
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/JapaneseCalendar;->internalGet(II)I

    #@22
    move-result v3

    #@23
    mul-int/lit8 v3, v3, 0x3

    #@25
    aget v2, v2, v3

    #@27
    .line 223
    add-int/2addr v1, v2

    #@28
    add-int/lit8 v0, v1, -0x1

    #@2a
    .restart local v0    # "year":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 3
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 607
    packed-switch p1, :pswitch_data_0

    #@5
    .line 627
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    #@8
    move-result v0

    #@9
    return v0

    #@a
    .line 609
    :pswitch_0
    if-eqz p2, :cond_0

    #@c
    if-ne p2, v0, :cond_1

    #@e
    .line 610
    :cond_0
    return v1

    #@f
    .line 612
    :cond_1
    sget v0, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@11
    return v0

    #@12
    .line 615
    :pswitch_1
    packed-switch p2, :pswitch_data_1

    #@15
    goto :goto_0

    #@16
    .line 618
    :pswitch_2
    return v0

    #@17
    .line 620
    :pswitch_3
    return v0

    #@18
    .line 622
    :pswitch_4
    const/4 v0, 0x3

    #@19
    invoke-super {p0, p1, v0}, Landroid/icu/util/GregorianCalendar;->handleGetLimit(II)I

    #@1c
    move-result v0

    #@1d
    sget-object v1, Landroid/icu/util/JapaneseCalendar;->ERAS:[I

    #@1f
    sget v2, Landroid/icu/util/JapaneseCalendar;->CURRENT_ERA:I

    #@21
    mul-int/lit8 v2, v2, 0x3

    #@23
    aget v1, v1, v2

    #@25
    sub-int/2addr v0, v1

    #@26
    return v0

    #@27
    .line 607
    nop

    #@28
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    #@30
    .line 615
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 646
    const/4 v0, 0x0

    #@1
    return v0
.end method
