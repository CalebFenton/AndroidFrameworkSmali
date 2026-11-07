.class final Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/DoubleConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field final blacklist array:[D


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1541
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1542
    new-array v0, p1, [D

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    .line 1543
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(D)V
    .registers 6
    .param p1, "t"    # D

    .line 1547
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->index:I

    aput-wide p1, v0, v1

    .line 1548
    return-void
.end method

.method bridge synthetic blacklist forEach(Ljava/lang/Object;J)V
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

    .line 1537
    check-cast p1, Ljava/util/function/DoubleConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->forEach(Ljava/util/function/DoubleConsumer;J)V

    return-void
.end method

.method blacklist forEach(Ljava/util/function/DoubleConsumer;J)V
    .registers 7
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;
    .param p2, "fence"    # J

    .line 1552
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_10

    .line 1553
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    aget-wide v1, v1, v0

    invoke-interface {p1, v1, v2}, Ljava/util/function/DoubleConsumer;->accept(D)V

    .line 1552
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1555
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
