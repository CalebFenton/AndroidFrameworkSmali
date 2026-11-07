.class public Landroid/icu/text/PluralRules$FixedDecimal;
.super Ljava/lang/Number;
.source "PluralRules.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/icu/text/PluralRules$IFixedDecimal;


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
        "Ljava/lang/Comparable<",
        "Landroid/icu/text/PluralRules$FixedDecimal;",
        ">;",
        "Landroid/icu/text/PluralRules$IFixedDecimal;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final greylist-max-o MAX:J = 0xde0b6b3a7640000L

.field private static final greylist-max-o MAX_INTEGER_PART:J = 0x3b9aca00L

.field private static final whitelist serialVersionUID:J = -0x42016b294abcff1dL


# instance fields
.field private final greylist-max-o baseFactor:I

.field final greylist-max-o decimalDigits:J

.field final greylist-max-o decimalDigitsWithoutTrailingZeros:J

.field final blacklist exponent:I

.field final greylist-max-o hasIntegerValue:Z

.field final greylist-max-o integerValue:J

.field final greylist-max-o isNegative:Z

.field final greylist-max-o source:D

.field final greylist-max-o visibleDecimalDigitCount:I

.field final greylist-max-o visibleDecimalDigitCountWithoutTrailingZeros:I


# direct methods
.method public constructor greylist-max-o <init>(D)V
    .registers 4
    .param p1, "n"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 832
    invoke-static {p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;->decimals(D)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    .line 833
    return-void
.end method

.method public constructor greylist-max-o <init>(DI)V
    .registers 11
    .param p1, "n"    # D
    .param p3, "v"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 809
    invoke-static {p1, p2, p3}, Landroid/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    .end local p1    # "n":D
    .end local p3    # "v":I
    .local v2, "n":D
    .local v4, "v":I
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    .line 810
    return-void
.end method

.method public constructor greylist-max-o <init>(DIJ)V
    .registers 13
    .param p1, "n"    # D
    .param p3, "v"    # I
    .param p4, "f"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 790
    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    .end local p1    # "n":D
    .end local p3    # "v":I
    .end local p4    # "f":J
    .local v1, "n":D
    .local v3, "v":I
    .local v4, "f":J
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJI)V

    .line 791
    return-void
.end method

.method public constructor blacklist <init>(DIJI)V
    .registers 15
    .param p1, "n"    # D
    .param p3, "v"    # I
    .param p4, "f"    # J
    .param p6, "e"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    move v7, p6

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    .end local p1    # "n":D
    .end local p3    # "v":I
    .end local p4    # "f":J
    .end local p6    # "e":I
    .local v1, "n":D
    .local v3, "v":I
    .local v4, "f":J
    .local v6, "e":I
    invoke-direct/range {v0 .. v7}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJII)V

    .line 781
    return-void
.end method

