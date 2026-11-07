.class public abstract Ljava/util/Spliterators$AbstractDoubleSpliterator;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava/util/Spliterator$OfDouble;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Spliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractDoubleSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
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

    .line 1750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1751
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1752
    and-int/lit8 v0, p3, 0x40

    if-eqz v0, :cond_c

    .line 1753
    or-int/lit16 v0, p3, 0x4000

    goto :goto_d

    .line 1754
    :cond_c
    move v0, p3

    :goto_d
    iput v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    .line 1755
    return-void
.end method


# virtual methods
.method public whitelist test-api characteristics()I
    .registers 2

    .line 1816
    iget v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    return v0
.end method

.method public whitelist test-api estimateSize()J
    .registers 3

    .line 1804
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    return-wide v0
.end method

.method public whitelist test-api trySplit()Ljava/util/Spliterator$OfDouble;
    .registers 13

    .line 1773
    new-instance v0, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;

    invoke-direct {v0}, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;-><init>()V

    .line 1774
    .local v0, "holder":Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;
    iget-wide v1, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1775
    .local v1, "s":J
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-lez v3, :cond_62

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1776
    iget v3, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    add-int/lit16 v3, v3, 0x400

    .line 1777
    .local v3, "n":I
    int-to-long v4, v3

    cmp-long v4, v4, v1

    if-lez v4, :cond_1d

    .line 1778
    long-to-int v3, v1

    .line 1779
    :cond_1d
    const/high16 v4, 0x2000000

    if-le v3, v4, :cond_23

    .line 1780
    const/high16 v3, 0x2000000

    .line 1781
    :cond_23
    new-array v5, v3, [D

    .line 1782
    .local v5, "a":[D
    const/4 v4, 0x0

    .line 1783
    .local v4, "j":I
    :goto_26
    iget-wide v6, v0, Ljava/util/Spliterators$AbstractDoubleSpliterator$HoldingDoubleConsumer;->value:D

    aput-wide v6, v5, v4

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "j":I
    .local v7, "j":I
    if-ge v7, v3, :cond_37

    invoke-virtual {p0, v0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->tryAdvance(Ljava/util/function/DoubleConsumer;)Z

    move-result v4

    if-nez v4, :cond_35

    goto :goto_37

    :cond_35
    move v4, v7

    goto :goto_26

    .line 1784
    :cond_37
    :goto_37
    iput v7, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->batch:I

    .line 1785
    iget-wide v8, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    const-wide v10, 0x7fffffffffffffffL

    cmp-long v4, v8, v10

    if-eqz v4, :cond_53

    .line 1786
    iget-wide v8, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    int-to-long v10, v7

    sub-long/2addr v8, v10

    iput-wide v8, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->est:J

    .line 1787
    new-instance v4, Ljava/util/Spliterators$DoubleArraySpliterator;

    const/4 v6, 0x0

    iget v8, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIII)V

    return-object v4

    .line 1789
    :cond_53
    new-instance v4, Ljava/util/Spliterators$DoubleArraySpliterator;

    iget v8, p0, Ljava/util/Spliterators$AbstractDoubleSpliterator;->characteristics:I

    const-wide v9, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v11, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v4 .. v11}, Ljava/util/Spliterators$DoubleArraySpliterator;-><init>([DIIIJLjava/util/Spliterators-IA;)V

    return-object v4

    .line 1791
    .end local v3    # "n":I
    .end local v5    # "a":[D
    .end local v7    # "j":I
    :cond_62
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator$OfPrimitive;
    .registers 2

    .line 1733
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api trySplit()Ljava/util/Spliterator;
    .registers 2

    .line 1733
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractDoubleSpliterator;->trySplit()Ljava/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method
