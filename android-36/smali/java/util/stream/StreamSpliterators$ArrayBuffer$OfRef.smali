.class final Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;
.super Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.source "StreamSpliterators.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/stream/StreamSpliterators$ArrayBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfRef"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/stream/StreamSpliterators$ArrayBuffer;",
        "Ljava/util/function/Consumer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final blacklist array:[Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1466
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    invoke-direct {p0}, Ljava/util/stream/StreamSpliterators$ArrayBuffer;-><init>()V

    .line 1467
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    .line 1468
    return-void
.end method


# virtual methods
.method public whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1472
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->index:I

    aput-object p1, v0, v1

    .line 1473
    return-void
.end method

.method public blacklist forEach(Ljava/util/function/Consumer;J)V
    .registers 7
    .param p2, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TT;>;J)V"
        }
    .end annotation

    .line 1476
    .local p0, "this":Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;, "Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    int-to-long v1, v0

    cmp-long v1, v1, p2

    if-gez v1, :cond_10

    .line 1478
    iget-object v1, p0, Ljava/util/stream/StreamSpliterators$ArrayBuffer$OfRef;->array:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 1479
    .local v1, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1476
    .end local v1    # "t":Ljava/lang/Object;, "TT;"
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1481
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
