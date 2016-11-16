.class final Ljava/util/stream/Streams$RangeLongSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava/util/Spliterator$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeLongSpliterator"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final BALANCED_SPLIT_THRESHOLD:J = 0x1000000L

.field private static final RIGHT_BALANCED_SPLIT_RATIO:J = 0x8L


# instance fields
.field private from:J

.field private last:I

.field private final upTo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/util/stream/Streams$RangeLongSpliterator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/stream/Streams$RangeLongSpliterator;->-assertionsDisabled:Z

    #@b
    .line 185
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method private constructor <init>(JJI)V
    .locals 5
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "last"    # I

    #@0
    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 201
    sget-boolean v0, Ljava/util/stream/Streams$RangeLongSpliterator;->-assertionsDisabled:Z

    #@5
    if-nez v0, :cond_1

    #@7
    sub-long v0, p3, p1

    #@9
    int-to-long v2, p5

    #@a
    add-long/2addr v0, v2

    #@b
    const-wide/16 v2, 0x0

    #@d
    cmp-long v0, v0, v2

    #@f
    if-lez v0, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    if-nez v0, :cond_1

    #@14
    new-instance v0, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@19
    throw v0

    #@1a
    :cond_0
    const/4 v0, 0x0

    #@1b
    goto :goto_0

    #@1c
    .line 202
    :cond_1
    iput-wide p1, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@1e
    .line 203
    iput-wide p3, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    #@20
    .line 204
    iput p5, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    #@22
    .line 200
    return-void
.end method

.method constructor <init>(JJZ)V
    .locals 7
    .param p1, "from"    # J
    .param p3, "upTo"    # J
    .param p5, "closed"    # Z

    #@0
    .prologue
    .line 197
    if-eqz p5, :cond_0

    #@2
    const/4 v6, 0x1

    #@3
    :goto_0
    move-object v1, p0

    #@4
    move-wide v2, p1

    #@5
    move-wide v4, p3

    #@6
    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    #@9
    .line 196
    return-void

    #@a
    .line 197
    :cond_0
    const/4 v6, 0x0

    #@b
    goto :goto_0
.end method

.method private splitPoint(J)J
    .locals 5
    .param p1, "size"    # J

    #@0
    .prologue
    .line 295
    const-wide/32 v2, 0x1000000

    #@3
    cmp-long v2, p1, v2

    #@5
    if-gez v2, :cond_0

    #@7
    const-wide/16 v0, 0x2

    #@9
    .line 297
    .local v0, "d":J
    :goto_0
    div-long v2, p1, v0

    #@b
    return-wide v2

    #@c
    .line 295
    .end local v0    # "d":J
    :cond_0
    const-wide/16 v0, 0x8

    #@e
    goto :goto_0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    #@0
    .prologue
    .line 250
    const/16 v0, 0x4555

    #@2
    return v0
.end method

.method public estimateSize()J
    .locals 4

    #@0
    .prologue
    .line 245
    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    #@2
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@4
    sub-long/2addr v0, v2

    #@5
    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    #@7
    int-to-long v2, v2

    #@8
    add-long/2addr v0, v2

    #@9
    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 226
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->forEachRemaining(Ljava/util/function/LongConsumer;)V

    #@5
    return-void
.end method

.method public forEachRemaining(Ljava/util/function/LongConsumer;)V
    .locals 10
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 227
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@4
    .line 229
    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@6
    .line 230
    .local v4, "i":J
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    #@8
    .line 231
    .local v2, "hUpTo":J
    iget v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    #@a
    .line 232
    .local v0, "hLast":I
    iget-wide v8, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    #@c
    iput-wide v8, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@e
    .line 233
    iput v1, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    #@10
    move-wide v6, v4

    #@11
    .line 234
    .end local v4    # "i":J
    .local v6, "i":J
    :goto_0
    cmp-long v1, v6, v2

    #@13
    if-gez v1, :cond_0

    #@15
    .line 235
    const-wide/16 v8, 0x1

    #@17
    add-long v4, v6, v8

    #@19
    .end local v6    # "i":J
    .restart local v4    # "i":J
    invoke-interface {p1, v6, v7}, Ljava/util/function/LongConsumer;->accept(J)V

    #@1c
    move-wide v6, v4

    #@1d
    .end local v4    # "i":J
    .restart local v6    # "i":J
    goto :goto_0

    #@1e
    .line 237
    :cond_0
    if-lez v0, :cond_1

    #@20
    .line 239
    invoke-interface {p1, v6, v7}, Ljava/util/function/LongConsumer;->accept(J)V

    #@23
    .line 226
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
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 257
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "consumer"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 208
    check-cast p1, Ljava/util/function/LongConsumer;

    #@2
    .end local p1    # "consumer":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/stream/Streams$RangeLongSpliterator;->tryAdvance(Ljava/util/function/LongConsumer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public tryAdvance(Ljava/util/function/LongConsumer;)Z
    .locals 7
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 209
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    .line 211
    iget-wide v0, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@7
    .line 212
    .local v0, "i":J
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->upTo:J

    #@9
    cmp-long v2, v0, v2

    #@b
    if-gez v2, :cond_0

    #@d
    .line 213
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@f
    const-wide/16 v4, 0x1

    #@11
    add-long/2addr v2, v4

    #@12
    iput-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@14
    .line 214
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    #@17
    .line 215
    return v6

    #@18
    .line 217
    :cond_0
    iget v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    #@1a
    if-lez v2, :cond_1

    #@1c
    .line 218
    iput v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->last:I

    #@1e
    .line 219
    invoke-interface {p1, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    #@21
    .line 220
    return v6

    #@22
    .line 222
    :cond_1
    return v4
.end method

.method public trySplit()Ljava/util/Spliterator$OfLong;
    .locals 10

    #@0
    .prologue
    .line 262
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->estimateSize()J

    #@3
    move-result-wide v8

    #@4
    .line 263
    .local v8, "size":J
    const-wide/16 v0, 0x1

    #@6
    cmp-long v0, v8, v0

    #@8
    if-gtz v0, :cond_0

    #@a
    .line 264
    const/4 v1, 0x0

    #@b
    .line 263
    :goto_0
    return-object v1

    #@c
    .line 266
    :cond_0
    new-instance v1, Ljava/util/stream/Streams$RangeLongSpliterator;

    #@e
    iget-wide v2, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@10
    iget-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@12
    invoke-direct {p0, v8, v9}, Ljava/util/stream/Streams$RangeLongSpliterator;->splitPoint(J)J

    #@15
    move-result-wide v6

    #@16
    add-long/2addr v4, v6

    #@17
    iput-wide v4, p0, Ljava/util/stream/Streams$RangeLongSpliterator;->from:J

    #@19
    const/4 v6, 0x0

    #@1a
    invoke-direct/range {v1 .. v6}, Ljava/util/stream/Streams$RangeLongSpliterator;-><init>(JJI)V

    #@1d
    goto :goto_0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator$OfPrimitive;
    .locals 1

    #@0
    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava/util/Spliterator;
    .locals 1

    #@0
    .prologue
    .line 261
    invoke-virtual {p0}, Ljava/util/stream/Streams$RangeLongSpliterator;->trySplit()Ljava/util/Spliterator$OfLong;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
