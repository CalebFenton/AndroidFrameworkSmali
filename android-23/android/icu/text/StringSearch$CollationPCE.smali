.class Landroid/icu/text/StringSearch$CollationPCE;
.super Ljava/lang/Object;
.source "StringSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/StringSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CollationPCE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/StringSearch$CollationPCE$Range;,
        Landroid/icu/text/StringSearch$CollationPCE$PCEI;,
        Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;,
        Landroid/icu/text/StringSearch$CollationPCE$RCEI;,
        Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
    }
.end annotation


# static fields
.field private static final BUFFER_GROW:I = 0x8

.field private static final CONTINUATION_MARKER:I = 0xc0

.field private static final DEFAULT_BUFFER_SIZE:I = 0x10

.field private static final PRIMARYORDERMASK:I = -0x10000

.field public static final PROCESSED_NULLORDER:J = -0x1L


# instance fields
.field private cei_:Landroid/icu/text/CollationElementIterator;

.field private isShifted_:Z

.field private pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

.field private strength_:I

.field private toShift_:Z

.field private variableTop_:I


# direct methods
.method public constructor <init>(Landroid/icu/text/CollationElementIterator;)V
    .locals 2
    .param p1, "iter"    # Landroid/icu/text/CollationElementIterator;

    #@0
    .prologue
    .line 1559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1552
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    #@5
    const/4 v1, 0x0

    #@6
    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>(Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;)V

    #@9
    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    #@b
    .line 1560
    invoke-virtual {p0, p1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    #@e
    .line 1559
    return-void
.end method

.method private init(Landroid/icu/text/RuleBasedCollator;)V
    .locals 1
    .param p1, "coll"    # Landroid/icu/text/RuleBasedCollator;

    #@0
    .prologue
    .line 1569
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    #@6
    .line 1570
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@9
    move-result v0

    #@a
    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    #@c
    .line 1571
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    #@f
    .line 1572
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    #@12
    move-result v0

    #@13
    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    #@15
    .line 1568
    return-void
.end method

.method private static isContinuation(I)Z
    .locals 2
    .param p0, "ce"    # I

    #@0
    .prologue
    .line 1743
    and-int/lit16 v0, p0, 0xc0

    #@2
    const/16 v1, 0xc0

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private processCE(I)J
    .locals 12
    .param p1, "ce"    # I

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const-wide/16 v10, 0x0

    #@3
    .line 1577
    const-wide/16 v0, 0x0

    #@5
    .local v0, "primary":J
    const-wide/16 v4, 0x0

    #@7
    .local v4, "secondary":J
    const-wide/16 v6, 0x0

    #@9
    .local v6, "tertiary":J
    const-wide/16 v2, 0x0

    #@b
    .line 1582
    .local v2, "quaternary":J
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    #@d
    packed-switch v8, :pswitch_data_0

    #@10
    .line 1584
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    #@13
    move-result v8

    #@14
    int-to-long v6, v8

    #@15
    .line 1588
    :pswitch_0
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    #@18
    move-result v8

    #@19
    int-to-long v4, v8

    #@1a
    .line 1592
    :pswitch_1
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    #@1d
    move-result v8

    #@1e
    int-to-long v0, v8

    #@1f
    .line 1603
    iget-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    #@21
    if-eqz v8, :cond_1

    #@23
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    #@25
    if-le v8, p1, :cond_1

    #@27
    cmp-long v8, v0, v10

    #@29
    if-eqz v8, :cond_1

    #@2b
    .line 1605
    :cond_0
    cmp-long v8, v0, v10

    #@2d
    if-nez v8, :cond_4

    #@2f
    .line 1606
    return-wide v10

    #@30
    .line 1603
    :cond_1
    iget-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    #@32
    if-eqz v8, :cond_2

    #@34
    cmp-long v8, v0, v10

    #@36
    if-eqz v8, :cond_0

    #@38
    .line 1616
    :cond_2
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    #@3a
    if-lt v8, v9, :cond_3

    #@3c
    .line 1617
    const-wide/32 v2, 0xffff

    #@3f
    .line 1620
    :cond_3
    const/4 v8, 0x0

    #@40
    iput-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    #@42
    .line 1623
    :goto_0
    const/16 v8, 0x30

    #@44
    shl-long v8, v0, v8

    #@46
    const/16 v10, 0x20

    #@48
    shl-long v10, v4, v10

    #@4a
    or-long/2addr v8, v10

    #@4b
    const/16 v10, 0x10

    #@4d
    shl-long v10, v6, v10

    #@4f
    or-long/2addr v8, v10

    #@50
    or-long/2addr v8, v2

    #@51
    return-wide v8

    #@52
    .line 1609
    :cond_4
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    #@54
    if-lt v8, v9, :cond_5

    #@56
    .line 1610
    move-wide v2, v0

    #@57
    .line 1613
    :cond_5
    const-wide/16 v6, 0x0

    #@59
    const-wide/16 v4, 0x0

    #@5b
    const-wide/16 v0, 0x0

    #@5d
    .line 1614
    const/4 v8, 0x1

    #@5e
    iput-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    #@60
    goto :goto_0

    #@61
    .line 1582
    nop

    #@62
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init(Landroid/icu/text/CollationElementIterator;)V
    .locals 1
    .param p1, "iter"    # Landroid/icu/text/CollationElementIterator;

    #@0
    .prologue
    .line 1564
    iput-object p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    #@2
    .line 1565
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/RuleBasedCollator;)V

    #@9
    .line 1563
    return-void
.end method