.method public constructor blacklist <init>(DIJII)V
    .registers 24
    .param p1, "n"    # D
    .param p3, "v"    # I
    .param p4, "f"    # J
    .param p6, "e"    # I
    .param p7, "c"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 733
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    move-wide/from16 v4, p4

    invoke-direct {v0}, Ljava/lang/Number;-><init>()V

    .line 734
    const-wide/16 v6, 0x0

    cmpg-double v6, v1, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-gez v6, :cond_15

    move v6, v7

    goto :goto_16

    :cond_15
    move v6, v8

    :goto_16
    iput-boolean v6, v0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    .line 735
    iget-boolean v6, v0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v6, :cond_1e

    neg-double v9, v1

    goto :goto_1f

    :cond_1e
    move-wide v9, v1

    :goto_1f
    iput-wide v9, v0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    .line 736
    iput v3, v0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    .line 737
    iput-wide v4, v0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    .line 738
    const-wide v9, 0x43abc16d674ec800L    # 1.0E18

    cmpl-double v6, v1, v9

    if-lez v6, :cond_34

    const-wide v9, 0xde0b6b3a7640000L

    goto :goto_37

    :cond_34
    iget-wide v9, v0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    double-to-long v9, v9

    :goto_37
    iput-wide v9, v0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    .line 739
    move/from16 v6, p6

    .line 740
    .local v6, "initExpVal":I
    if-nez v6, :cond_3f

    .line 741
    move/from16 v6, p7

    .line 743
    :cond_3f
    iput v6, v0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    .line 744
    iget-wide v9, v0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v11, v0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v11, v11

    cmpl-double v9, v9, v11

    if-nez v9, :cond_4b

    goto :goto_4c

    :cond_4b
    move v7, v8

    :goto_4c
    iput-boolean v7, v0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    .line 758
    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    if-nez v7, :cond_59

    .line 759
    iput-wide v9, v0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 760
    iput v8, v0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    goto :goto_6d

    .line 762
    :cond_59
    move-wide/from16 v7, p4

    .line 763
    .local v7, "fdwtz":J
    move/from16 v11, p3

    .line 764
    .local v11, "trimmedCount":I
    :goto_5d
    const-wide/16 v12, 0xa

    rem-long v14, v7, v12

    cmp-long v14, v14, v9

    if-nez v14, :cond_69

    .line 765
    div-long/2addr v7, v12

    .line 766
    add-int/lit8 v11, v11, -0x1

    goto :goto_5d

    .line 768
    :cond_69
    iput-wide v7, v0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 769
    iput v11, v0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    .line 771
    .end local v7    # "fdwtz":J
    .end local v11    # "trimmedCount":I
    :goto_6d
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    int-to-double v9, v3

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    .line 772
    return-void
.end method

.method public constructor greylist-max-o <init>(J)V
    .registers 6
    .param p1, "n"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 842
    long-to-double v0, p1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DI)V

    .line 843
    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/text/PluralRules$FixedDecimal;)V
    .registers 4
    .param p1, "other"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 903
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 907
    iget-wide v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iput-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    .line 908
    iget v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iput v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    .line 909
    iget v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    iput v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    .line 911
    iget-wide v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iput-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    .line 912
    iget-wide v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    iput-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    .line 914
    iget-wide v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iput-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    .line 915
    iget-boolean v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    iput-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    .line 916
    iget-boolean v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    iput-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    .line 917
    iget v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    iput v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    .line 918
    iget v0, p1, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    iput v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    .line 919
    return-void
.end method

.method public static blacklist createWithExponent(DII)Landroid/icu/text/PluralRules$FixedDecimal;
    .registers 11
    .param p0, "n"    # D
    .param p2, "v"    # I
    .param p3, "e"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 799
    new-instance v0, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-static {p0, p1, p2}, Landroid/icu/text/PluralRules$FixedDecimal;->getFractionalDigits(DI)I

    move-result v1

    int-to-long v4, v1

    move-wide v1, p0

    move v3, p2

    move v6, p3

    .end local p0    # "n":D
    .end local p2    # "v":I
    .end local p3    # "e":I
    .local v1, "n":D
    .local v3, "v":I
    .local v6, "e":I
    invoke-direct/range {v0 .. v6}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJI)V

    return-object v0
.end method

