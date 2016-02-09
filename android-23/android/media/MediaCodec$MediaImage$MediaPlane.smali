.class Landroid/media/MediaCodec$MediaImage$MediaPlane;
.super Landroid/media/Image$Plane;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec$MediaImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaPlane"
.end annotation


# instance fields
.field private final mColInc:I

.field private final mData:Ljava/nio/ByteBuffer;

.field private final mRowInc:I

.field final synthetic this$1:Landroid/media/MediaCodec$MediaImage;


# direct methods
.method public constructor <init>(Landroid/media/MediaCodec$MediaImage;Ljava/nio/ByteBuffer;II)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/MediaCodec$MediaImage;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .param p3, "rowInc"    # I
    .param p4, "colInc"    # I

    #@0
    .prologue
    .line 3358
    iput-object p1, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$1:Landroid/media/MediaCodec$MediaImage;

    #@2
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    #@5
    .line 3359
    iput-object p2, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    #@7
    .line 3360
    iput p3, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    #@9
    .line 3361
    iput p4, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    #@b
    .line 3358
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    .prologue
    .line 3379
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$1:Landroid/media/MediaCodec$MediaImage;

    #@2
    invoke-virtual {v0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 3380
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mData:Ljava/nio/ByteBuffer;

    #@7
    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    #@0
    .prologue
    .line 3372
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$1:Landroid/media/MediaCodec$MediaImage;

    #@2
    invoke-virtual {v0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 3373
    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mColInc:I

    #@7
    return v0
.end method

.method public getRowStride()I
    .locals 1

    #@0
    .prologue
    .line 3366
    iget-object v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->this$1:Landroid/media/MediaCodec$MediaImage;

    #@2
    invoke-virtual {v0}, Landroid/media/MediaCodec$MediaImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 3367
    iget v0, p0, Landroid/media/MediaCodec$MediaImage$MediaPlane;->mRowInc:I

    #@7
    return v0
.end method
