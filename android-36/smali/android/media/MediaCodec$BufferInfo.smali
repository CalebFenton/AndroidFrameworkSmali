.class public final Landroid/media/MediaCodec$BufferInfo;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferInfo"
.end annotation


# instance fields
.field public whitelist flags:I

.field public whitelist offset:I

.field public whitelist presentationTimeUs:J

.field public whitelist size:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o dup()Landroid/media/MediaCodec$BufferInfo;
    .registers 8

    .line 1724
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    move-object v1, v0

    .line 1725
    .local v1, "copy":Landroid/media/MediaCodec$BufferInfo;
    iget v2, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 1726
    return-object v1
.end method

.method public whitelist set(IIJI)V
    .registers 6
    .param p1, "newOffset"    # I
    .param p2, "newSize"    # I
    .param p3, "newTimeUs"    # J
    .param p5, "newFlags"    # I

    .line 1679
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    .line 1680
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 1681
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 1682
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 1683
    return-void
.end method
