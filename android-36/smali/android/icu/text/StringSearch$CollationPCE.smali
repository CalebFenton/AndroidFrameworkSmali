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
        Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;,
        Landroid/icu/text/StringSearch$CollationPCE$Range;,
        Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;,
        Landroid/icu/text/StringSearch$CollationPCE$RCEI;,
        Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    }
.end annotation


# static fields
.field private static final greylist-max-o BUFFER_GROW:I = 0x8

.field private static final greylist-max-o CONTINUATION_MARKER:I = 0xc0

.field private static final greylist-max-o DEFAULT_BUFFER_SIZE:I = 0x10

.field private static final greylist-max-o PRIMARYORDERMASK:I = -0x10000

.field public static final greylist-max-o PROCESSED_NULLORDER:J = -0x1L


# instance fields
.field private greylist-max-o cei_:Landroid/icu/text/CollationElementIterator;

.field private greylist-max-o isShifted_:Z

.field private greylist-max-o pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

.field private greylist-max-o strength_:I

.field private greylist-max-o toShift_:Z

.field private greylist-max-o variableTop_:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/icu/text/CollationElementIterator;)V
    .registers 4
    .param p1, "iter"    # Landroid/icu/text/CollationElementIterator;

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1631
    new-instance v0, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;-><init>(Landroid/icu/text/StringSearch-IA;)V

    iput-object v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    .line 1639
    invoke-virtual {p0, p1}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/CollationElementIterator;)V

    .line 1640
    return-void
.end method

.method private greylist-max-o init(Landroid/icu/text/RuleBasedCollator;)V
    .registers 3
    .param p1, "coll"    # Landroid/icu/text/RuleBasedCollator;

    .line 1648
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    .line 1649
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    .line 1650
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    .line 1651
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator;->getVariableTop()I

    move-result v0

    iput v0, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    .line 1652
    return-void
.end method

.method private static greylist-max-o isContinuation(I)Z
    .registers 3
    .param p0, "ce"    # I

    .line 1822
    and-int/lit16 v0, p0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o processCE(I)J
    .registers 14
    .param p1, "ce"    # I

    .line 1656
    const-wide/16 v0, 0x0

    .local v0, "primary":J
    const-wide/16 v2, 0x0

    .local v2, "secondary":J
    const-wide/16 v4, 0x0

    .local v4, "tertiary":J
    const-wide/16 v6, 0x0

    .line 1661
    .local v6, "quaternary":J
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    packed-switch v8, :pswitch_data_5e

    .line 1663
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->tertiaryOrder(I)I

    move-result v8

    int-to-long v4, v8

    .line 1667
    :pswitch_12
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->secondaryOrder(I)I

    move-result v8

    int-to-long v2, v8

    .line 1671
    :pswitch_17
    invoke-static {p1}, Landroid/icu/text/CollationElementIterator;->primaryOrder(I)I

    move-result v8

    int-to-long v0, v8

    .line 1682
    iget-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->toShift_:Z

    const/4 v9, 0x3

    const-wide/16 v10, 0x0

    if-eqz v8, :cond_2b

    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->variableTop_:I

    if-le v8, p1, :cond_2b

    cmp-long v8, v0, v10

    if-nez v8, :cond_33

    :cond_2b
    iget-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    if-eqz v8, :cond_44

    cmp-long v8, v0, v10

    if-nez v8, :cond_44

    .line 1684
    :cond_33
    cmp-long v8, v0, v10

    if-nez v8, :cond_38

    .line 1685
    return-wide v10

    .line 1688
    :cond_38
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    if-lt v8, v9, :cond_3d

    .line 1689
    move-wide v6, v0

    .line 1692
    :cond_3d
    move-wide v4, v10

    move-wide v2, v10

    move-wide v0, v10

    .line 1693
    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    goto :goto_4e

    .line 1695
    :cond_44
    iget v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->strength_:I

    if-lt v8, v9, :cond_4b

    .line 1696
    const-wide/32 v6, 0xffff

    .line 1699
    :cond_4b
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->isShifted_:Z

    .line 1702
    :goto_4e
    const/16 v8, 0x30

    shl-long v8, v0, v8

    const/16 v10, 0x20

    shl-long v10, v2, v10

    or-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long v10, v4, v10

    or-long/2addr v8, v10

    or-long/2addr v8, v6

    return-wide v8

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_17
        :pswitch_12
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o init(Landroid/icu/text/CollationElementIterator;)V
    .registers 3
    .param p1, "iter"    # Landroid/icu/text/CollationElementIterator;

    .line 1643
    iput-object p1, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    .line 1644
    invoke-virtual {p1}, Landroid/icu/text/CollationElementIterator;->getRuleBasedCollator()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/StringSearch$CollationPCE;->init(Landroid/icu/text/RuleBasedCollator;)V

    .line 1645
    return-void
.end method

