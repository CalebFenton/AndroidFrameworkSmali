.class Landroid/icu/text/PluralRules$RangeConstraint;
.super Ljava/lang/Object;
.source "PluralRules.java"

# interfaces
.implements Landroid/icu/text/PluralRules$Constraint;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/PluralRules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RangeConstraint"
.end annotation


# static fields
.field private static synthetic -android_icu_text_PluralRules$SampleTypeSwitchesValues:[I = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final inRange:Z

.field private final integersOnly:Z

.field private final lowerBound:D

.field private final mod:I

.field private final operand:Landroid/icu/text/PluralRules$Operand;

.field private final range_list:[J

.field private final upperBound:D


# direct methods
.method private static synthetic -getandroid_icu_text_PluralRules$SampleTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android_icu_text_PluralRules$SampleTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android_icu_text_PluralRules$SampleTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/text/PluralRules$SampleType;->values()[Landroid/icu/text/PluralRules$SampleType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->DECIMAL:Landroid/icu/text/PluralRules$SampleType;

    #@10
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/text/PluralRules$SampleType;->INTEGER:Landroid/icu/text/PluralRules$SampleType;

    #@19
    invoke-virtual {v1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    #@20
    :goto_1
    sput-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android_icu_text_PluralRules$SampleTypeSwitchesValues:[I

    #@22
    return-object v0

    #@23
    :catch_0
    move-exception v1

    #@24
    goto :goto_1

    #@25
    :catch_1
    move-exception v1

    #@26
    goto :goto_0
.end method

.method constructor <init>(IZLandroid/icu/text/PluralRules$Operand;ZDD[J)V
    .locals 1
    .param p1, "mod"    # I
    .param p2, "inRange"    # Z
    .param p3, "operand"    # Landroid/icu/text/PluralRules$Operand;
    .param p4, "integersOnly"    # Z
    .param p5, "lowBound"    # D
    .param p7, "highBound"    # D
    .param p9, "vals"    # [J

    #@0
    .prologue
    .line 1449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1451
    iput p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@5
    .line 1452
    iput-boolean p2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@7
    .line 1453
    iput-boolean p4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    #@9
    .line 1454
    iput-wide p5, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@b
    .line 1455
    iput-wide p7, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@d
    .line 1456
    iput-object p9, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@f
    .line 1457
    iput-object p3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@11
    .line 1450
    return-void
.end method


# virtual methods
.method public isFulfilled(Landroid/icu/text/PluralRules$FixedDecimal;)Z
    .locals 10
    .param p1, "number"    # Landroid/icu/text/PluralRules$FixedDecimal;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 1461
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@4
    invoke-virtual {p1, v6}, Landroid/icu/text/PluralRules$FixedDecimal;->get(Landroid/icu/text/PluralRules$Operand;)D

    #@7
    move-result-wide v2

    #@8
    .line 1462
    .local v2, "n":D
    iget-boolean v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    #@a
    if-eqz v6, :cond_1

    #@c
    double-to-long v6, v2

    #@d
    long-to-double v6, v6

    #@e
    sub-double v6, v2, v6

    #@10
    const-wide/16 v8, 0x0

    #@12
    cmpl-double v6, v6, v8

    #@14
    if-eqz v6, :cond_1

    #@16
    .line 1464
    :cond_0
    iget-boolean v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@18
    if-eqz v6, :cond_4

    #@1a
    :goto_0
    return v4

    #@1b
    .line 1463
    :cond_1
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@1d
    sget-object v7, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    #@1f
    if-ne v6, v7, :cond_2

    #@21
    iget v6, p1, Landroid/icu/text/PluralRules$FixedDecimal;->visibleDecimalDigitCount:I

    #@23
    if-nez v6, :cond_0

    #@25
    .line 1466
    :cond_2
    iget v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 1467
    iget v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@2b
    int-to-double v6, v6

    #@2c
    rem-double/2addr v2, v6

    #@2d
    .line 1469
    :cond_3
    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@2f
    cmpl-double v6, v2, v6

    #@31
    if-ltz v6, :cond_5

    #@33
    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@35
    cmpg-double v6, v2, v6

    #@37
    if-gtz v6, :cond_5

    #@39
    const/4 v1, 0x1

    #@3a
    .line 1470
    .local v1, "test":Z
    :goto_1
    if-eqz v1, :cond_7

    #@3c
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@3e
    if-eqz v6, :cond_7

    #@40
    .line 1471
    const/4 v1, 0x0

    #@41
    .line 1472
    const/4 v0, 0x0

    #@42
    .local v0, "i":I
    :goto_2
    if-nez v1, :cond_7

    #@44
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@46
    array-length v6, v6

    #@47
    if-ge v0, v6, :cond_7

    #@49
    .line 1473
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@4b
    aget-wide v6, v6, v0

    #@4d
    long-to-double v6, v6

    #@4e
    cmpl-double v6, v2, v6

    #@50
    if-ltz v6, :cond_6

    #@52
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@54
    add-int/lit8 v7, v0, 0x1

    #@56
    aget-wide v6, v6, v7

    #@58
    long-to-double v6, v6

    #@59
    cmpg-double v6, v2, v6

    #@5b
    if-gtz v6, :cond_6

    #@5d
    const/4 v1, 0x1

    #@5e
    .line 1472
    :goto_3
    add-int/lit8 v0, v0, 0x2

    #@60
    goto :goto_2

    #@61
    .end local v0    # "i":I
    .end local v1    # "test":Z
    :cond_4
    move v4, v5

    #@62
    .line 1464
    goto :goto_0

    #@63
    .line 1469
    :cond_5
    const/4 v1, 0x0

    #@64
    .restart local v1    # "test":Z
    goto :goto_1

    #@65
    .line 1473
    .restart local v0    # "i":I
    :cond_6
    const/4 v1, 0x0

    #@66
    goto :goto_3

    #@67
    .line 1476
    .end local v0    # "i":I
    :cond_7
    iget-boolean v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@69
    if-ne v6, v1, :cond_8

    #@6b
    :goto_4
    return v5

    #@6c
    :cond_8
    move v5, v4

    #@6d
    goto :goto_4
.end method

.method public isLimited(Landroid/icu/text/PluralRules$SampleType;)Z
    .locals 8
    .param p1, "sampleType"    # Landroid/icu/text/PluralRules$SampleType;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1480
    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@3
    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@5
    cmpl-double v3, v4, v6

    #@7
    if-nez v3, :cond_1

    #@9
    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@b
    const-wide/16 v6, 0x0

    #@d
    cmpl-double v3, v4, v6

    #@f
    if-nez v3, :cond_1

    #@11
    const/4 v1, 0x1

    #@12
    .line 1482
    .local v1, "valueIsZero":Z
    :goto_0
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@14
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->v:Landroid/icu/text/PluralRules$Operand;

    #@16
    if-eq v3, v4, :cond_0

    #@18
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@1a
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->w:Landroid/icu/text/PluralRules$Operand;

    #@1c
    if-ne v3, v4, :cond_2

    #@1e
    .line 1483
    :cond_0
    iget-boolean v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@20
    if-eq v3, v1, :cond_3

    #@22
    const/4 v0, 0x1

    #@23
    .line 1484
    .local v0, "hasDecimals":Z
    :goto_1
    invoke-static {}, Landroid/icu/text/PluralRules$RangeConstraint;->-getandroid_icu_text_PluralRules$SampleTypeSwitchesValues()[I

    #@26
    move-result-object v3

    #@27
    invoke-virtual {p1}, Landroid/icu/text/PluralRules$SampleType;->ordinal()I

    #@2a
    move-result v4

    #@2b
    aget v3, v3, v4

    #@2d
    packed-switch v3, :pswitch_data_0

    #@30
    .line 1497
    return v2

    #@31
    .line 1480
    .end local v0    # "hasDecimals":Z
    .end local v1    # "valueIsZero":Z
    :cond_1
    const/4 v1, 0x0

    #@32
    .restart local v1    # "valueIsZero":Z
    goto :goto_0

    #@33
    .line 1482
    :cond_2
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@35
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->f:Landroid/icu/text/PluralRules$Operand;

    #@37
    if-eq v3, v4, :cond_0

    #@39
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@3b
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->t:Landroid/icu/text/PluralRules$Operand;

    #@3d
    if-eq v3, v4, :cond_0

    #@3f
    const/4 v0, 0x0

    #@40
    .restart local v0    # "hasDecimals":Z
    goto :goto_1

    #@41
    .line 1483
    .end local v0    # "hasDecimals":Z
    :cond_3
    const/4 v0, 0x0

    #@42
    .restart local v0    # "hasDecimals":Z
    goto :goto_1

    #@43
    .line 1486
    :pswitch_0
    if-nez v0, :cond_6

    #@45
    .line 1487
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@47
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    #@49
    if-eq v3, v4, :cond_4

    #@4b
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@4d
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->i:Landroid/icu/text/PluralRules$Operand;

    #@4f
    if-ne v3, v4, :cond_7

    #@51
    .line 1488
    :cond_4
    :goto_2
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@53
    if-nez v3, :cond_5

    #@55
    .line 1489
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@57
    .line 1486
    :cond_5
    :goto_3
    return v2

    #@58
    :cond_6
    const/4 v2, 0x1

    #@59
    goto :goto_3

    #@5a
    .line 1487
    :cond_7
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@5c
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    #@5e
    if-ne v3, v4, :cond_5

    #@60
    goto :goto_2

    #@61
    .line 1492
    :pswitch_1
    if-eqz v0, :cond_8

    #@63
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@65
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    #@67
    if-ne v3, v4, :cond_b

    #@69
    .line 1493
    :cond_8
    :goto_4
    iget-boolean v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    #@6b
    if-nez v3, :cond_9

    #@6d
    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@6f
    iget-wide v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@71
    cmpl-double v3, v4, v6

    #@73
    if-nez v3, :cond_a

    #@75
    .line 1494
    :cond_9
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@77
    if-nez v3, :cond_a

    #@79
    .line 1495
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@7b
    .line 1492
    :cond_a
    return v2

    #@7c
    :cond_b
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@7e
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    #@80
    if-ne v3, v4, :cond_a

    #@82
    goto :goto_4

    #@83
    .line 1484
    nop

    #@84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 1502
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b
    .line 1503
    iget v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1504
    const-string/jumbo v2, " % "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v2

    #@16
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    .line 1506
    :cond_0
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@1d
    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@1f
    cmpl-double v2, v2, v4

    #@21
    if-eqz v2, :cond_1

    #@23
    const/4 v7, 0x1

    #@24
    .line 1508
    .local v7, "isList":Z
    :goto_0
    if-nez v7, :cond_3

    #@26
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@28
    if-eqz v2, :cond_2

    #@2a
    const-string/jumbo v2, " = "

    #@2d
    .line 1507
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 1512
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@32
    if-eqz v2, :cond_8

    #@34
    .line 1513
    const/4 v0, 0x0

    #@35
    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@37
    array-length v2, v2

    #@38
    if-ge v0, v2, :cond_9

    #@3a
    .line 1514
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@3c
    aget-wide v2, v2, v0

    #@3e
    long-to-double v2, v2

    #@3f
    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@41
    add-int/lit8 v5, v0, 0x1

    #@43
    aget-wide v4, v4, v5

    #@45
    long-to-double v4, v4

    #@46
    if-eqz v0, :cond_7

    #@48
    const/4 v6, 0x1

    #@49
    :goto_3
    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-wrap1(Ljava/lang/StringBuilder;DDZ)V

    #@4c
    .line 1513
    add-int/lit8 v0, v0, 0x2

    #@4e
    goto :goto_2

    #@4f
    .line 1506
    .end local v0    # "i":I
    .end local v7    # "isList":Z
    :cond_1
    const/4 v7, 0x0

    #@50
    .restart local v7    # "isList":Z
    goto :goto_0

    #@51
    .line 1508
    :cond_2
    const-string/jumbo v2, " != "

    #@54
    goto :goto_1

    #@55
    .line 1509
    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    #@57
    if-eqz v2, :cond_5

    #@59
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@5b
    if-eqz v2, :cond_4

    #@5d
    const-string/jumbo v2, " = "

    #@60
    goto :goto_1

    #@61
    :cond_4
    const-string/jumbo v2, " != "

    #@64
    goto :goto_1

    #@65
    .line 1510
    :cond_5
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@67
    if-eqz v2, :cond_6

    #@69
    const-string/jumbo v2, " within "

    #@6c
    goto :goto_1

    #@6d
    :cond_6
    const-string/jumbo v2, " not within "

    #@70
    goto :goto_1

    #@71
    .restart local v0    # "i":I
    :cond_7
    move v6, v8

    #@72
    .line 1514
    goto :goto_3

    #@73
    .line 1517
    .end local v0    # "i":I
    :cond_8
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@75
    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@77
    move v6, v8

    #@78
    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-wrap1(Ljava/lang/StringBuilder;DDZ)V

    #@7b
    .line 1519
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7e
    move-result-object v2

    #@7f
    return-object v2
.end method
