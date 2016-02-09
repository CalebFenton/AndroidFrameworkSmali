.class Landroid/media/MediaCodec$BufferMap;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BufferMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    }
.end annotation


# instance fields
.field private final mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaCodec$BufferMap$CodecBuffer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 2554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2584
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 2583
    iput-object v0, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@a
    .line 2554
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$BufferMap;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/media/MediaCodec$BufferMap;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    #@0
    .prologue
    .line 2613
    iget-object v2, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "buffer$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    #@16
    .line 2614
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    #@19
    goto :goto_0

    #@1a
    .line 2616
    .end local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    :cond_0
    iget-object v2, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@1c
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    #@1f
    .line 2612
    return-void
.end method

.method public put(ILandroid/media/Image;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "newImage"    # Landroid/media/Image;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2604
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    #@d
    .line 2605
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    if-nez v0, :cond_0

    #@f
    .line 2606
    new-instance v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    #@11
    .end local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    invoke-direct {v0, v3}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>(Landroid/media/MediaCodec$BufferMap$CodecBuffer;)V

    #@14
    .line 2607
    .restart local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 2609
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->setImage(Landroid/media/Image;)V

    #@20
    .line 2603
    return-void
.end method

.method public put(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "newBuffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2595
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    #@d
    .line 2596
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    if-nez v0, :cond_0

    #@f
    .line 2597
    new-instance v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    #@11
    .end local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    invoke-direct {v0, v3}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>(Landroid/media/MediaCodec$BufferMap$CodecBuffer;)V

    #@14
    .line 2598
    .restart local v0    # "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    .line 2600
    :cond_0
    invoke-virtual {v0, p2}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    #@20
    .line 2594
    return-void
.end method

.method public remove(I)V
    .locals 3
    .param p1, "index"    # I

    #@0
    .prologue
    .line 2587
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;

    #@c
    .line 2588
    .local v0, "buffer":Landroid/media/MediaCodec$BufferMap$CodecBuffer;
    if-eqz v0, :cond_0

    #@e
    .line 2589
    invoke-virtual {v0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    #@11
    .line 2590
    iget-object v1, p0, Landroid/media/MediaCodec$BufferMap;->mMap:Ljava/util/Map;

    #@13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v2

    #@17
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    .line 2586
    :cond_0
    return-void
.end method
