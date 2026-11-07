.class Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.super Landroid/media/Image$Plane;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter$WriterSurfaceImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfacePlane"
.end annotation


# instance fields
.field private greylist-max-o mBuffer:Ljava/nio/ByteBuffer;

.field private final greylist-max-o mPixelStride:I

.field private final greylist-max-o mRowStride:I

.field final synthetic blacklist this$0:Landroid/media/ImageWriter$WriterSurfaceImage;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearBuffer(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V
    .registers 1

    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clearBuffer()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/ImageWriter$WriterSurfaceImage;IILjava/nio/ByteBuffer;)V
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

    .line 1237
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    .line 1238
    iput p2, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    .line 1239
    iput p3, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    .line 1240
    iput-object p4, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1246
    iget-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1247
    return-void
.end method

.method private greylist-max-o clearBuffer()V
    .registers 2

    .line 1270
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 1271
    return-void

    .line 1274
    :cond_5
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1275
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 1277
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    .line 1278
    return-void
.end method


# virtual methods
.method public whitelist getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 1263
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1264
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getPixelStride()I
    .registers 2

    .line 1257
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1258
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    return v0
.end method

.method public whitelist getRowStride()I
    .registers 2

    .line 1251
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$0:Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    .line 1252
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    return v0
.end method
