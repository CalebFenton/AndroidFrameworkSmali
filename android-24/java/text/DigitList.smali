.class final Ljava/text/DigitList;
.super Ljava/lang/Object;
.source "DigitList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final synthetic -java-math-RoundingModeSwitchesValues:[I = null

.field private static final LONG_MIN_REP:[C

.field public static final MAX_COUNT:I = 0x13


# instance fields
.field public count:I

.field private data:[C

.field public decimalAt:I

.field public digits:[C

.field private isNegative:Z

.field private roundingMode:Ljava/math/RoundingMode;

.field private tempBuffer:Ljava/lang/StringBuffer;


# direct methods
.method private static synthetic -getjava-math-RoundingModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Ljava/text/DigitList;->-java-math-RoundingModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Ljava/text/DigitList;->-java-math-RoundingModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Ljava/math/RoundingMode;->values()[Ljava/math/RoundingMode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    #@10
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    #@22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    #@3d
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    #@46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Ljava/math/RoundingMode;->UP:Ljava/math/RoundingMode;

    #@4f
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    #@57
    :goto_7
    sput-object v0, Ljava/text/DigitList;->-java-math-RoundingModeSwitchesValues:[I

    #@59
    return-object v0

    #@5a
    :catch_0
    move-exception v1

    #@5b
    goto :goto_7

    #@5c
    :catch_1
    move-exception v1

    #@5d
    goto :goto_6

    #@5e
    :catch_2
    move-exception v1

    #@5f
    goto :goto_5

    #@60
    :catch_3
    move-exception v1

    #@61
    goto :goto_4

    #@62
    :catch_4
    move-exception v1

    #@63
    goto :goto_3

    #@64
    :catch_5
    move-exception v1

    #@65
    goto :goto_2

    #@66
    :catch_6
    move-exception v1

    #@67
    goto :goto_1

    #@68
    :catch_7
    move-exception v1

    #@69
    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/text/DigitList;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/text/DigitList;->-assertionsDisabled:Z

    #@b
    .line 678
    const-string/jumbo v0, "9223372036854775808"

    #@e
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    #@11
    move-result-object v0

    #@12
    sput-object v0, Ljava/text/DigitList;->LONG_MIN_REP:[C

    #@14
    .line 73
    return-void

    #@15
    :cond_0
    const/4 v0, 0x1

    #@16
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 102
    iput v1, p0, Ljava/text/DigitList;->decimalAt:I

    #@6
    .line 103
    iput v1, p0, Ljava/text/DigitList;->count:I

    #@8
    .line 104
    const/16 v0, 0x13

    #@a
    new-array v0, v0, [C

    #@c
    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@e
    .line 107
    sget-object v0, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    #@10
    iput-object v0, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    #@12
    .line 108
    iput-boolean v1, p0, Ljava/text/DigitList;->isNegative:Z

    #@14
    .line 73
    return-void
.end method

.method private extendDigits(I)V
    .locals 1
    .param p1, "len"    # I

    #@0
    .prologue
    .line 704
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@2
    array-length v0, v0

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 705
    new-array v0, p1, [C

    #@7
    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@9
    .line 703
    :cond_0
    return-void
.end method

.method private final getDataChars(I)[C
    .locals 1
    .param p1, "length"    # I

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    #@6
    array-length v0, v0

    #@7
    if-ge v0, p1, :cond_1

    #@9
    .line 711
    :cond_0
    new-array v0, p1, [C

    #@b
    iput-object v0, p0, Ljava/text/DigitList;->data:[C

    #@d
    .line 713
    :cond_1
    iget-object v0, p0, Ljava/text/DigitList;->data:[C

    #@f
    return-object v0
.end method

.method private getStringBuffer()Ljava/lang/StringBuffer;
    .locals 2

    #@0
    .prologue
    .line 695
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 696
    new-instance v0, Ljava/lang/StringBuffer;

    #@6
    const/16 v1, 0x13

    #@8
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    #@b
    iput-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    #@d
    .line 700
    :goto_0
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    #@f
    return-object v0

    #@10
    .line 698
    :cond_0
    iget-object v0, p0, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;

    #@12
    const/4 v1, 0x0

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    #@16
    goto :goto_0
.end method

.method private isLongMIN_VALUE()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 644
    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    #@3
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@5
    if-ne v1, v2, :cond_0

    #@7
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@9
    const/16 v2, 0x13

    #@b
    if-eq v1, v2, :cond_1

    #@d
    .line 645
    :cond_0
    return v3

    #@e
    .line 648
    :cond_1
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@11
    if-ge v0, v1, :cond_3

    #@13
    .line 649
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@15
    aget-char v1, v1, v0

    #@17
    sget-object v2, Ljava/text/DigitList;->LONG_MIN_REP:[C

    #@19
    aget-char v2, v2, v0

    #@1b
    if-eq v1, v2, :cond_2

    #@1d
    return v3

    #@1e
    .line 648
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 652
    :cond_3
    const/4 v1, 0x1

    #@22
    return v1
.end method

.method private static final parseInt([CII)I
    .locals 6
    .param p0, "str"    # [C
    .param p1, "offset"    # I
    .param p2, "strLen"    # I

    #@0
    .prologue
    .line 657
    const/4 v2, 0x1

    #@1
    .line 658
    .local v2, "positive":Z
    aget-char v0, p0, p1

    #@3
    .local v0, "c":C
    const/16 v4, 0x2d

    #@5
    if-ne v0, v4, :cond_1

    #@7
    .line 659
    const/4 v2, 0x0

    #@8
    .line 660
    add-int/lit8 p1, p1, 0x1

    #@a
    .line 665
    :cond_0
    :goto_0
    const/4 v3, 0x0

    #@b
    .local v3, "value":I
    move v1, p1

    #@c
    .line 666
    .end local p1    # "offset":I
    .local v1, "offset":I
    :goto_1
    if-ge v1, p2, :cond_2

    #@e
    .line 667
    add-int/lit8 p1, v1, 0x1

    #@10
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    aget-char v0, p0, v1

    #@12
    .line 668
    const/16 v4, 0x30

    #@14
    if-lt v0, v4, :cond_3

    #@16
    const/16 v4, 0x39

    #@18
    if-gt v0, v4, :cond_3

    #@1a
    .line 669
    mul-int/lit8 v4, v3, 0xa

    #@1c
    add-int/lit8 v5, v0, -0x30

    #@1e
    add-int v3, v4, v5

    #@20
    move v1, p1

    #@21
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_1

    #@22
    .line 661
    .end local v1    # "offset":I
    .end local v3    # "value":I
    .restart local p1    # "offset":I
    :cond_1
    const/16 v4, 0x2b

    #@24
    if-ne v0, v4, :cond_0

    #@26
    .line 662
    add-int/lit8 p1, p1, 0x1

    #@28
    goto :goto_0

    #@29
    .end local p1    # "offset":I
    .restart local v1    # "offset":I
    .restart local v3    # "value":I
    :cond_2
    move p1, v1

    #@2a
    .line 674
    .end local v1    # "offset":I
    .restart local p1    # "offset":I
    :cond_3
    if-eqz v2, :cond_4

    #@2c
    .end local v3    # "value":I
    :goto_2
    return v3

    #@2d
    .restart local v3    # "value":I
    :cond_4
    neg-int v3, v3

    #@2e
    goto :goto_2
.end method

.method private final round(I)V
    .locals 3
    .param p1, "maximumDigits"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 379
    if-ltz p1, :cond_3

    #@3
    iget v0, p0, Ljava/text/DigitList;->count:I

    #@5
    if-ge p1, v0, :cond_3

    #@7
    .line 380
    invoke-direct {p0, p1}, Ljava/text/DigitList;->shouldRoundUp(I)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_1

    #@d
    .line 385
    :cond_0
    add-int/lit8 p1, p1, -0x1

    #@f
    .line 386
    if-gez p1, :cond_2

    #@11
    .line 389
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@13
    const/16 v1, 0x31

    #@15
    aput-char v1, v0, v2

    #@17
    .line 390
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    #@19
    add-int/lit8 v0, v0, 0x1

    #@1b
    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    #@1d
    .line 391
    const/4 p1, 0x0

    #@1e
    .line 399
    :goto_0
    add-int/lit8 p1, p1, 0x1

    #@20
    .line 401
    :cond_1
    iput p1, p0, Ljava/text/DigitList;->count:I

    #@22
    .line 404
    :goto_1
    iget v0, p0, Ljava/text/DigitList;->count:I

    #@24
    const/4 v1, 0x1

    #@25
    if-le v0, v1, :cond_3

    #@27
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@29
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@2b
    add-int/lit8 v1, v1, -0x1

    #@2d
    aget-char v0, v0, v1

    #@2f
    const/16 v1, 0x30

    #@31
    if-ne v0, v1, :cond_3

    #@33
    .line 405
    iget v0, p0, Ljava/text/DigitList;->count:I

    #@35
    add-int/lit8 v0, v0, -0x1

    #@37
    iput v0, p0, Ljava/text/DigitList;->count:I

    #@39
    goto :goto_1

    #@3a
    .line 395
    :cond_2
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@3c
    aget-char v1, v0, p1

    #@3e
    add-int/lit8 v1, v1, 0x1

    #@40
    int-to-char v1, v1

    #@41
    aput-char v1, v0, p1

    #@43
    .line 396
    iget-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@45
    aget-char v0, v0, p1

    #@47
    const/16 v1, 0x39

    #@49
    if-gt v0, v1, :cond_0

    #@4b
    goto :goto_0

    #@4c
    .line 376
    :cond_3
    return-void
.end method

.method private shouldRoundUp(I)Z
    .locals 7
    .param p1, "maximumDigits"    # I

    #@0
    .prologue
    const/16 v6, 0x35

    #@2
    const/16 v5, 0x30

    #@4
    const/4 v1, 0x0

    #@5
    const/4 v2, 0x1

    #@6
    .line 427
    iget v3, p0, Ljava/text/DigitList;->count:I

    #@8
    if-ge p1, v3, :cond_b

    #@a
    .line 428
    invoke-static {}, Ljava/text/DigitList;->-getjava-math-RoundingModeSwitchesValues()[I

    #@d
    move-result-object v3

    #@e
    iget-object v4, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    #@10
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    #@13
    move-result v4

    #@14
    aget v3, v3, v4

    #@16
    packed-switch v3, :pswitch_data_0

    #@19
    .line 490
    sget-boolean v2, Ljava/text/DigitList;->-assertionsDisabled:Z

    #@1b
    if-nez v2, :cond_b

    #@1d
    new-instance v1, Ljava/lang/AssertionError;

    #@1f
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@22
    throw v1

    #@23
    .line 430
    :pswitch_0
    move v0, p1

    #@24
    .local v0, "i":I
    :goto_0
    iget v3, p0, Ljava/text/DigitList;->count:I

    #@26
    if-ge v0, v3, :cond_b

    #@28
    .line 431
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@2a
    aget-char v3, v3, v0

    #@2c
    if-eq v3, v5, :cond_0

    #@2e
    .line 432
    return v2

    #@2f
    .line 430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 439
    .end local v0    # "i":I
    :pswitch_1
    move v0, p1

    #@33
    .restart local v0    # "i":I
    :goto_1
    iget v3, p0, Ljava/text/DigitList;->count:I

    #@35
    if-ge v0, v3, :cond_b

    #@37
    .line 440
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@39
    aget-char v3, v3, v0

    #@3b
    if-eq v3, v5, :cond_2

    #@3d
    .line 441
    iget-boolean v3, p0, Ljava/text/DigitList;->isNegative:Z

    #@3f
    if-eqz v3, :cond_1

    #@41
    :goto_2
    return v1

    #@42
    :cond_1
    move v1, v2

    #@43
    goto :goto_2

    #@44
    .line 439
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@46
    goto :goto_1

    #@47
    .line 446
    .end local v0    # "i":I
    :pswitch_2
    move v0, p1

    #@48
    .restart local v0    # "i":I
    :goto_3
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@4a
    if-ge v0, v2, :cond_b

    #@4c
    .line 447
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@4e
    aget-char v2, v2, v0

    #@50
    if-eq v2, v5, :cond_3

    #@52
    .line 448
    iget-boolean v1, p0, Ljava/text/DigitList;->isNegative:Z

    #@54
    return v1

    #@55
    .line 446
    :cond_3
    add-int/lit8 v0, v0, 0x1

    #@57
    goto :goto_3

    #@58
    .line 453
    .end local v0    # "i":I
    :pswitch_3
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@5a
    aget-char v3, v3, p1

    #@5c
    if-lt v3, v6, :cond_b

    #@5e
    .line 454
    return v2

    #@5f
    .line 458
    :pswitch_4
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@61
    aget-char v3, v3, p1

    #@63
    if-le v3, v6, :cond_4

    #@65
    .line 459
    return v2

    #@66
    .line 460
    :cond_4
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@68
    aget-char v3, v3, p1

    #@6a
    if-ne v3, v6, :cond_b

    #@6c
    .line 461
    add-int/lit8 v0, p1, 0x1

    #@6e
    .restart local v0    # "i":I
    :goto_4
    iget v3, p0, Ljava/text/DigitList;->count:I

    #@70
    if-ge v0, v3, :cond_b

    #@72
    .line 462
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@74
    aget-char v3, v3, v0

    #@76
    if-eq v3, v5, :cond_5

    #@78
    .line 463
    return v2

    #@79
    .line 461
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@7b
    goto :goto_4

    #@7c
    .line 470
    .end local v0    # "i":I
    :pswitch_5
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@7e
    aget-char v3, v3, p1

    #@80
    if-le v3, v6, :cond_6

    #@82
    .line 471
    return v2

    #@83
    .line 472
    :cond_6
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@85
    aget-char v3, v3, p1

    #@87
    if-ne v3, v6, :cond_b

    #@89
    .line 473
    add-int/lit8 v0, p1, 0x1

    #@8b
    .restart local v0    # "i":I
    :goto_5
    iget v3, p0, Ljava/text/DigitList;->count:I

    #@8d
    if-ge v0, v3, :cond_8

    #@8f
    .line 474
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@91
    aget-char v3, v3, v0

    #@93
    if-eq v3, v5, :cond_7

    #@95
    .line 475
    return v2

    #@96
    .line 473
    :cond_7
    add-int/lit8 v0, v0, 0x1

    #@98
    goto :goto_5

    #@99
    .line 478
    :cond_8
    if-lez p1, :cond_9

    #@9b
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@9d
    add-int/lit8 v4, p1, -0x1

    #@9f
    aget-char v3, v3, v4

    #@a1
    rem-int/lit8 v3, v3, 0x2

    #@a3
    if-eqz v3, :cond_9

    #@a5
    move v1, v2

    #@a6
    :cond_9
    return v1

    #@a7
    .line 482
    .end local v0    # "i":I
    :pswitch_6
    move v0, p1

    #@a8
    .restart local v0    # "i":I
    :goto_6
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@aa
    if-ge v0, v2, :cond_b

    #@ac
    .line 483
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@ae
    aget-char v2, v2, v0

    #@b0
    if-eq v2, v5, :cond_a

    #@b2
    .line 484
    new-instance v1, Ljava/lang/ArithmeticException;

    #@b4
    .line 485
    const-string/jumbo v2, "Rounding needed with the rounding mode being set to RoundingMode.UNNECESSARY"

    #@b7
    .line 484
    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    #@ba
    throw v1

    #@bb
    .line 482
    :cond_a
    add-int/lit8 v0, v0, 0x1

    #@bd
    goto :goto_6

    #@be
    .line 493
    .end local v0    # "i":I
    :cond_b
    :pswitch_7
    return v1

    #@bf
    .line 428
    nop

    #@c0
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public append(C)V
    .locals 4
    .param p1, "digit"    # C

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 145
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@3
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@5
    array-length v2, v2

    #@6
    if-ne v1, v2, :cond_0

    #@8
    .line 146
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@a
    add-int/lit8 v1, v1, 0x64

    #@c
    new-array v0, v1, [C

    #@e
    .line 147
    .local v0, "data":[C
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@10
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@12
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@15
    .line 148
    iput-object v0, p0, Ljava/text/DigitList;->digits:[C

    #@17
    .line 150
    .end local v0    # "data":[C
    :cond_0
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@19
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@1b
    add-int/lit8 v3, v2, 0x1

    #@1d
    iput v3, p0, Ljava/text/DigitList;->count:I

    #@1f
    aput-char p1, v1, v2

    #@21
    .line 144
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 137
    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    #@3
    .line 138
    iput v0, p0, Ljava/text/DigitList;->count:I

    #@5
    .line 136
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 628
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v2

    #@4
    check-cast v2, Ljava/text/DigitList;

    #@6
    .line 629
    .local v2, "other":Ljava/text/DigitList;
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@8
    array-length v3, v3

    #@9
    new-array v1, v3, [C

    #@b
    .line 630
    .local v1, "newDigits":[C
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@d
    iget-object v4, p0, Ljava/text/DigitList;->digits:[C

    #@f
    array-length v4, v4

    #@10
    const/4 v5, 0x0

    #@11
    const/4 v6, 0x0

    #@12
    invoke-static {v3, v5, v1, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@15
    .line 631
    iput-object v1, v2, Ljava/text/DigitList;->digits:[C

    #@17
    .line 632
    const/4 v3, 0x0

    #@18
    iput-object v3, v2, Ljava/text/DigitList;->tempBuffer:Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 633
    return-object v2

    #@1b
    .line 634
    .end local v1    # "newDigits":[C
    .end local v2    # "other":Ljava/text/DigitList;
    :catch_0
    move-exception v0

    #@1c
    .line 635
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/InternalError;

    #@1e
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@21
    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 595
    if-ne p0, p1, :cond_0

    #@4
    .line 596
    return v5

    #@5
    .line 597
    :cond_0
    instance-of v2, p1, Ljava/text/DigitList;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 598
    return v4

    #@a
    :cond_1
    move-object v1, p1

    #@b
    .line 599
    nop

    #@c
    nop

    #@d
    .line 600
    .local v1, "other":Ljava/text/DigitList;
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@f
    iget v3, v1, Ljava/text/DigitList;->count:I

    #@11
    if-ne v2, v3, :cond_2

    #@13
    .line 601
    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    #@15
    iget v3, v1, Ljava/text/DigitList;->decimalAt:I

    #@17
    if-eq v2, v3, :cond_3

    #@19
    .line 602
    :cond_2
    return v4

    #@1a
    .line 603
    :cond_3
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@1d
    if-ge v0, v2, :cond_5

    #@1f
    .line 604
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@21
    aget-char v2, v2, v0

    #@23
    iget-object v3, v1, Ljava/text/DigitList;->digits:[C

    #@25
    aget-char v3, v3, v0

    #@27
    if-eq v2, v3, :cond_4

    #@29
    .line 605
    return v4

    #@2a
    .line 603
    :cond_4
    add-int/lit8 v0, v0, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 606
    :cond_5
    return v5
.end method

.method fitsIntoLong(ZZ)Z
    .locals 8
    .param p1, "isPositive"    # Z
    .param p2, "ignoreNegativeZero"    # Z

    #@0
    .prologue
    const/16 v7, 0x13

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 229
    :goto_0
    iget v5, p0, Ljava/text/DigitList;->count:I

    #@6
    if-lez v5, :cond_0

    #@8
    iget-object v5, p0, Ljava/text/DigitList;->digits:[C

    #@a
    iget v6, p0, Ljava/text/DigitList;->count:I

    #@c
    add-int/lit8 v6, v6, -0x1

    #@e
    aget-char v5, v5, v6

    #@10
    const/16 v6, 0x30

    #@12
    if-ne v5, v6, :cond_0

    #@14
    .line 230
    iget v5, p0, Ljava/text/DigitList;->count:I

    #@16
    add-int/lit8 v5, v5, -0x1

    #@18
    iput v5, p0, Ljava/text/DigitList;->count:I

    #@1a
    goto :goto_0

    #@1b
    .line 233
    :cond_0
    iget v5, p0, Ljava/text/DigitList;->count:I

    #@1d
    if-nez v5, :cond_2

    #@1f
    .line 236
    if-nez p1, :cond_1

    #@21
    .end local p2    # "ignoreNegativeZero":Z
    :goto_1
    return p2

    #@22
    .restart local p2    # "ignoreNegativeZero":Z
    :cond_1
    move p2, v3

    #@23
    goto :goto_1

    #@24
    .line 239
    :cond_2
    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    #@26
    iget v6, p0, Ljava/text/DigitList;->count:I

    #@28
    if-lt v5, v6, :cond_3

    #@2a
    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    #@2c
    if-le v5, v7, :cond_4

    #@2e
    .line 240
    :cond_3
    return v4

    #@2f
    .line 243
    :cond_4
    iget v5, p0, Ljava/text/DigitList;->decimalAt:I

    #@31
    if-ge v5, v7, :cond_5

    #@33
    return v3

    #@34
    .line 248
    :cond_5
    const/4 v1, 0x0

    #@35
    .local v1, "i":I
    :goto_2
    iget v5, p0, Ljava/text/DigitList;->count:I

    #@37
    if-ge v1, v5, :cond_8

    #@39
    .line 249
    iget-object v5, p0, Ljava/text/DigitList;->digits:[C

    #@3b
    aget-char v0, v5, v1

    #@3d
    .local v0, "dig":C
    sget-object v5, Ljava/text/DigitList;->LONG_MIN_REP:[C

    #@3f
    aget-char v2, v5, v1

    #@41
    .line 250
    .local v2, "max":C
    if-le v0, v2, :cond_6

    #@43
    return v4

    #@44
    .line 251
    :cond_6
    if-ge v0, v2, :cond_7

    #@46
    return v3

    #@47
    .line 248
    :cond_7
    add-int/lit8 v1, v1, 0x1

    #@49
    goto :goto_2

    #@4a
    .line 256
    .end local v0    # "dig":C
    .end local v2    # "max":C
    :cond_8
    iget v5, p0, Ljava/text/DigitList;->count:I

    #@4c
    iget v6, p0, Ljava/text/DigitList;->decimalAt:I

    #@4e
    if-ge v5, v6, :cond_9

    #@50
    return v3

    #@51
    .line 261
    :cond_9
    if-eqz p1, :cond_a

    #@53
    move v3, v4

    #@54
    :cond_a
    return v3
.end method

.method public final getBigDecimal()Ljava/math/BigDecimal;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 198
    iget v0, p0, Ljava/text/DigitList;->count:I

    #@3
    if-nez v0, :cond_1

    #@5
    .line 199
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    #@7
    if-nez v0, :cond_0

    #@9
    .line 200
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    #@b
    return-object v0

    #@c
    .line 202
    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    #@e
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "0E"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    #@27
    return-object v0

    #@28
    .line 206
    :cond_1
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    #@2a
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@2c
    if-ne v0, v1, :cond_2

    #@2e
    .line 207
    new-instance v0, Ljava/math/BigDecimal;

    #@30
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@32
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@34
    invoke-direct {v0, v1, v3, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    #@37
    return-object v0

    #@38
    .line 209
    :cond_2
    new-instance v0, Ljava/math/BigDecimal;

    #@3a
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@3c
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@3e
    invoke-direct {v0, v1, v3, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    #@41
    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    #@43
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@45
    sub-int/2addr v1, v2

    #@46
    invoke-virtual {v0, v1}, Ljava/math/BigDecimal;->scaleByPowerOfTen(I)Ljava/math/BigDecimal;

    #@49
    move-result-object v0

    #@4a
    return-object v0
.end method

.method public final getDouble()D
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 159
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@3
    if-nez v1, :cond_0

    #@5
    .line 160
    const-wide/16 v2, 0x0

    #@7
    return-wide v2

    #@8
    .line 163
    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    #@b
    move-result-object v0

    #@c
    .line 164
    .local v0, "temp":Ljava/lang/StringBuffer;
    const/16 v1, 0x2e

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@11
    .line 165
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@13
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@15
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@18
    .line 166
    const/16 v1, 0x45

    #@1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@1d
    .line 167
    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@22
    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@29
    move-result-wide v2

    #@2a
    return-wide v2
.end method

.method public final getLong()J
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 178
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@3
    if-nez v2, :cond_0

    #@5
    .line 179
    const-wide/16 v2, 0x0

    #@7
    return-wide v2

    #@8
    .line 185
    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->isLongMIN_VALUE()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 186
    const-wide/high16 v2, -0x8000000000000000L

    #@10
    return-wide v2

    #@11
    .line 189
    :cond_1
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    #@14
    move-result-object v1

    #@15
    .line 190
    .local v1, "temp":Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@17
    iget v3, p0, Ljava/text/DigitList;->count:I

    #@19
    invoke-virtual {v1, v2, v4, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@1c
    .line 191
    iget v0, p0, Ljava/text/DigitList;->count:I

    #@1e
    .local v0, "i":I
    :goto_0
    iget v2, p0, Ljava/text/DigitList;->decimalAt:I

    #@20
    if-ge v0, v2, :cond_2

    #@22
    .line 192
    const/16 v2, 0x30

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@27
    .line 191
    add-int/lit8 v0, v0, 0x1

    #@29
    goto :goto_0

    #@2a
    .line 194
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@31
    move-result-wide v2

    #@32
    return-wide v2
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 613
    iget v0, p0, Ljava/text/DigitList;->decimalAt:I

    #@2
    .line 615
    .local v0, "hashcode":I
    const/4 v1, 0x0

    #@3
    .local v1, "i":I
    :goto_0
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 616
    mul-int/lit8 v2, v0, 0x25

    #@9
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@b
    aget-char v3, v3, v1

    #@d
    add-int v0, v2, v3

    #@f
    .line 615
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 619
    :cond_0
    return v0
.end method

.method isZero()Z
    .locals 3

    #@0
    .prologue
    .line 114
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget v1, p0, Ljava/text/DigitList;->count:I

    #@3
    if-ge v0, v1, :cond_1

    #@5
    .line 115
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@7
    aget-char v1, v1, v0

    #@9
    const/16 v2, 0x30

    #@b
    if-eq v1, v2, :cond_0

    #@d
    .line 116
    const/4 v1, 0x0

    #@e
    return v1

    #@f
    .line 114
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 119
    :cond_1
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public final set(ZDI)V
    .locals 6
    .param p1, "isNegative"    # Z
    .param p2, "source"    # D
    .param p4, "maximumFractionDigits"    # I

    #@0
    .prologue
    .line 274
    const/4 v5, 0x1

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move-wide v2, p2

    #@4
    move v4, p4

    #@5
    invoke-virtual/range {v0 .. v5}, Ljava/text/DigitList;->set(ZDIZ)V

    #@8
    .line 273
    return-void
.end method

.method final set(ZDIZ)V
    .locals 2
    .param p1, "isNegative"    # Z
    .param p2, "source"    # D
    .param p4, "maximumDigits"    # I
    .param p5, "fixedPoint"    # Z

    #@0
    .prologue
    .line 289
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, v0, p4, p5}, Ljava/text/DigitList;->set(ZLjava/lang/String;IZ)V

    #@7
    .line 288
    return-void
.end method

.method public final set(ZJ)V
    .locals 2
    .param p1, "isNegative"    # Z
    .param p2, "source"    # J

    #@0
    .prologue
    .line 500
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, p3, v0}, Ljava/text/DigitList;->set(ZJI)V

    #@4
    .line 499
    return-void
.end method

.method public final set(ZJI)V
    .locals 8
    .param p1, "isNegative"    # Z
    .param p2, "source"    # J
    .param p4, "maximumDigits"    # I

    #@0
    .prologue
    .line 513
    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    #@2
    .line 521
    const-wide/16 v2, 0x0

    #@4
    cmp-long v2, p2, v2

    #@6
    if-gtz v2, :cond_2

    #@8
    .line 522
    const-wide/high16 v2, -0x8000000000000000L

    #@a
    cmp-long v2, p2, v2

    #@c
    if-nez v2, :cond_1

    #@e
    .line 523
    const/16 v2, 0x13

    #@10
    iput v2, p0, Ljava/text/DigitList;->count:I

    #@12
    const/16 v2, 0x13

    #@14
    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    #@16
    .line 524
    sget-object v2, Ljava/text/DigitList;->LONG_MIN_REP:[C

    #@18
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@1a
    iget v4, p0, Ljava/text/DigitList;->count:I

    #@1c
    const/4 v5, 0x0

    #@1d
    const/4 v6, 0x0

    #@1e
    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@21
    .line 545
    :goto_0
    if-lez p4, :cond_0

    #@23
    invoke-direct {p0, p4}, Ljava/text/DigitList;->round(I)V

    #@26
    .line 512
    :cond_0
    return-void

    #@27
    .line 526
    :cond_1
    const/4 v2, 0x0

    #@28
    iput v2, p0, Ljava/text/DigitList;->count:I

    #@2a
    const/4 v2, 0x0

    #@2b
    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    #@2d
    goto :goto_0

    #@2e
    .line 531
    :cond_2
    const/16 v0, 0x13

    #@30
    .line 533
    .local v0, "left":I
    :goto_1
    const-wide/16 v2, 0x0

    #@32
    cmp-long v2, p2, v2

    #@34
    if-lez v2, :cond_3

    #@36
    .line 534
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@38
    add-int/lit8 v0, v0, -0x1

    #@3a
    const-wide/16 v4, 0xa

    #@3c
    rem-long v4, p2, v4

    #@3e
    const-wide/16 v6, 0x30

    #@40
    add-long/2addr v4, v6

    #@41
    long-to-int v3, v4

    #@42
    int-to-char v3, v3

    #@43
    aput-char v3, v2, v0

    #@45
    .line 535
    const-wide/16 v2, 0xa

    #@47
    div-long/2addr p2, v2

    #@48
    goto :goto_1

    #@49
    .line 537
    :cond_3
    rsub-int/lit8 v2, v0, 0x13

    #@4b
    iput v2, p0, Ljava/text/DigitList;->decimalAt:I

    #@4d
    .line 540
    const/16 v1, 0x12

    #@4f
    .local v1, "right":I
    :goto_2
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@51
    aget-char v2, v2, v1

    #@53
    const/16 v3, 0x30

    #@55
    if-ne v2, v3, :cond_4

    #@57
    add-int/lit8 v1, v1, -0x1

    #@59
    goto :goto_2

    #@5a
    .line 542
    :cond_4
    sub-int v2, v1, v0

    #@5c
    add-int/lit8 v2, v2, 0x1

    #@5e
    iput v2, p0, Ljava/text/DigitList;->count:I

    #@60
    .line 543
    iget-object v2, p0, Ljava/text/DigitList;->digits:[C

    #@62
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@64
    iget v4, p0, Ljava/text/DigitList;->count:I

    #@66
    const/4 v5, 0x0

    #@67
    invoke-static {v2, v0, v3, v5, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@6a
    goto :goto_0
.end method

.method final set(ZLjava/lang/String;IZ)V
    .locals 11
    .param p1, "isNegative"    # Z
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "maximumDigits"    # I
    .param p4, "fixedPoint"    # Z

    #@0
    .prologue
    .line 297
    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    #@2
    .line 298
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v5

    #@6
    .line 299
    .local v5, "len":I
    invoke-direct {p0, v5}, Ljava/text/DigitList;->getDataChars(I)[C

    #@9
    move-result-object v7

    #@a
    .line 300
    .local v7, "source":[C
    const/4 v8, 0x0

    #@b
    const/4 v9, 0x0

    #@c
    invoke-virtual {p2, v8, v5, v7, v9}, Ljava/lang/String;->getChars(II[CI)V

    #@f
    .line 302
    const/4 v8, -0x1

    #@10
    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@12
    .line 303
    const/4 v8, 0x0

    #@13
    iput v8, p0, Ljava/text/DigitList;->count:I

    #@15
    .line 304
    const/4 v1, 0x0

    #@16
    .line 307
    .local v1, "exponent":I
    const/4 v4, 0x0

    #@17
    .line 308
    .local v4, "leadingZerosAfterDecimal":I
    const/4 v6, 0x0

    #@18
    .line 310
    .local v6, "nonZeroDigitSeen":Z
    const/4 v2, 0x0

    #@19
    .local v2, "i":I
    move v3, v2

    #@1a
    .end local v2    # "i":I
    .end local v6    # "nonZeroDigitSeen":Z
    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_d

    #@1c
    .line 311
    add-int/lit8 v2, v3, 0x1

    #@1e
    .end local v3    # "i":I
    .restart local v2    # "i":I
    aget-char v0, v7, v3

    #@20
    .line 312
    .local v0, "c":C
    const/16 v8, 0x2e

    #@22
    if-ne v0, v8, :cond_1

    #@24
    .line 313
    iget v8, p0, Ljava/text/DigitList;->count:I

    #@26
    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@28
    :cond_0
    :goto_1
    move v3, v2

    #@29
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@2a
    .line 314
    .end local v3    # "i":I
    .restart local v2    # "i":I
    :cond_1
    const/16 v8, 0x65

    #@2c
    if-eq v0, v8, :cond_2

    #@2e
    const/16 v8, 0x45

    #@30
    if-ne v0, v8, :cond_5

    #@32
    .line 315
    :cond_2
    invoke-static {v7, v2, v5}, Ljava/text/DigitList;->parseInt([CII)I

    #@35
    move-result v1

    #@36
    .line 328
    .end local v0    # "c":C
    :goto_2
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@38
    const/4 v9, -0x1

    #@39
    if-ne v8, v9, :cond_3

    #@3b
    .line 329
    iget v8, p0, Ljava/text/DigitList;->count:I

    #@3d
    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@3f
    .line 331
    :cond_3
    if-eqz v6, :cond_4

    #@41
    .line 332
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@43
    sub-int v9, v1, v4

    #@45
    add-int/2addr v8, v9

    #@46
    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@48
    .line 335
    :cond_4
    if-eqz p4, :cond_a

    #@4a
    .line 341
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@4c
    neg-int v8, v8

    #@4d
    if-le v8, p3, :cond_8

    #@4f
    .line 344
    const/4 v8, 0x0

    #@50
    iput v8, p0, Ljava/text/DigitList;->count:I

    #@52
    .line 345
    return-void

    #@53
    .line 318
    .restart local v0    # "c":C
    :cond_5
    if-nez v6, :cond_6

    #@55
    .line 319
    const/16 v8, 0x30

    #@57
    if-eq v0, v8, :cond_7

    #@59
    const/4 v6, 0x1

    #@5a
    .line 320
    .local v6, "nonZeroDigitSeen":Z
    :goto_3
    if-nez v6, :cond_6

    #@5c
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@5e
    const/4 v9, -0x1

    #@5f
    if-eq v8, v9, :cond_6

    #@61
    .line 321
    add-int/lit8 v4, v4, 0x1

    #@63
    .line 323
    .end local v6    # "nonZeroDigitSeen":Z
    :cond_6
    if-eqz v6, :cond_0

    #@65
    .line 324
    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    #@67
    iget v9, p0, Ljava/text/DigitList;->count:I

    #@69
    add-int/lit8 v10, v9, 0x1

    #@6b
    iput v10, p0, Ljava/text/DigitList;->count:I

    #@6d
    aput-char v0, v8, v9

    #@6f
    goto :goto_1

    #@70
    .line 319
    :cond_7
    const/4 v6, 0x0

    #@71
    goto :goto_3

    #@72
    .line 346
    .end local v0    # "c":C
    :cond_8
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@74
    neg-int v8, v8

    #@75
    if-ne v8, p3, :cond_a

    #@77
    .line 349
    const/4 v8, 0x0

    #@78
    invoke-direct {p0, v8}, Ljava/text/DigitList;->shouldRoundUp(I)Z

    #@7b
    move-result v8

    #@7c
    if-eqz v8, :cond_9

    #@7e
    .line 350
    const/4 v8, 0x1

    #@7f
    iput v8, p0, Ljava/text/DigitList;->count:I

    #@81
    .line 351
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@83
    add-int/lit8 v8, v8, 0x1

    #@85
    iput v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@87
    .line 352
    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    #@89
    const/16 v9, 0x31

    #@8b
    const/4 v10, 0x0

    #@8c
    aput-char v9, v8, v10

    #@8e
    .line 356
    :goto_4
    return-void

    #@8f
    .line 354
    :cond_9
    const/4 v8, 0x0

    #@90
    iput v8, p0, Ljava/text/DigitList;->count:I

    #@92
    goto :goto_4

    #@93
    .line 362
    :cond_a
    :goto_5
    iget v8, p0, Ljava/text/DigitList;->count:I

    #@95
    const/4 v9, 0x1

    #@96
    if-le v8, v9, :cond_b

    #@98
    iget-object v8, p0, Ljava/text/DigitList;->digits:[C

    #@9a
    iget v9, p0, Ljava/text/DigitList;->count:I

    #@9c
    add-int/lit8 v9, v9, -0x1

    #@9e
    aget-char v8, v8, v9

    #@a0
    const/16 v9, 0x30

    #@a2
    if-ne v8, v9, :cond_b

    #@a4
    .line 363
    iget v8, p0, Ljava/text/DigitList;->count:I

    #@a6
    add-int/lit8 v8, v8, -0x1

    #@a8
    iput v8, p0, Ljava/text/DigitList;->count:I

    #@aa
    goto :goto_5

    #@ab
    .line 368
    :cond_b
    if-eqz p4, :cond_c

    #@ad
    iget v8, p0, Ljava/text/DigitList;->decimalAt:I

    #@af
    add-int/2addr p3, v8

    #@b0
    .end local p3    # "maximumDigits":I
    :cond_c
    invoke-direct {p0, p3}, Ljava/text/DigitList;->round(I)V

    #@b3
    .line 296
    return-void

    #@b4
    .end local v2    # "i":I
    .restart local v3    # "i":I
    .restart local p3    # "maximumDigits":I
    :cond_d
    move v2, v3

    #@b5
    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method final set(ZLjava/math/BigDecimal;IZ)V
    .locals 2
    .param p1, "isNegative"    # Z
    .param p2, "source"    # Ljava/math/BigDecimal;
    .param p3, "maximumDigits"    # I
    .param p4, "fixedPoint"    # Z

    #@0
    .prologue
    .line 559
    invoke-virtual {p2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 560
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    invoke-direct {p0, v1}, Ljava/text/DigitList;->extendDigits(I)V

    #@b
    .line 562
    invoke-virtual {p0, p1, v0, p3, p4}, Ljava/text/DigitList;->set(ZLjava/lang/String;IZ)V

    #@e
    .line 558
    return-void
.end method

.method final set(ZLjava/math/BigInteger;I)V
    .locals 5
    .param p1, "isNegative"    # Z
    .param p2, "source"    # Ljava/math/BigInteger;
    .param p3, "maximumDigits"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 574
    iput-boolean p1, p0, Ljava/text/DigitList;->isNegative:Z

    #@3
    .line 575
    invoke-virtual {p2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    .line 576
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@a
    move-result v0

    #@b
    .line 577
    .local v0, "len":I
    invoke-direct {p0, v0}, Ljava/text/DigitList;->extendDigits(I)V

    #@e
    .line 578
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@10
    invoke-virtual {v2, v4, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    #@13
    .line 580
    iput v0, p0, Ljava/text/DigitList;->decimalAt:I

    #@15
    .line 582
    add-int/lit8 v1, v0, -0x1

    #@17
    .local v1, "right":I
    :goto_0
    if-ltz v1, :cond_0

    #@19
    iget-object v3, p0, Ljava/text/DigitList;->digits:[C

    #@1b
    aget-char v3, v3, v1

    #@1d
    const/16 v4, 0x30

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    goto :goto_0

    #@24
    .line 584
    :cond_0
    add-int/lit8 v3, v1, 0x1

    #@26
    iput v3, p0, Ljava/text/DigitList;->count:I

    #@28
    .line 586
    if-lez p3, :cond_1

    #@2a
    .line 587
    invoke-direct {p0, p3}, Ljava/text/DigitList;->round(I)V

    #@2d
    .line 573
    :cond_1
    return-void
.end method

.method setRoundingMode(Ljava/math/RoundingMode;)V
    .locals 0
    .param p1, "r"    # Ljava/math/RoundingMode;

    #@0
    .prologue
    .line 126
    iput-object p1, p0, Ljava/text/DigitList;->roundingMode:Ljava/math/RoundingMode;

    #@2
    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 681
    invoke-virtual {p0}, Ljava/text/DigitList;->isZero()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 682
    const-string/jumbo v1, "0"

    #@9
    return-object v1

    #@a
    .line 684
    :cond_0
    invoke-direct {p0}, Ljava/text/DigitList;->getStringBuffer()Ljava/lang/StringBuffer;

    #@d
    move-result-object v0

    #@e
    .line 685
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string/jumbo v1, "0."

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@14
    .line 686
    iget-object v1, p0, Ljava/text/DigitList;->digits:[C

    #@16
    iget v2, p0, Ljava/text/DigitList;->count:I

    #@18
    const/4 v3, 0x0

    #@19
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@1c
    .line 687
    const-string/jumbo v1, "x10^"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 688
    iget v1, p0, Ljava/text/DigitList;->decimalAt:I

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@27
    .line 689
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1
.end method