.method public nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .locals 8
    .param p1, "range"    # Landroid/icu/text/StringSearch$CollationPCE$Range;

    #@0
    .prologue
    .line 1638
    const-wide/16 v4, 0x0

    #@2
    .line 1639
    .local v4, "result":J
    const/4 v2, 0x0

    #@3
    .local v2, "low":I
    const/4 v1, 0x0

    #@4
    .line 1641
    .local v1, "high":I
    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    #@6
    invoke-virtual {v3}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->reset()V

    #@9
    .line 1644
    :goto_0
    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    #@b
    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@e
    move-result v2

    #@f
    .line 1645
    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    #@11
    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->next()I

    #@14
    move-result v0

    #@15
    .line 1646
    .local v0, "ce":I
    iget-object v3, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    #@17
    invoke-virtual {v3}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@1a
    move-result v1

    #@1b
    .line 1648
    const/4 v3, -0x1

    #@1c
    if-ne v0, v3, :cond_2

    #@1e
    .line 1649
    const-wide/16 v4, -0x1

    #@20
    .line 1656
    :cond_0
    if-eqz p1, :cond_1

    #@22
    .line 1657
    iput v2, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    #@24
    .line 1658
    iput v1, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    #@26
    .line 1661
    :cond_1
    return-wide v4

    #@27
    .line 1653
    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    #@2a
    move-result-wide v4

    #@2b
    .line 1654
    const-wide/16 v6, 0x0

    #@2d
    cmp-long v3, v4, v6

    #@2f
    if-nez v3, :cond_0

    #@31
    goto :goto_0
.end method

.method public previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .locals 14
    .param p1, "range"    # Landroid/icu/text/StringSearch$CollationPCE$Range;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    const/4 v12, -0x1

    #@2
    .line 1677
    const-wide/16 v8, 0x0

    #@4
    .line 1678
    .local v8, "result":J
    const/4 v3, 0x0

    #@5
    .local v3, "low":I
    const/4 v2, 0x0

    #@6
    .line 1682
    .local v2, "high":I
    :cond_0
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    #@8
    invoke-virtual {v7}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    #@b
    move-result v7

    #@c
    if-eqz v7, :cond_3

    #@e
    .line 1684
    new-instance v5, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;

    #@10
    invoke-direct {v5, v13}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;-><init>(Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;)V

    #@13
    .line 1687
    .local v5, "rceb":Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
    const/4 v1, 0x0

    #@14
    .line 1691
    .local v1, "finish":Z
    :cond_1
    :goto_0
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    #@16
    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@19
    move-result v2

    #@1a
    .line 1692
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    #@1c
    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->previous()I

    #@1f
    move-result v0

    #@20
    .line 1693
    .local v0, "ce":I
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    #@22
    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    #@25
    move-result v3

    #@26
    .line 1695
    if-ne v0, v12, :cond_6

    #@28
    .line 1696
    invoke-virtual {v5}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    #@2b
    move-result v7

    #@2c
    if-nez v7, :cond_5

    #@2e
    .line 1707
    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    #@30
    .line 1723
    .end local v0    # "ce":I
    .end local v1    # "finish":Z
    .end local v5    # "rceb":Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
    :cond_3
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    #@32
    invoke-virtual {v7}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    #@35
    move-result v7

    #@36
    if-eqz v7, :cond_8

    #@38
    .line 1725
    if-eqz p1, :cond_4

    #@3a
    .line 1726
    iput v12, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    #@3c
    .line 1727
    iput v12, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    #@3e
    .line 1729
    :cond_4
    const-wide/16 v10, -0x1

    #@40
    return-wide v10

    #@41
    .line 1700
    .restart local v0    # "ce":I
    .restart local v1    # "finish":Z
    .restart local v5    # "rceb":Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
    :cond_5
    const/4 v1, 0x1

    #@42
    .line 1701
    goto :goto_1

    #@43
    .line 1704
    :cond_6
    invoke-virtual {v5, v0, v3, v2}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->put(III)V

    #@46
    .line 1705
    const/high16 v7, -0x10000

    #@48
    and-int/2addr v7, v0

    #@49
    if-eqz v7, :cond_1

    #@4b
    invoke-static {v0}, Landroid/icu/text/StringSearch$CollationPCE;->isContinuation(I)Z

    #@4e
    move-result v7

    #@4f
    if-eqz v7, :cond_2

    #@51
    goto :goto_0

    #@52
    .line 1712
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    #@55
    move-result v7

    #@56
    if-nez v7, :cond_0

    #@58
    .line 1713
    invoke-virtual {v5}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    #@5b
    move-result-object v6

    #@5c
    .line 1715
    .local v6, "rcei":Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    iget v7, v6, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->ce_:I

    #@5e
    invoke-direct {p0, v7}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    #@61
    move-result-wide v8

    #@62
    .line 1717
    const-wide/16 v10, 0x0

    #@64
    cmp-long v7, v8, v10

    #@66
    if-eqz v7, :cond_7

    #@68
    .line 1718
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    #@6a
    iget v10, v6, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->low_:I

    #@6c
    iget v11, v6, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->high_:I

    #@6e
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->put(JII)V

    #@71
    goto :goto_2

    #@72
    .line 1732
    .end local v0    # "ce":I
    .end local v1    # "finish":Z
    .end local v5    # "rceb":Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
    .end local v6    # "rcei":Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    :cond_8
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    #@74
    invoke-virtual {v7}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    #@77
    move-result-object v4

    #@78
    .line 1734
    .local v4, "pcei":Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    if-eqz p1, :cond_9

    #@7a
    .line 1735
    iget v7, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    #@7c
    iput v7, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    #@7e
    .line 1736
    iget v7, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    #@80
    iput v7, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    #@82
    .line 1739
    :cond_9
    iget-wide v10, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    #@84
    return-wide v10
.end method
