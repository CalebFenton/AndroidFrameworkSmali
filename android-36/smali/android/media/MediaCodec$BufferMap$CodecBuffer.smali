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
.field private greylist-max-o mByteBuffer:Ljava/nio/ByteBuffer;

.field private greylist-max-o mImage:Landroid/media/Image;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 4475
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaCodec-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o free()V
    .registers 3

    .line 4480
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 4482
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 4483
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 4485
    :cond_c
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    if-eqz v0, :cond_17

    .line 4486
    iget-object v0, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 4487
    iput-object v1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    .line 4489
    :cond_17
    return-void
.end method

.method public greylist-max-o setByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 4497
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    .line 4498
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 4499
    return-void
.end method

.method public greylist-max-o setImage(Landroid/media/Image;)V
    .registers 2
    .param p1, "image"    # Landroid/media/Image;

    .line 4492
    invoke-virtual {p0}, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->free()V

    .line 4493
    iput-object p1, p0, Landroid/media/MediaCodec$BufferMap$CodecBuffer;->mImage:Landroid/media/Image;

    .line 4494
    return-void
.end method
