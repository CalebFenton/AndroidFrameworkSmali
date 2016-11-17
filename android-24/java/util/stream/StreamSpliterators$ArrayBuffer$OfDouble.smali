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
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive",
        "<",
        "Ljava/util/function/DoubleConsumer;",
        ">;",
        "Ljava/util/function/DoubleConsumer;"
    }
.end annotation


# instance fields
.field final array:[D


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1530
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;-><init>()V

    #@3
    .line 1531
    new-array v0, p1, [D

    #@5
    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    #@7
    .line 1530
    return-void
.end method


# virtual methods
.method public accept(D)V
    .locals 3
    .param p1, "t"    # D

    #@0
    .prologue
    .line 1536
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    #@2
    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfPrimitive;->index:I

    #@8
    aput-wide p1, v0, v1

    #@a
    .line 1535
    return-void
.end method

.method bridge synthetic forEach(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "action"    # Ljava/lang/Object;
    .param p2, "fence"    # J

    #@0
    .prologue
    .line 1540
    check-cast p1, Ljava/util/function/DoubleConsumer;

    #@2
    .end local p1    # "action":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->forEach(Ljava/util/function/DoubleConsumer;J)V

    #@5
    return-void
.end method

.method forEach(Ljava/util/function/DoubleConsumer;J)V
    .locals 4
    .param p1, "action"    # Ljava/util/function/DoubleConsumer;
    .param p2, "fence"    # J

    #@0
    .prologue
    .line 1541
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    int-to-long v2, v0

    #@2
    cmp-long v1, v2, p2

    #@4
    if-gez v1, :cond_0

    #@6
    .line 1542
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfDouble;->array:[D

    #@8
    aget-wide v2, v1, v0

    #@a
    invoke-interface {p1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    #@d
    .line 1541
    add-int/lit8 v0, v0, 0x1

    #@f
    goto :goto_0

    #@10
    .line 1540
    :cond_0
    return-void
.end method