.method public static greylist-max-o decimals(D)I
    .registers 11
    .param p0, "n"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8b

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_8b

    .line 861
    :cond_f
    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_16

    .line 862
    neg-double p0, p0

    .line 864
    :cond_16
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    cmpl-double v0, p0, v2

    if-nez v0, :cond_1f

    .line 865
    return v1

    .line 867
    :cond_1f
    const-wide v2, 0x41cdcd6500000000L    # 1.0E9

    cmpg-double v0, p0, v2

    if-gez v0, :cond_48

    .line 868
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v2, p0

    double-to-long v2, v2

    const-wide/32 v4, 0xf4240

    rem-long/2addr v2, v4

    .line 869
    .local v2, "temp":J
    const/16 v0, 0xa

    .local v0, "mask":I
    const/4 v4, 0x6

    .local v4, "digits":I
    :goto_36
    if-lez v4, :cond_47

    .line 870
    int-to-long v5, v0

    rem-long v5, v2, v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_42

    .line 871
    return v4

    .line 869
    :cond_42
    mul-int/lit8 v0, v0, 0xa

    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    .line 874
    .end local v0    # "mask":I
    .end local v4    # "digits":I
    :cond_47
    return v1

    .line 876
    .end local v2    # "temp":J
    :cond_48
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%1.15e"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 877
    .local v0, "buf":Ljava/lang/String;
    const/16 v2, 0x65

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 878
    .local v2, "ePos":I
    add-int/lit8 v3, v2, 0x1

    .line 879
    .local v3, "expNumPos":I
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_6a

    .line 880
    add-int/lit8 v3, v3, 0x1

    .line 882
    :cond_6a
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 883
    .local v4, "exponentStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 884
    .local v5, "exponent":I
    add-int/lit8 v6, v2, -0x2

    sub-int/2addr v6, v5

    .line 885
    .local v6, "numFractionDigits":I
    if-gez v6, :cond_78

    .line 886
    return v1

    .line 888
    :cond_78
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_7a
    if-lez v6, :cond_8a

    .line 889
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_85

    .line 890
    goto :goto_8a

    .line 892
    :cond_85
    add-int/lit8 v6, v6, -0x1

    .line 888
    add-int/lit8 v1, v1, -0x1

    goto :goto_7a

    .line 894
    .end local v1    # "i":I
    :cond_8a
    :goto_8a
    return v6

    .line 859
    .end local v0    # "buf":Ljava/lang/String;
    .end local v2    # "ePos":I
    .end local v3    # "expNumPos":I
    .end local v4    # "exponentStr":Ljava/lang/String;
    .end local v5    # "exponent":I
    .end local v6    # "numFractionDigits":I
    :cond_8b
    :goto_8b
    return v1
.end method

.method private static greylist-max-o getFractionalDigits(DI)I
    .registers 8
    .param p0, "n"    # D
    .param p2, "v"    # I

    .line 813
    if-nez p2, :cond_4

    .line 814
    const/4 v0, 0x0

    return v0

    .line 816
    :cond_4
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_b

    .line 817
    neg-double p0, p0

    .line 819
    :cond_b
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 820
    .local v0, "baseFactor":I
    int-to-double v1, v0

    mul-double/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    .line 821
    .local v1, "scaled":J
    int-to-long v3, v0

    rem-long v3, v1, v3

    long-to-int v3, v3

    return v3
.end method

