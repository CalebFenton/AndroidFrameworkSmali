.class public abstract Ljava/util/Spliterators$AbstractLongSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractLongSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
    }
.end annotation


# static fields
.field static final greylist-max-o BATCH_UNIT:I = 0x400

.field static final greylist-max-o MAX_BATCH:I = 0x2000000


# instance fields
.field private greylist-max-o batch:I

.field private final greylist-max-o characteristics:I

.field private greylist-max-o est:J


# direct methods
.method protected constructor whitelist test-api <init>(JI)V
    .registers 5
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    .line 1638
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1639
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1640
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_c

    .line 1641
    or-int/lit16 v0, p3, 0x4000

    goto :goto_d

    .line 1642
    :cond_c
    move v0, p3

    :goto_d
    iput v0, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    .line 1643
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1704
    iget v0, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1692
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfLong;
    .registers 13

    .line 1661
    new-instance v0, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;

    invoke-direct {v0}, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;-><init>()V

    .line 1662
    .local v0, "holder":Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
    iget-wide v1, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1663
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_62

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1664
    iget v3, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1665
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1d

    .line 1666
    long-to-int v3, v1

    .line 1667
    :cond_1d
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_23

    .line 1668
    const/high16 v3, 0x2000000

    .line 1669
    :cond_23
    new-array v5, v3, [J

    .line 1670
    .local v5, "a":[J
    const/4 v4, 0x0

    .line 1671
    .local v4, "j":I
    :goto_26
    iget-wide v6, v0, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    aput-wide v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "j":I
    .local v7, "j":I
    if-ge v7, v3, :cond_37

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_37

    :cond_35
    move v4, v7

    goto :goto_26

    .line 1672
    :cond_37
    :goto_37
    iput v7, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->batch:I

    .line 1673
    iget-wide v8, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v8, v10

    if-eqz v4, :cond_53

    .line 1674
    iget-wide v8, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    int-to-long v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    .line 1675
    new-instance v4, Ljava/util/Spliterators$LongArraySpliterator;

    const/4 v6, 0x0

    iget v8, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    return-object v4

    .line 1677
    :cond_53
    new-instance v4, Ljava/util/Spliterators$LongArraySpliterator;

    iget v8, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIIIJLjava/util/Spliterators-IA;)V

    return-object v4

    .line 1679
    .end local v3    # "n":I
    .end local v5    # "a":[J
    .end local v7    # "j":I
    :cond_62
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1621
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1621
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method
