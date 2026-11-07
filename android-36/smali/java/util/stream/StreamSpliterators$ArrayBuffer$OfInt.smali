.class final Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive<",
        "Ljava/util/function/IntConsumer;",
        ">;",
        "Ljava/util/function/IntConsumer;"
    }
.end annotation


# instance fields
.field final blacklist array:[I


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1499
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    .line 1500
    new-array v0, p1, [I

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    .line 1501
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(I)V
    .registers 5
    .param p1, "t"    # I

    .line 1505
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->index:I

    aput p1, v0, v1

    .line 1506
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

    .line 1495
    check-cast p1, Ljava/util/function/IntConsumer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->forEach(Ljava/util/function/IntConsumer;J)V

    return-void
.end method

.method public blacklist forEach(Ljava/util/function/IntConsumer;J)V
    .registers 7
    .param p1, "action"    # Ljava/util/function/IntConsumer;
    .param p2, "fence"    # J

    .line 1510
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_10

    .line 1511
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfInt;->array:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 1510
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1513
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
