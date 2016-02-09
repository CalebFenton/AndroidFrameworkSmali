.class public Landroid/icu/text/PluralRules$FixedDecimal;
.super Ljava/lang/Number;
.source "PluralRules.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedDecimal"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/text/PluralRules$FixedDecimal;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static synthetic -android_icu_text_PluralRules$OperandSwitchesValues:[I = null

.field static final MAX:J = 0xde0b6b3a7640000L

.field private static final MAX_INTEGER_PART:J = 0x3b9aca00L

.field private static final serialVersionUID:J = -0x42016b294abcff1dL


# instance fields
.field private final baseFactor:I

.field public final decimalDigits:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final decimalDigitsWithoutTrailingZeros:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final hasIntegerValue:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final integerValue:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final isNegative:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final source:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final visibleDecimalDigitCount:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final visibleDecimalDigitCountWithoutTrailingZeros:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/text/PluralRules$FixedDecimal;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    #@2
    return v0
.end method

.method private static synthetic -getandroid_icu_text_PluralRules$OperandSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/PluralRules$FixedDecimal;->-android_icu_text_PluralRules$OperandSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/PluralRules$FixedDecimal;->-android_icu_text_PluralRules$OperandSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/PluralRules$Operand;->values()[Landroid/icu/text/PluralRules$Operand;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    #@22
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x6

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    #@2b
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x7

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    #@34
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x3

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    #@3d
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x4

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    #@46
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x5

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    #@4d
    :goto_6
    sput-object v0, Landroid/icu/text/PluralRules$FixedDecimal;->-android_icu_text_PluralRules$OperandSwitchesValues:[I

    #@4f
    return-object v0

    #@50
    :catch_0
    move-exception v1

    #@51
    goto :goto_6

    #@52
    :catch_1
    move-exception v1

    #@53
    goto :goto_5

    #@54
    :catch_2
    move-exception v1

    #@55
    goto :goto_4

    #@56
    :catch_3
    move-exception v1

    #@57
    goto :goto_3

    #@58
    :catch_4
    move-exception v1

    #@59
    goto :goto_2

    #@5a
    :catch_5
    move-exception v1

    #@5b
    goto :goto_1

    #@5c
    :catch_6
    move-exception v1

    #@5d
    goto :goto_0
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "n"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 637
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;->decimals(D)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@7
    .line 636
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 7
    .param p1, "n"    # D
    .param p3, "v"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 615
    invoke-static {p1, p2, p3}, Landroid/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    #@3
    move-result v0

    #@4
    int-to-long v4, v0

    #@5
    move-object v0, p0

    #@6
    move-wide v1, p1

    #@7
    move v3, p3

    #@8
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@b
    .line 614
    return-void
.end method

.method public constructor <init>(DIJ)V
    .locals 9
    .param p1, "n"    # D
    .param p3, "v"    # I
    .param p4, "f"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 571
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    #@3
    .line 572
    const-wide/16 v4, 0x0

    #@5
    cmpg-double v3, p1, v4

    #@7
    if-gez v3, :cond_0

    #@9
    const/4 v3, 0x1

    #@a
    :goto_0
    iput-boolean v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    #@c
    .line 573
    iget-boolean v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    #@e
    if-eqz v3, :cond_1

    #@10
    neg-double v4, p1

    #@11
    :goto_1
    iput-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@13
    .line 574
    iput p3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@15
    .line 575
    iput-wide p4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@17
    .line 576
    const-wide v4, 0x43abc16d674ec800L    # 1.0E18

    #@1c
    cmpl-double v3, p1, v4

    #@1e
    if-lez v3, :cond_2

    #@20
    .line 577
    const-wide v4, 0xde0b6b3a7640000L

    #@25
    .line 576
    :goto_2
    iput-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@27
    .line 579
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@29
    iget-wide v6, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@2b
    long-to-double v6, v6

    #@2c
    cmpl-double v3, v4, v6

    #@2e
    if-nez v3, :cond_3

    #@30
    const/4 v3, 0x1

    #@31
    :goto_3
    iput-boolean v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    #@33
    .line 593
    const-wide/16 v4, 0x0

    #@35
    cmp-long v3, p4, v4

    #@37
    if-nez v3, :cond_4

    #@39
    .line 594
    const-wide/16 v4, 0x0

    #@3b
    iput-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    #@3d
    .line 595
    const/4 v3, 0x0

    #@3e
    iput v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    #@40
    .line 606
    :goto_4
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    #@42
    int-to-double v6, p3

    #@43
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@46
    move-result-wide v4

    #@47
    double-to-int v3, v4

    #@48
    iput v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    #@4a
    .line 571
    return-void

    #@4b
    .line 572
    :cond_0
    const/4 v3, 0x0

    #@4c
    goto :goto_0

    #@4d
    :cond_1
    move-wide v4, p1

    #@4e
    .line 573
    goto :goto_1

    #@4f
    .line 578
    :cond_2
    double-to-long v4, p1

    #@50
    goto :goto_2

    #@51
    .line 579
    :cond_3
    const/4 v3, 0x0

    #@52
    goto :goto_3

    #@53
    .line 597
    :cond_4
    move-wide v0, p4

    #@54
    .line 598
    .local v0, "fdwtz":J
    move v2, p3

    #@55
    .line 599
    .local v2, "trimmedCount":I
    :goto_5
    const-wide/16 v4, 0xa

    #@57
    rem-long v4, v0, v4

    #@59
    const-wide/16 v6, 0x0

    #@5b
    cmp-long v3, v4, v6

    #@5d
    if-nez v3, :cond_5

    #@5f
    .line 600
    const-wide/16 v4, 0xa

    #@61
    div-long/2addr v0, v4

    #@62
    .line 601
    add-int/lit8 v2, v2, -0x1

    #@64
    goto :goto_5

    #@65
    .line 603
    :cond_5
    iput-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    #@67
    .line 604
    iput v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    #@69
    goto :goto_4
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "n"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 646
    long-to-double v0, p1

    #@1
    const/4 v2, 0x0

    #@2
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@5
    .line 645
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "n"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 708
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    #@3
    move-result-wide v0

    #@4
    invoke-static {p1}, Landroid/icu/text/PluralRules$FixedDecimal;->getVisibleFractionCount(Ljava/lang/String;)I

    #@7
    move-result v2

    #@8
    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    #@b
    .line 706
    return-void
.end method

.method public static decimals(D)I
    .locals 18
    .param p0, "n"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 661
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isInfinite(D)Z

    #@3
    move-result v11

    #@4
    if-nez v11, :cond_0

    #@6
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->isNaN(D)Z

    #@9
    move-result v11

    #@a
    if-eqz v11, :cond_1

    #@c
    .line 662
    :cond_0
    const/4 v11, 0x0

    #@d
    return v11

    #@e
    .line 664
    :cond_1
    const-wide/16 v14, 0x0

    #@10
    cmpg-double v11, p0, v14

    #@12
    if-gez v11, :cond_2

    #@14
    .line 665
    move-wide/from16 v0, p0

    #@16
    neg-double v0, v0

    #@17
    move-wide/from16 p0, v0

    #@19
    .line 667
    :cond_2
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    #@1c
    move-result-wide v14

    #@1d
    cmpl-double v11, p0, v14

    #@1f
    if-nez v11, :cond_3

    #@21
    .line 668
    const/4 v11, 0x0

    #@22
    return v11

    #@23
    .line 670
    :cond_3
    const-wide v14, 0x41cdcd6500000000L    # 1.0E9

    #@28
    cmpg-double v11, p0, v14

    #@2a
    if-gez v11, :cond_6

    #@2c
    .line 671
    const-wide v14, 0x412e848000000000L    # 1000000.0

    #@31
    mul-double v14, v14, p0

    #@33
    double-to-long v14, v14

    #@34
    const-wide/32 v16, 0xf4240

    #@37
    rem-long v12, v14, v16

    #@39
    .line 672
    .local v12, "temp":J
    const/16 v9, 0xa

    #@3b
    .local v9, "mask":I
    const/4 v3, 0x6

    #@3c
    .local v3, "digits":I
    :goto_0
    if-lez v3, :cond_5

    #@3e
    .line 673
    int-to-long v14, v9

    #@3f
    rem-long v14, v12, v14

    #@41
    const-wide/16 v16, 0x0

    #@43
    cmp-long v11, v14, v16

    #@45
    if-eqz v11, :cond_4

    #@47
    .line 674
    return v3

    #@48
    .line 672
    :cond_4
    mul-int/lit8 v9, v9, 0xa

    #@4a
    add-int/lit8 v3, v3, -0x1

    #@4c
    goto :goto_0

    #@4d
    .line 677
    :cond_5
    const/4 v11, 0x0

    #@4e
    return v11

    #@4f
    .line 679
    .end local v3    # "digits":I
    .end local v9    # "mask":I
    .end local v12    # "temp":J
    :cond_6
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@51
    const-string/jumbo v14, "%1.15e"

    #@54
    const/4 v15, 0x1

    #@55
    new-array v15, v15, [Ljava/lang/Object;

    #@57
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5a
    move-result-object v16

    #@5b
    const/16 v17, 0x0

    #@5d
    aput-object v16, v15, v17

    #@5f
    invoke-static {v11, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@62
    move-result-object v2

    #@63
    .line 680
    .local v2, "buf":Ljava/lang/String;
    const/16 v11, 0x65

    #@65
    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(I)I

    #@68
    move-result v4

    #@69
    .line 681
    .local v4, "ePos":I
    add-int/lit8 v5, v4, 0x1

    #@6b
    .line 682
    .local v5, "expNumPos":I
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@6e
    move-result v11

    #@6f
    const/16 v14, 0x2b

    #@71
    if-ne v11, v14, :cond_7

    #@73
    .line 683
    add-int/lit8 v5, v5, 0x1

    #@75
    .line 685
    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@78
    move-result-object v7

    #@79
    .line 686
    .local v7, "exponentStr":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@7c
    move-result v6

    #@7d
    .line 687
    .local v6, "exponent":I
    add-int/lit8 v11, v4, -0x2

    #@7f
    sub-int v10, v11, v6

    #@81
    .line 688
    .local v10, "numFractionDigits":I
    if-gez v10, :cond_8

    #@83
    .line 689
    const/4 v11, 0x0

    #@84
    return v11

    #@85
    .line 691
    :cond_8
    add-int/lit8 v8, v4, -0x1

    #@87
    .local v8, "i":I
    :goto_1
    if-lez v10, :cond_9

    #@89
    .line 692
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    #@8c
    move-result v11

    #@8d
    const/16 v14, 0x30

    #@8f
    if-eq v11, v14, :cond_a

    #@91
    .line 697
    :cond_9
    return v10

    #@92
    .line 695
    :cond_a
    add-int/lit8 v10, v10, -0x1

    #@94
    .line 691
    add-int/lit8 v8, v8, -0x1

    #@96
    goto :goto_1
.end method

.method private static getFractionalDigits(DI)I
    .locals 8
    .param p0, "n"    # D
    .param p2, "v"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 619
    if-nez p2, :cond_0

    #@3
    .line 620
    return v1

    #@4
    .line 622
    :cond_0
    const-wide/16 v4, 0x0

    #@6
    cmpg-double v1, p0, v4

    #@8
    if-gez v1, :cond_1

    #@a
    .line 623
    neg-double p0, p0

    #@b
    .line 625
    :cond_1
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    #@d
    int-to-double v6, p2

    #@e
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@11
    move-result-wide v4

    #@12
    double-to-int v0, v4

    #@13
    .line 626
    .local v0, "baseFactor":I
    int-to-double v4, v0

    #@14
    mul-double/2addr v4, p0

    #@15
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    #@18
    move-result-wide v2

    #@19
    .line 627
    .local v2, "scaled":J
    int-to-long v4, v0

    #@1a
    rem-long v4, v2, v4

    #@1c
    long-to-int v1, v4

    #@1d
    return v1
.end method

.method public static getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    .locals 1
    .param p0, "t"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 743
    invoke-static {p0}, Landroid/icu/text/PluralRules$Operand;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getVisibleFractionCount(Ljava/lang/String;)I
    .locals 3
    .param p0, "value"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 712
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4
    move-result-object p0

    #@5
    .line 713
    const/16 v1, 0x2e

    #@7
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v1

    #@b
    add-int/lit8 v0, v1, 0x1

    #@d
    .line 714
    .local v0, "decimalPos":I
    if-nez v0, :cond_0

    #@f
    .line 715
    return v2

    #@10
    .line 717
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@13
    move-result v1

    #@14
    sub-int/2addr v1, v0

    #@15
    return v1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 877
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 872
    new-instance v0, Ljava/io/NotSerializableException;

    #@2
    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    #@5
    throw v0
.end method


# virtual methods
.method public compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I
    .locals 10
    .param p1, "other"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-wide/16 v8, 0x0

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, -0x1

    #@4
    .line 753
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@6
    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@8
    cmp-long v4, v4, v6

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 754
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@e
    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@10
    cmp-long v4, v4, v6

    #@12
    if-gez v4, :cond_0

    #@14
    :goto_0
    return v2

    #@15
    :cond_0
    move v2, v3

    #@16
    goto :goto_0

    #@17
    .line 756
    :cond_1
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@19
    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@1b
    cmpl-double v4, v4, v6

    #@1d
    if-eqz v4, :cond_3

    #@1f
    .line 757
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@21
    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@23
    cmpg-double v4, v4, v6

    #@25
    if-gez v4, :cond_2

    #@27
    :goto_1
    return v2

    #@28
    :cond_2
    move v2, v3

    #@29
    goto :goto_1

    #@2a
    .line 759
    :cond_3
    iget v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@2c
    iget v5, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@2e
    if-eq v4, v5, :cond_5

    #@30
    .line 760
    iget v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@32
    iget v5, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@34
    if-ge v4, v5, :cond_4

    #@36
    :goto_2
    return v2

    #@37
    :cond_4
    move v2, v3

    #@38
    goto :goto_2

    #@39
    .line 762
    :cond_5
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@3b
    iget-wide v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@3d
    sub-long v0, v4, v6

    #@3f
    .line 763
    .local v0, "diff":J
    cmp-long v4, v0, v8

    #@41
    if-eqz v4, :cond_7

    #@43
    .line 764
    cmp-long v4, v0, v8

    #@45
    if-gez v4, :cond_6

    #@47
    :goto_3
    return v2

    #@48
    :cond_6
    move v2, v3

    #@49
    goto :goto_3

    #@4a
    .line 766
    :cond_7
    const/4 v2, 0x0

    #@4b
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 752
    check-cast p1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules$FixedDecimal;->compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public doubleValue()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 857
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@6
    neg-double v0, v0

    #@7
    :goto_0
    return-wide v0

    #@8
    :cond_0
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@a
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "arg0"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 776
    if-nez p1, :cond_0

    #@4
    .line 777
    return v2

    #@5
    .line 779
    :cond_0
    if-ne p1, p0, :cond_1

    #@7
    .line 780
    return v1

    #@8
    .line 782
    :cond_1
    instance-of v3, p1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@a
    if-nez v3, :cond_2

    #@c
    .line 783
    return v2

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 785
    check-cast v0, Landroid/icu/text/PluralRules$FixedDecimal;

    #@10
    .line 786
    .local v0, "other":Landroid/icu/text/PluralRules$FixedDecimal;
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@12
    iget-wide v6, v0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@14
    cmpl-double v3, v4, v6

    #@16
    if-nez v3, :cond_3

    #@18
    iget v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@1a
    iget v4, v0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@1c
    if-ne v3, v4, :cond_3

    #@1e
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@20
    iget-wide v6, v0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@22
    cmp-long v3, v4, v6

    #@24
    if-nez v3, :cond_3

    #@26
    :goto_0
    return v1

    #@27
    :cond_3
    move v1, v2

    #@28
    goto :goto_0
.end method

.method public floatValue()F
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 847
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@2
    double-to-float v0, v0

    #@3
    return v0
.end method

.method public get(Landroid/icu/text/PluralRules$Operand;)D
    .locals 2
    .param p1, "operand"    # Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 727
    invoke-static {}, Landroid/icu/text/PluralRules$FixedDecimal;->-getandroid_icu_text_PluralRules$OperandSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 728
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@f
    return-wide v0

    #@10
    .line 729
    :pswitch_0
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@12
    long-to-double v0, v0

    #@13
    return-wide v0

    #@14
    .line 730
    :pswitch_1
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@16
    long-to-double v0, v0

    #@17
    return-wide v0

    #@18
    .line 731
    :pswitch_2
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    #@1a
    long-to-double v0, v0

    #@1b
    return-wide v0

    #@1c
    .line 732
    :pswitch_3
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@1e
    int-to-double v0, v0

    #@1f
    return-wide v0

    #@20
    .line 733
    :pswitch_4
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    #@22
    int-to-double v0, v0

    #@23
    return-wide v0

    #@24
    .line 727
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBaseFactor()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 557
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    #@2
    return v0
.end method

.method public getDecimalDigits()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 512
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@2
    return-wide v0
.end method

.method public getDecimalDigitsWithoutTrailingZeros()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 521
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    #@2
    return-wide v0
.end method

.method public getIntegerValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 530
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@2
    return-wide v0
.end method

.method public getShiftedValue()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 866
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@2
    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    #@4
    int-to-long v2, v2

    #@5
    mul-long/2addr v0, v2

    #@6
    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@8
    add-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public getSource()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 485
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@2
    return-wide v0
.end method

.method public getVisibleDecimalDigitCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 494
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@2
    return v0
.end method

.method public getVisibleDecimalDigitCountWithoutTrailingZeros()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 503
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    #@2
    return v0
.end method

.method public hasIntegerValue()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 816
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 797
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    #@2
    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@4
    iget-wide v4, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@6
    const-wide v6, 0x4042800000000000L    # 37.0

    #@b
    mul-double/2addr v4, v6

    #@c
    double-to-int v3, v4

    #@d
    add-int/2addr v2, v3

    #@e
    mul-int/lit8 v2, v2, 0x25

    #@10
    int-to-long v2, v2

    #@11
    add-long/2addr v0, v2

    #@12
    long-to-int v0, v0

    #@13
    return v0
.end method

.method public intValue()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 827
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@2
    long-to-int v0, v0

    #@3
    return v0
.end method

.method public isHasIntegerValue()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 539
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    #@2
    return v0
.end method

.method public isNegative()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 548
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    #@2
    return v0
.end method

.method public longValue()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 837
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "%."

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "f"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    const/4 v1, 0x1

    #@1e
    new-array v1, v1, [Ljava/lang/Object;

    #@20
    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    #@22
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@25
    move-result-object v2

    #@26
    const/4 v3, 0x0

    #@27
    aput-object v2, v1, v3

    #@29
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method
