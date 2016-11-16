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

.method private constructor <init>(Landroid/media/ImageReader$SurfaceImage;IILjava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "this$1"    # Landroid/media/ImageReader$SurfaceImage;
    .param p2, "rowStride"    # I
    .param p3, "pixelStride"    # I
    .param p4, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 818
    iput-object p1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-direct {p0}, Landroid/media/Image$Plane;-><init>()V

    #@5
    .line 819
    iput p2, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    #@7
    .line 820
    iput p3, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    #@9
    .line 821
    iput-object p4, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@b
    .line 827
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@d
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@14
    .line 818
    return-void
.end method

.method private clearBuffer()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 859
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 860
    return-void

    #@6
    .line 863
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@8
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 864
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@10
    invoke-static {v0}, Ljava/nio/NioUtils;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    #@13
    .line 866
    :cond_1
    iput-object v1, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@15
    .line 856
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    #@0
    .prologue
    .line 832
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 833
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mBuffer:Ljava/nio/ByteBuffer;

    #@7
    return-object v0
.end method

.method public getPixelStride()I
    .locals 2

    #@0
    .prologue
    .line 838
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 839
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@7
    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@9
    invoke-static {v0}, Landroid/media/ImageReader;->-get1(Landroid/media/ImageReader;)I

    #@c
    move-result v0

    #@d
    const/16 v1, 0x24

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 840
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@13
    .line 841
    const-string/jumbo v1, "getPixelStride is not supported for RAW_PRIVATE plane"

    #@16
    .line 840
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 843
    :cond_0
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mPixelStride:I

    #@1c
    return v0
.end method

.method public getRowStride()I
    .locals 2

    #@0
    .prologue
    .line 848
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@2
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    #@5
    .line 849
    iget-object v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->this$1:Landroid/media/ImageReader$SurfaceImage;

    #@7
    iget-object v0, v0, Landroid/media/ImageReader$SurfaceImage;->this$0:Landroid/media/ImageReader;

    #@9
    invoke-static {v0}, Landroid/media/ImageReader;->-get1(Landroid/media/ImageReader;)I

    #@c
    move-result v0

    #@d
    const/16 v1, 0x24

    #@f
    if-ne v0, v1, :cond_0

    #@11
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@13
    .line 851
    const-string/jumbo v1, "getRowStride is not supported for RAW_PRIVATE plane"

    #@16
    .line 850
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0

    #@1a
    .line 853
    :cond_0
    iget v0, p0, Landroid/media/ImageReader$SurfaceImage$SurfacePlane;->mRowStride:I

    #@1c
    return v0
.end method