.method public static greylist-max-o getOperand(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;
    .registers 2
    .param p0, "t"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 950
    invoke-static {p0}, Landroid/icu/text/PluralRules$Operand;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$Operand;

    move-result-object v0

    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1098
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-direct {v0}, Ljava/io/NotSerializableException;-><init>()V

    throw v0
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I
    .registers 9
    .param p1, "other"    # Landroid/icu/text/PluralRules$FixedDecimal;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 962
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    iget v1, p1, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_17

    .line 963
    invoke-virtual {p0}, Landroid/icu/text/PluralRules$FixedDecimal;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/icu/text/PluralRules$FixedDecimal;->doubleValue()D

    move-result-wide v4

    cmpg-double v0, v0, v4

    if-gez v0, :cond_15

    goto :goto_16

    :cond_15
    move v2, v3

    :goto_16
    return v2

    .line 965
    :cond_17
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v4, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2a

    .line 966
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    iget-wide v4, p1, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    return v2

    .line 968
    :cond_2a
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v0, v0, v4

    if-eqz v0, :cond_3d

    .line 969
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v4, p1, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpg-double v0, v0, v4

    if-gez v0, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    return v2

    .line 971
    :cond_3d
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v1, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-eq v0, v1, :cond_4c

    .line 972
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v1, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ge v0, v1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v2, v3

    :goto_4b
    return v2

    .line 974
    :cond_4c
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v4, p1, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    sub-long/2addr v0, v4

    .line 975
    .local v0, "diff":J
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_5e

    .line 976
    cmp-long v4, v0, v4

    if-gez v4, :cond_5c

    goto :goto_5d

    :cond_5c
    move v2, v3

    :goto_5d
    return v2

    .line 978
    :cond_5e
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 581
    check-cast p1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules$FixedDecimal;->compareTo(Landroid/icu/text/PluralRules$FixedDecimal;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api doubleValue()D
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1087
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    neg-double v0, v0

    goto :goto_a

    :cond_8
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    :goto_a
    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "arg0"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 989
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 990
    return v0

    .line 992
    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    .line 993
    return v1

    .line 995
    :cond_8
    instance-of v2, p1, Landroid/icu/text/PluralRules$FixedDecimal;

    if-nez v2, :cond_d

    .line 996
    return v0

    .line 998
    :cond_d
    move-object v2, p1

    check-cast v2, Landroid/icu/text/PluralRules$FixedDecimal;

    .line 999
    .local v2, "other":Landroid/icu/text/PluralRules$FixedDecimal;
    iget-wide v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget-wide v5, v2, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    cmpl-double v3, v3, v5

    if-nez v3, :cond_2d

    iget v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    iget v4, v2, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    if-ne v3, v4, :cond_2d

    iget-wide v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget-wide v5, v2, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2d

    iget v3, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    iget v4, v2, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    if-ne v3, v4, :cond_2d

    move v0, v1

    :cond_2d
    return v0
.end method

.method public whitelist test-api floatValue()F
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1076
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public greylist-max-o getBaseFactor()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 717
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->baseFactor:I

    return v0
.end method

.method public greylist-max-o getDecimalDigits()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 666
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    return-wide v0
.end method

.method public greylist-max-o getDecimalDigitsWithoutTrailingZeros()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 676
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    return-wide v0
.end method

.method public greylist-max-o getIntegerValue()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0
.end method

.method public greylist-max-o getPluralOperand(Landroid/icu/text/PluralRules$Operand;)D
    .registers 8
    .param p1, "operand"    # Landroid/icu/text/PluralRules$Operand;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 930
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$Operand;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_3e

    .line 939
    invoke-virtual {p0}, Landroid/icu/text/PluralRules$FixedDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 938
    :pswitch_c
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v0, v0

    return-wide v0

    .line 937
    :pswitch_10
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v0, v0

    return-wide v0

    .line 936
    :pswitch_14
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    int-to-double v0, v0

    return-wide v0

    .line 935
    :pswitch_18
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    int-to-double v0, v0

    return-wide v0

    .line 934
    :pswitch_1c
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigitsWithoutTrailingZeros:J

    long-to-double v0, v0

    return-wide v0

    .line 933
    :pswitch_20
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    long-to-double v0, v0

    return-wide v0

    .line 932
    :pswitch_24
    invoke-virtual {p0}, Landroid/icu/text/PluralRules$FixedDecimal;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    .line 931
    :pswitch_2a
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    if-nez v0, :cond_31

    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    goto :goto_3d

    :cond_31
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    :goto_3d
    return-wide v0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_14
        :pswitch_10
        :pswitch_c
    .end packed-switch
.end method

.method public greylist-max-o getSource()D
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    return-wide v0
.end method

.method public greylist-max-o getVisibleDecimalDigitCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 646
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    return v0
.end method

.method public greylist-max-o getVisibleDecimalDigitCountWithoutTrailingZeros()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 656
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCountWithoutTrailingZeros:I

    return v0
.end method

.method public greylist-max-o hasIntegerValue()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1038
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1012
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->decimalDigits:J

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    const-wide v3, 0x4042800000000000L    # 37.0

    iget-wide v5, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    mul-double/2addr v5, v3

    double-to-int v3, v5

    add-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x25

    int-to-long v2, v2

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api intValue()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1050
    invoke-virtual {p0}, Landroid/icu/text/PluralRules$FixedDecimal;->longValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public greylist-max-o isHasIntegerValue()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 697
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->hasIntegerValue:Z

    return v0
.end method

.method public greylist-max-o isInfinite()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1122
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isNaN()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1110
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o isNegative()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 707
    iget-boolean v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->isNegative:Z

    return v0
.end method

.method public whitelist test-api longValue()J
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1061
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    if-nez v0, :cond_7

    .line 1062
    iget-wide v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    return-wide v0

    .line 1064
    :cond_7
    iget v0, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->integerValue:J

    long-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1023
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->source:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "baseString":Ljava/lang/String;
    iget v1, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    if-eqz v1, :cond_49

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/PluralRules$FixedDecimal;->exponent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1027
    :cond_49
    return-object v0
.end method
