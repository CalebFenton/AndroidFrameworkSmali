.class Landroid/media/ImageReader$SurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "ImageReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageReader$SurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfacePlane"
.end annotation


# instance fields
.field private greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mPixelStride:I

.field private final greylist-max-o mRowStride:I

.field final synthetic blacklist this$1:Landroid/media/ImageReader$SurfaceImage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearBuffer(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/ImageReader$SurfaceImage;IILjava/nio/ByteBuffer;)V
    .registers 6
    .param p2, "rowStride"    # I
    .param p3, "pixelStride"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 1358
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 1359
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    .line 1360
    iput p3, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    .line 1361
    iput-object p4, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1367
    iget-object p1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1368
    return-void
.end method

.method private greylist-max-o clearBuffer()V
    .registers 2

    .line 1399
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 1400
    return-void

    .line 1403
    :cond_5
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1404
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 1406
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1407
    return-void
.end method


# virtual methods
.method public whitelist getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1372
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1373
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getPixelStride()I
    .registers 3

    .line 1378
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1379
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmFormat(Landroid/media/ImageReader;)I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_14

    .line 1383
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    return v0

    .line 1380
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getPixelStride is not supported for RAW_PRIVATE plane"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getRowStride()I
    .registers 3

    .line 1388
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1389
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    invoke-static {v0}, Landroid/media/ImageReader;->-$$Nest$fgetmFormat(Landroid/media/ImageReader;)I

    move-result v0

    const/16 v1, 0x24

    if-eq v0, v1, :cond_14

    .line 1393
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    return v0

    .line 1390
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getRowStride is not supported for RAW_PRIVATE plane"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
