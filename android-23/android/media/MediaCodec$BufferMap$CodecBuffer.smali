.class Landroid/media/MediaCodec$BufferMap$CodecBuffer;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$BufferMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodecBuffer"
.end annotation


# instance fields
.field private mByteBuffer:Ljava/nio/ByteBuffer;

.field private mImage:Landroid/media/Image;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 2556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec$BufferMap$CodecBuffer;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public free()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2561
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2563
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@7
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@a
    .line 2564
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@c
    .line 2566
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 2567
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    #@12
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    #@15
    .line 2568
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    #@17
    .line 2560
    :cond_1
    return-void
.end method

.method public setByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 2578
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    #@3
    .line 2579
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    #@5
    .line 2577
    return-void
.end method

.method public setImage(Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    .line 2573
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    #@3
    .line 2574
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    #@5
    .line 2572
    return-void
.end method
