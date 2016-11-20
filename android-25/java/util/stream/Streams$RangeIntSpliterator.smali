.class final Ljava/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeIntSpliterator"
.end annotation


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field private static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field private from:I

.field private last:I

.field private final upTo:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "upTo"    # I
    .param p3, "last"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    iput p1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@5
    .line 78
    iput p2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    #@7
    .line 79
    iput p3, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    #@9
    .line 76
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 1
    .param p1, "from"    # I
    .param p2, "upTo"    # I
    .param p3, "closed"    # Z

    #@0
    .prologue
    .line 73
    if-eqz p3, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    #@6
    .line 72
    return-void

    #@7
    .line 73
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method private splitPoint(J)I
    .locals 5
    .param p1, "size"    # J

    #@0
    .prologue
    .line 171
    const-wide/32 v2, 0x1000000

    #@3
    cmp-long v1, p1, v2

    #@5
    if-gez v1, :cond_0

    #@7
    const/4 v0, 0x2

    #@8
    .line 175
    .local v0, "d":I
    :goto_0
    int-to-long v2, v0

    #@9
    div-long v2, p1, v2

    #@b
    long-to-int v1, v2

    #@c
    return v1

    #@d
    .line 171
    .end local v0    # "d":I
    :cond_0
    const/16 v0, 0x8

    #@f
    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 126
    const/16 v0, 0x4555

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 121
    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    #@2
    int-to-long v0, v0

    #@3
    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@5
    int-to-long v2, v2

    #@6
    sub-long/2addr v0, v2

    #@7
    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    #@9
    int-to-long v2, v2

    #@a
    add-long/2addr v0, v2

    #@b
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 101
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava/util/function/IntConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/IntConsumer;)V
    .locals 6
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 102
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 104
    iget v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@6
    .line 105
    .local v2, "i":I
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    #@8
    .line 106
    .local v1, "hUpTo":I
    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    #@a
    .line 107
    .local v0, "hLast":I
    iget v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    #@c
    iput v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@e
    .line 108
    iput v5, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    #@10
    move v3, v2

    #@11
    .line 109
    .end local v2    # "i":I
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    #@13
    .line 110
    add-int/lit8 v2, v3, 0x1

    #@15
    .end local v3    # "i":I
    .restart local v2    # "i":I
    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    #@18
    move v3, v2

    #@19
    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    #@1a
    .line 112
    :cond_0
    if-lez v0, :cond_1

    #@1c
    .line 114
    invoke-interface {p1, v3}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1f
    .line 101
    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 133
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    check-cast p1, Ljava/util/function/IntConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava/util/function/IntConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Ljava/util/function/IntConsumer;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 84
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 86
    iget v0, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@7
    .line 87
    .local v0, "i":I
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->upTo:I

    #@9
    if-ge v0, v1, :cond_0

    #@b
    .line 88
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@d
    add-int/lit8 v1, v1, 0x1

    #@f
    iput v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@11
    .line 89
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@14
    .line 90
    return v3

    #@15
    .line 92
    :cond_0
    iget v1, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    #@17
    if-lez v1, :cond_1

    #@19
    .line 93
    iput v2, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->last:I

    #@1b
    .line 94
    invoke-interface {p1, v0}, Ljava/util/function/IntConsumer;->accept(I)V

    #@1e
    .line 95
    return v3

    #@1f
    .line 97
    :cond_1
    return v2
.end method

.method public trySplit()Ljava/util/Spliterator$OfInt;
    .locals 6

    #@0
    .prologue
    .line 138
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    #@3
    move-result-wide v0

    #@4
    .line 139
    .local v0, "size":J
    const-wide/16 v2, 0x1

    #@6
    cmp-long v2, v0, v2

    #@8
    if-gtz v2, :cond_0

    #@a
    .line 140
    const/4 v2, 0x0

    #@b
    .line 139
    :goto_0
    return-object v2

    #@c
    .line 142
    :cond_0
    new-instance v2, Ljava/util/stream/Streams$RangeIntSpliterator;

    #@e
    iget v3, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@10
    iget v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@12
    invoke-direct {p0, v0, v1}, Ljava/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    #@15
    move-result v5

    #@16
    add-int/2addr v4, v5

    #@17
    iput v4, p0, Ljava/util/stream/Streams$RangeIntSpliterator;->from:I

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-direct {v2, v3, v4, v5}, Ljava/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    #@1d
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 137
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava/util/Spliterator$OfInt;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
