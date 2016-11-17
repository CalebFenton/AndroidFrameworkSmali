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
.field private static final synthetic -android-icu-text-PluralRules$SampleTypeSwitchesValues:[I = null

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
.method private static synthetic -getandroid-icu-text-PluralRules$SampleTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

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
    sput-object v0, Landroid/icu/text/PluralRules$RangeConstraint;->-android-icu-text-PluralRules$SampleTypeSwitchesValues:[I

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
    .line 1494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1496
    iput p1, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@5
    .line 1497
    iput-boolean p2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@7
    .line 1498
    iput-boolean p4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    #@9
    .line 1499
    iput-wide p5, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@b
    .line 1500
    iput-wide p7, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@d
    .line 1501
    iput-object p9, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@f
    .line 1502
    iput-object p3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@11
    .line 1495
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
    .line 1506
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@4
    invoke-virtual {p1, v6}, Landroid/icu/text/PluralRules$FixedDecimal;->get(Landroid/icu/text/PluralRules$Operand;)D

    #@7
    move-result-wide v2

    #@8
    .line 1507
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
    .line 1509
    :cond_0
    iget-boolean v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@18
    if-eqz v6, :cond_4

    #@1a
    :goto_0
    return v4

    #@1b
    .line 1508
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
    .line 1511
    :cond_2
    iget v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@27
    if-eqz v6, :cond_3

    #@29
    .line 1512
    iget v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@2b
    int-to-double v6, v6

    #@2c
    rem-double/2addr v2, v6

    #@2d
    .line 1514
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
    move v1, v5

    #@3a
    .line 1515
    .local v1, "test":Z
    :goto_1
    if-eqz v1, :cond_7

    #@3c
    iget-object v6, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@3e
    if-eqz v6, :cond_7

    #@40
    .line 1516
    const/4 v1, 0x0

    #@41
    .line 1517
    .local v1, "test":Z
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
    .line 1518
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
    .line 1517
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
    .line 1509
    goto :goto_0

    #@63
    :cond_5
    move v1, v4

    #@64
    .line 1514
    goto :goto_1

    #@65
    .line 1518
    .restart local v0    # "i":I
    .restart local v1    # "test":Z
    :cond_6
    const/4 v1, 0x0

    #@66
    goto :goto_3

    #@67
    .line 1521
    .end local v0    # "i":I
    .end local v1    # "test":Z
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
    .line 1525
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
    .line 1527
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
    .line 1528
    :cond_0
    iget-boolean v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@20
    if-eq v3, v1, :cond_3

    #@22
    const/4 v0, 0x1

    #@23
    .line 1529
    .local v0, "hasDecimals":Z
    :goto_1
    invoke-static {}, Landroid/icu/text/PluralRules$RangeConstraint;->-getandroid-icu-text-PluralRules$SampleTypeSwitchesValues()[I

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
    .line 1542
    return v2

    #@31
    .line 1525
    .end local v0    # "hasDecimals":Z
    .end local v1    # "valueIsZero":Z
    :cond_1
    const/4 v1, 0x0

    #@32
    .restart local v1    # "valueIsZero":Z
    goto :goto_0

    #@33
    .line 1527
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
    .line 1528
    .end local v0    # "hasDecimals":Z
    :cond_3
    const/4 v0, 0x0

    #@42
    .restart local v0    # "hasDecimals":Z
    goto :goto_1

    #@43
    .line 1531
    :pswitch_0
    if-nez v0, :cond_6

    #@45
    .line 1532
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
    .line 1533
    :cond_4
    :goto_2
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@53
    if-nez v3, :cond_5

    #@55
    .line 1534
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@57
    .line 1531
    :cond_5
    :goto_3
    return v2

    #@58
    :cond_6
    const/4 v2, 0x1

    #@59
    goto :goto_3

    #@5a
    .line 1532
    :cond_7
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@5c
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->j:Landroid/icu/text/PluralRules$Operand;

    #@5e
    if-ne v3, v4, :cond_5

    #@60
    goto :goto_2

    #@61
    .line 1537
    :pswitch_1
    if-eqz v0, :cond_8

    #@63
    iget-object v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@65
    sget-object v4, Landroid/icu/text/PluralRules$Operand;->n:Landroid/icu/text/PluralRules$Operand;

    #@67
    if-ne v3, v4, :cond_b

    #@69
    .line 1538
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
    .line 1539
    :cond_9
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@77
    if-nez v3, :cond_a

    #@79
    .line 1540
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@7b
    .line 1537
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
    .line 1529
    nop

    #@84
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 1546
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    .line 1547
    .local v1, "result":Ljava/lang/StringBuilder;
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->operand:Landroid/icu/text/PluralRules$Operand;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c
    .line 1548
    iget v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 1549
    const-string/jumbo v2, " % "

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    iget v3, p0, Landroid/icu/text/PluralRules$RangeConstraint;->mod:I

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 1551
    :cond_0
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@1e
    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@20
    cmpl-double v2, v2, v4

    #@22
    if-eqz v2, :cond_1

    #@24
    move v7, v8

    #@25
    .line 1553
    .local v7, "isList":Z
    :goto_0
    if-nez v7, :cond_3

    #@27
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@29
    if-eqz v2, :cond_2

    #@2b
    const-string/jumbo v2, " = "

    #@2e
    .line 1552
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1557
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@33
    if-eqz v2, :cond_8

    #@35
    .line 1558
    const/4 v0, 0x0

    #@36
    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@38
    array-length v2, v2

    #@39
    if-ge v0, v2, :cond_9

    #@3b
    .line 1559
    iget-object v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@3d
    aget-wide v2, v2, v0

    #@3f
    long-to-double v2, v2

    #@40
    iget-object v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->range_list:[J

    #@42
    add-int/lit8 v5, v0, 0x1

    #@44
    aget-wide v4, v4, v5

    #@46
    long-to-double v4, v4

    #@47
    if-eqz v0, :cond_7

    #@49
    move v6, v8

    #@4a
    :goto_3
    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-wrap1(Ljava/lang/StringBuilder;DDZ)V

    #@4d
    .line 1558
    add-int/lit8 v0, v0, 0x2

    #@4f
    goto :goto_2

    #@50
    .end local v0    # "i":I
    .end local v7    # "isList":Z
    :cond_1
    move v7, v9

    #@51
    .line 1551
    goto :goto_0

    #@52
    .line 1553
    .restart local v7    # "isList":Z
    :cond_2
    const-string/jumbo v2, " != "

    #@55
    goto :goto_1

    #@56
    .line 1554
    :cond_3
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->integersOnly:Z

    #@58
    if-eqz v2, :cond_5

    #@5a
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@5c
    if-eqz v2, :cond_4

    #@5e
    const-string/jumbo v2, " = "

    #@61
    goto :goto_1

    #@62
    :cond_4
    const-string/jumbo v2, " != "

    #@65
    goto :goto_1

    #@66
    .line 1555
    :cond_5
    iget-boolean v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->inRange:Z

    #@68
    if-eqz v2, :cond_6

    #@6a
    const-string/jumbo v2, " within "

    #@6d
    goto :goto_1

    #@6e
    :cond_6
    const-string/jumbo v2, " not within "

    #@71
    goto :goto_1

    #@72
    .restart local v0    # "i":I
    :cond_7
    move v6, v9

    #@73
    .line 1559
    goto :goto_3

    #@74
    .line 1562
    .end local v0    # "i":I
    :cond_8
    iget-wide v2, p0, Landroid/icu/text/PluralRules$RangeConstraint;->lowerBound:D

    #@76
    iget-wide v4, p0, Landroid/icu/text/PluralRules$RangeConstraint;->upperBound:D

    #@78
    move v6, v9

    #@79
    invoke-static/range {v1 .. v6}, Landroid/icu/text/PluralRules;->-wrap1(Ljava/lang/StringBuilder;DDZ)V

    #@7c
    .line 1564
    :cond_9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    return-object v2
.end method
