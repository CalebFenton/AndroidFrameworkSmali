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
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mIndex:I

.field private final mPixelStride:I

.field private final mRowStride:I

.field final synthetic this$1:Landroid/media/ImageReader$SurfaceImage;


# direct methods
.method static synthetic -wrap0(Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->clearBuffer()V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/media/ImageReader$SurfaceImage;III)V
    .locals 0
    .param p1, "this$1"    # Landroid/media/ImageReader$SurfaceImage;
    .param p2, "index"    # I
    .param p3, "rowStride"    # I
    .param p4, "pixelStride"    # I

    #@0
    .prologue
    .line 779
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    #@5
    .line 780
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mIndex:I

    #@7
    .line 781
    iput p3, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    #@9
    .line 782
    iput p4, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    #@b
    .line 779
    return-void
.end method

.method private clearBuffer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 814
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 815
    return-void

    #@6
    .line 818
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 819
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@10
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@13
    .line 821
    :cond_1
    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@15
    .line 811
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 3

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 788
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 789
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@b
    return-object v0

    #@c
    .line 791
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@e
    iget v1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mIndex:I

    #@10
    .line 792
    iget-object v2, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@12
    iget-object v2, v2, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@14
    invoke-static {v2}, Landroid/media/ImageReader;->-get0(Landroid/media/ImageReader;)I

    #@17
    move-result v2

    #@18
    .line 791
    invoke-static {v0, v1, v2}, Landroid/media/ImageReader$SurfaceImage;->-wrap0(Landroid/media/ImageReader$SurfaceImage;II)Ljava/nio/ByteBuffer;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@1e
    .line 795
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@20
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@27
    move-result-object v0

    #@28
    return-object v0
.end method

.method public getPixelStride()I
    .locals 1

    #@0
    .prologue
    .line 801
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 802
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    #@7
    return v0
.end method

.method public getRowStride()I
    .locals 1

    #@0
    .prologue
    .line 807
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 808
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    #@7
    return v0
.end method
