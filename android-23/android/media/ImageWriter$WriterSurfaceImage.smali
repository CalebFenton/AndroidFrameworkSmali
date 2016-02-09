.class Landroid/media/ImageWriter$WriterSurfaceImage;
.super Landroid/media/Image;
.source "ImageWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ImageWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WriterSurfaceImage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
    }
.end annotation


# instance fields
.field private final DEFAULT_TIMESTAMP:J

.field private mFormat:I

.field private mHeight:I

.field private mNativeBuffer:J

.field private mNativeFenceFd:I

.field private mOwner:Landroid/media/ImageWriter;

.field private mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

.field private mTimestamp:J

.field private mWidth:I


# direct methods
.method static synthetic -wrap0(Landroid/media/ImageWriter$WriterSurfaceImage;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->clearSurfacePlanes()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/media/ImageWriter;)V
    .locals 4
    .param p1, "writer"    # Landroid/media/ImageWriter;

    #@0
    .prologue
    const-wide/high16 v2, -0x8000000000000000L

    #@2
    const/4 v0, -0x1

    #@3
    .line 615
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    #@6
    .line 605
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeFenceFd:I

    #@8
    .line 607
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    #@a
    .line 608
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    #@c
    .line 609
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    #@e
    .line 612
    iput-wide v2, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->DEFAULT_TIMESTAMP:J

    #@10
    .line 613
    iput-wide v2, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    #@12
    .line 616
    iput-object p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    #@14
    .line 615
    return-void
.end method

.method private clearSurfacePlanes()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 716
    iget-boolean v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    #@3
    if-eqz v1, :cond_1

    #@5
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 717
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@c
    array-length v1, v1

    #@d
    if-ge v0, v1, :cond_1

    #@f
    .line 718
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@11
    aget-object v1, v1, v0

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 719
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@17
    aget-object v1, v1, v0

    #@19
    invoke-static {v1}, Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;->-wrap0(Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;)V

    #@1c
    .line 720
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@1e
    aput-object v2, v1, v0

    #@20
    .line 717
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 715
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private synchronized native declared-synchronized nativeCreatePlanes(II)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;
.end method

.method private synchronized native declared-synchronized nativeGetFormat()I
.end method

.method private synchronized native declared-synchronized nativeGetHeight()I
.end method

.method private synchronized native declared-synchronized nativeGetWidth()I
.end method


# virtual methods
.method public close()V
    .locals 1

    #@0
    .prologue
    .line 701
    iget-boolean v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 702
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0, p0}, Landroid/media/ImageWriter;->-wrap0(Landroid/media/ImageWriter;Landroid/media/Image;)V

    #@b
    .line 700
    :cond_0
    return-void
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 709
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 711
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    #@6
    .line 707
    return-void

    #@7
    .line 710
    :catchall_0
    move-exception v0

    #@8
    .line 711
    invoke-super {p0}, Landroid/media/Image;->finalize()V

    #@b
    .line 710
    throw v0
.end method

.method public getFormat()I
    .locals 2

    #@0
    .prologue
    .line 621
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 623
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    #@5
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 624
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetFormat()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    #@e
    .line 626
    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mFormat:I

    #@10
    return v0
.end method

.method public getHeight()I
    .locals 2

    #@0
    .prologue
    .line 642
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 644
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    #@5
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 645
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetHeight()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    #@e
    .line 648
    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mHeight:I

    #@10
    return v0
.end method

.method getNativeContext()J
    .locals 2

    #@0
    .prologue
    .line 694
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 696
    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mNativeBuffer:J

    #@5
    return-wide v0
.end method

.method getOwner()Landroid/media/ImageWriter;
    .locals 1

    #@0
    .prologue
    .line 687
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 689
    iget-object v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mOwner:Landroid/media/ImageWriter;

    #@5
    return-object v0
.end method

.method bridge synthetic getOwner()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 686
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .locals 2

    #@0
    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 669
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@5
    if-nez v1, :cond_0

    #@7
    .line 670
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getFormat()I

    #@a
    move-result v1

    #@b
    invoke-static {v1}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    #@e
    move-result v0

    #@f
    .line 671
    .local v0, "numPlanes":I
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1}, Landroid/media/ImageWriter;->getFormat()I

    #@16
    move-result v1

    #@17
    invoke-direct {p0, v0, v1}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeCreatePlanes(II)[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@1d
    .line 674
    .end local v0    # "numPlanes":I
    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mPlanes:[Landroid/media/ImageWriter$WriterSurfaceImage$SurfacePlane;

    #@1f
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, [Landroid/media/Image$Plane;

    #@25
    return-object v1
.end method

.method public getTimestamp()J
    .locals 2

    #@0
    .prologue
    .line 653
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 655
    iget-wide v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    #@5
    return-wide v0
.end method

.method public getWidth()I
    .locals 2

    #@0
    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 633
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    #@5
    const/4 v1, -0x1

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 634
    invoke-direct {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->nativeGetWidth()I

    #@b
    move-result v0

    #@c
    iput v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    #@e
    .line 637
    :cond_0
    iget v0, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mWidth:I

    #@10
    return v0
.end method

.method isAttachable()Z
    .locals 1

    #@0
    .prologue
    .line 679
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 682
    const/4 v0, 0x0

    #@4
    return v0
.end method

.method public setTimestamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    #@0
    .prologue
    .line 660
    invoke-virtual {p0}, Landroid/media/ImageWriter$WriterSurfaceImage;->throwISEIfImageIsInvalid()V

    #@3
    .line 662
    iput-wide p1, p0, Landroid/media/ImageWriter$WriterSurfaceImage;->mTimestamp:J

    #@5
    .line 659
    return-void
.end method
