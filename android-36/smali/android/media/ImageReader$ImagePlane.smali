.class public Landroid/media/ImageReader$ImagePlane;
.super Landroid/media/Image$Plane;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImagePlane"
.end annotation


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private final blacklist mPixelStride:I

.field private final blacklist mRowStride:I


# direct methods
.method private constructor blacklist <init>(IILjava/nio/ByteBuffer;)V
    .registers 6
    .param p1, "rowStride"    # I
    .param p2, "pixelStride"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1465
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 1466
    iput p1, p0, Landroid/media/ImageReader$ImagePlane;->mRowStride:I

    .line 1467
    iput p2, p0, Landroid/media/ImageReader$ImagePlane;->mPixelStride:I

    .line 1468
    iput-object p3, p0, Landroid/media/ImageReader$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1474
    iget-object v0, p0, Landroid/media/ImageReader$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1475
    return-void
.end method


# virtual methods
.method public whitelist getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1479
    iget-object v0, p0, Landroid/media/ImageReader$ImagePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getPixelStride()I
    .registers 2

    .line 1484
    iget v0, p0, Landroid/media/ImageReader$ImagePlane;->mPixelStride:I

    return v0
.end method

.method public whitelist getRowStride()I
    .registers 2

    .line 1489
    iget v0, p0, Landroid/media/ImageReader$ImagePlane;->mRowStride:I

    return v0
.end method