.method public greylist-max-o nextProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .registers 8
    .param p1, "range"    # Landroid/icu/text/StringSearch$CollationPCE$Range;

    .line 1717
    const-wide/16 v0, 0x0

    .line 1718
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "low":I
    const/4 v3, 0x0

    .line 1720
    .local v3, "high":I
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v4}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->reset()V

    .line 1723
    :cond_9
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v2

    .line 1724
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v4}, Landroid/icu/text/CollationElementIterator;->next()I

    move-result v4

    .line 1725
    .local v4, "ce":I
    iget-object v5, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v5}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v3

    .line 1727
    const/4 v5, -0x1

    if-ne v4, v5, :cond_21

    .line 1728
    const-wide/16 v0, -0x1

    .line 1729
    goto :goto_2b

    .line 1732
    :cond_21
    invoke-direct {p0, v4}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    move-result-wide v0

    .line 1733
    .end local v4    # "ce":I
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-eqz v4, :cond_9

    .line 1735
    :goto_2b
    if-eqz p1, :cond_31

    .line 1736
    iput v2, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    .line 1737
    iput v3, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    .line 1740
    :cond_31
    return-wide v0
.end method

.method public greylist-max-o previousProcessed(Landroid/icu/text/StringSearch$CollationPCE$Range;)J
    .registers 13
    .param p1, "range"    # Landroid/icu/text/StringSearch$CollationPCE$Range;

    .line 1756
    const-wide/16 v0, 0x0

    .line 1757
    .local v0, "result":J
    const/4 v2, 0x0

    .local v2, "low":I
    const/4 v3, 0x0

    .line 1761
    .local v3, "high":I
    :goto_4
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v4}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_63

    .line 1763
    new-instance v4, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;-><init>(Landroid/icu/text/StringSearch-IA;)V

    .line 1766
    .local v4, "rceb":Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
    const/4 v6, 0x0

    .line 1770
    .local v6, "finish":Z
    :cond_14
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v3

    .line 1771
    iget-object v7, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v7}, Landroid/icu/text/CollationElementIterator;->previous()I

    move-result v7

    .line 1772
    .local v7, "ce":I
    iget-object v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->cei_:Landroid/icu/text/CollationElementIterator;

    invoke-virtual {v8}, Landroid/icu/text/CollationElementIterator;->getOffset()I

    move-result v2

    .line 1774
    if-ne v7, v5, :cond_31

    .line 1775
    invoke-virtual {v4}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    move-result v8

    if-nez v8, :cond_2f

    .line 1776
    goto :goto_3f

    .line 1779
    :cond_2f
    const/4 v6, 0x1

    .line 1780
    goto :goto_3f

    .line 1783
    :cond_31
    invoke-virtual {v4, v7, v2, v3}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->put(III)V

    .line 1784
    const/high16 v8, -0x10000

    and-int/2addr v8, v7

    if-eqz v8, :cond_14

    invoke-static {v7}, Landroid/icu/text/StringSearch$CollationPCE;->isContinuation(I)Z

    move-result v8

    if-nez v8, :cond_14

    .line 1786
    :goto_3f
    if-eqz v6, :cond_42

    .line 1787
    goto :goto_63

    .line 1791
    :cond_42
    :goto_42
    invoke-virtual {v4}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->empty()Z

    move-result v5

    if-nez v5, :cond_62

    .line 1792
    invoke-virtual {v4}, Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$RCEI;

    move-result-object v5

    .line 1794
    .local v5, "rcei":Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    iget v8, v5, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->ce_:I

    invoke-direct {p0, v8}, Landroid/icu/text/StringSearch$CollationPCE;->processCE(I)J

    move-result-wide v0

    .line 1796
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_61

    .line 1797
    iget-object v8, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    iget v9, v5, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->low_:I

    iget v10, v5, Landroid/icu/text/StringSearch$CollationPCE$RCEI;->high_:I

    invoke-virtual {v8, v0, v1, v9, v10}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->put(JII)V

    .line 1799
    .end local v5    # "rcei":Landroid/icu/text/StringSearch$CollationPCE$RCEI;
    :cond_61
    goto :goto_42

    .line 1800
    .end local v4    # "rceb":Landroid/icu/text/StringSearch$CollationPCE$RCEBuffer;
    .end local v6    # "finish":Z
    .end local v7    # "ce":I
    :cond_62
    goto :goto_4

    .line 1802
    :cond_63
    :goto_63
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v4}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->empty()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1804
    if-eqz p1, :cond_71

    .line 1805
    iput v5, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    .line 1806
    iput v5, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    .line 1808
    :cond_71
    const-wide/16 v4, -0x1

    return-wide v4

    .line 1811
    :cond_74
    iget-object v4, p0, Landroid/icu/text/StringSearch$CollationPCE;->pceBuffer_:Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;

    invoke-virtual {v4}, Landroid/icu/text/StringSearch$CollationPCE$PCEBuffer;->get()Landroid/icu/text/StringSearch$CollationPCE$PCEI;

    move-result-object v4

    .line 1813
    .local v4, "pcei":Landroid/icu/text/StringSearch$CollationPCE$PCEI;
    if-eqz p1, :cond_84

    .line 1814
    iget v5, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->low_:I

    iput v5, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixLow_:I

    .line 1815
    iget v5, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->high_:I

    iput v5, p1, Landroid/icu/text/StringSearch$CollationPCE$Range;->ixHigh_:I

    .line 1818
    :cond_84
    iget-wide v5, v4, Landroid/icu/text/StringSearch$CollationPCE$PCEI;->ce_:J

    return-wide v5
.end method
