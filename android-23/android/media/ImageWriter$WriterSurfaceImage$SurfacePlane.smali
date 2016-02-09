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
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$1:Landroid/media/ImageWriter$WriterSurfaceImage;


# direct methods
.method static synthetic -wrap0(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->clearBuffer()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/media/ImageWriter$WriterSurfaceImage;IILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$1"    # Landroid/media/ImageWriter$WriterSurfaceImage;
    .param p2, "rowStride"    # I
    .param p3, "pixelStride"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 733
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageWriter$WriterSurfaceImage;

    #@2
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    #@5
    .line 734
    iput p2, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    #@7
    .line 735
    iput p3, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    #@9
    .line 736
    iput-object p4, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@b
    .line 742
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@d
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@14
    .line 733
    return-void
.end method

.method private clearBuffer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 766
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 767
    return-void

    #@6
    .line 770
    :cond_0
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 771
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@10
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@13
    .line 773
    :cond_1
    iput-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@15
    .line 763
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    .prologue
    .line 759
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageWriter$WriterSurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 760
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@7
    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    #@0
    .prologue
    .line 753
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageWriter$WriterSurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 754
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mPixelStride:I

    #@7
    return v0
.end method

.method public getRowStride()I
    .locals 1

    #@0
    .prologue
    .line 747
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageWriter$WriterSurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 748
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->mRowStride:I

    #@7
    return v0
.end method
