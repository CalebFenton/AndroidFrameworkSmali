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
.field static final BATCH_UNIT:I = 0x400

.field static final MAX_BATCH:I = 0x2000000


# instance fields
.field private batch:I

.field private final characteristics:I

.field private est:J


# direct methods
.method protected constructor <init>(JI)V
    .locals 1
    .param p1, "est"    # J
    .param p3, "additionalCharacteristics"    # I

    #@0
    .prologue
    .line 1506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1507
    iput-wide p1, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    #@5
    .line 1508
    and-int/lit8 v0, p3, 0x40

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 1509
    or-int/lit16 p3, p3, 0x4000

    #@b
    .line 1508
    .end local p3    # "additionalCharacteristics":I
    :cond_0
    iput p3, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    #@d
    .line 1506
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 1570
    iget v0, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics:I

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 2

    #@0
    .prologue
    .line 1558
    iget-wide v0, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    #@2
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 717
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-interface {p0, p1}, Ljava/util/Spliterator$OfLong;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 10

    #@0
    .prologue
    .line 1529
    new-instance v1, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;

    #@2
    invoke-direct {v1}, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;-><init>()V

    #@5
    .line 1530
    .local v1, "holder":Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
    iget-wide v4, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    #@7
    .line 1531
    .local v4, "s":J
    const-wide/16 v6, 0x1

    #@9
    cmp-long v6, v4, v6

    #@b
    if-lez v6, :cond_5

    #@d
    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@10
    move-result v6

    #@11
    if-eqz v6, :cond_5

    #@13
    .line 1532
    iget v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->batch:I

    #@15
    add-int/lit16 v3, v6, 0x400

    #@17
    .line 1533
    .local v3, "n":I
    int-to-long v6, v3

    #@18
    cmp-long v6, v6, v4

    #@1a
    if-lez v6, :cond_0

    #@1c
    .line 1534
    long-to-int v3, v4

    #@1d
    .line 1535
    :cond_0
    const/high16 v6, 0x2000000

    #@1f
    if-le v3, v6, :cond_1

    #@21
    .line 1536
    const/high16 v3, 0x2000000

    #@23
    .line 1537
    :cond_1
    new-array v0, v3, [J

    #@25
    .line 1538
    .local v0, "a":[J
    const/4 v2, 0x0

    #@26
    .line 1539
    .local v2, "j":I
    :cond_2
    iget-wide v6, v1, Ljava/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    #@28
    aput-wide v6, v0, v2

    #@2a
    add-int/lit8 v2, v2, 0x1

    #@2c
    if-ge v2, v3, :cond_3

    #@2e
    invoke-virtual {p0, v1}, Ljava/util/Spliterators$AbstractLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@31
    move-result v6

    #@32
    if-nez v6, :cond_2

    #@34
    .line 1540
    :cond_3
    iput v2, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->batch:I

    #@36
    .line 1541
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    #@38
    const-wide v8, 0x7fffffffffffffffL

    #@3d
    cmp-long v6, v6, v8

    #@3f
    if-eqz v6, :cond_4

    #@41
    .line 1542
    iget-wide v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    #@43
    int-to-long v8, v2

    #@44
    sub-long/2addr v6, v8

    #@45
    iput-wide v6, p0, Ljava/util/Spliterators$AbstractLongSpliterator;->est:J

    #@47
    .line 1543
    :cond_4
    new-instance v6, Ljava/util/Spliterators$LongArraySpliterator;

    #@49
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->characteristics()I

    #@4c
    move-result v7

    #@4d
    const/4 v8, 0x0

    #@4e
    invoke-direct {v6, v0, v8, v2, v7}, Ljava/util/Spliterators$LongArraySpliterator;-><init>([JIII)V

    #@51
    return-object v6

    #@52
    .line 1545
    .end local v0    # "a":[J
    .end local v2    # "j":I
    .end local v3    # "n":I
    :cond_5
    const/4 v6, 0x0

    #@53
    return-object v6
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 1528
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 1528
    invoke-virtual {p0}, Ljava/util/Spliterators$AbstractLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
