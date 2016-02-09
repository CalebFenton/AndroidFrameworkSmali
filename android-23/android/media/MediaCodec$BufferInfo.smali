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
.field public flags:I

.field public offset:I

.field public presentationTimeUs:J

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public dup()Landroid/media/MediaCodec$BufferInfo;
    .locals 7

    #@0
    .prologue
    .line 1429
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    #@2
    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    #@5
    .line 1430
    .local v1, "copy":Landroid/media/MediaCodec$BufferInfo;
    iget v2, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    #@7
    iget v3, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    #@9
    iget-wide v4, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    #@b
    iget v6, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    #@d
    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    #@10
    .line 1431
    return-object v1
.end method

.method public set(IIJI)V
    .locals 1
    .param p1, "newOffset"    # I
    .param p2, "newSize"    # I
    .param p3, "newTimeUs"    # J
    .param p5, "newFlags"    # I

    #@0
    .prologue
    .line 1384
    iput p1, p0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    #@2
    .line 1385
    iput p2, p0, Landroid/media/MediaCodec$BufferInfo;->size:I

    #@4
    .line 1386
    iput-wide p3, p0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    #@6
    .line 1387
    iput p5, p0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    #@8
    .line 1383
    return-void
.end method
