.class final Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "Ljava/util/function/LongConsumer;",
        ">;",
        "Ljava/util/function/LongConsumer;"
    }
.end annotation


# instance fields
.field final blacklist array:[J


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1520
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1521
    new-array v0, p1, [J

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    .line 1522
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(J)V
    .registers 6
    .param p1, "t"    # J

    .line 1526
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->index:I

    aput-wide p1, v0, v1

    .line 1527
    return-void
.end method

.method public bridge synthetic blacklist forEach(Ljava/lang/Object;J)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1516
    check-cast p1, Ljava/util/function/LongConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->forEach(Ljava/util/function/LongConsumer;J)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/LongConsumer;J)V
    .registers 7
    .param p1, "action"    # Ljava/util/function/LongConsumer;
    .param p2, "fence"    # J

    .line 1531
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_10

    .line 1532
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfLong;->array:[J

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 1531
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1534
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
